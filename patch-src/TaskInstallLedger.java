package cn.jim.wallethelper;
import android.content.*;
import android.content.pm.*;
import android.net.Uri;
import java.util.*;
import java.text.Normalizer;

/** Records requested new installs and deletes only after final task completion. */
public final class TaskInstallLedger {
  private final Context context;
  private final PackageManager pm;
  private final android.content.SharedPreferences prefs;
  private final long runStart=System.currentTimeMillis();
  private final Set<String> baseline=new HashSet<String>();
  private final Map<String,Long> baselineTimes=new HashMap<String,Long>();
  private final Map<String,Long> seen=new HashMap<String,Long>();
  private final Map<String,Long> requests=new LinkedHashMap<String,Long>();
  private final Map<String,String> packages=new LinkedHashMap<String,String>();
  private final Map<String,Long> identities=new HashMap<String,Long>();
  private final Map<String,String> owners=new HashMap<String,String>();
  private final Set<String> completed=new HashSet<String>();
  private final Set<String> attempted=new HashSet<String>();
  private final List<String> queue=new ArrayList<String>();
  private final Set<String> pendingTwoDay=new HashSet<String>();
  private final Map<String,Set<String>> bonds=new HashMap<String,Set<String>>();
  private boolean baselineReady;
  private String active,installer;
  private long openedAt,lastScan;
  private boolean clicked;
  private int removed,skipped;
  private String messages="";
  public TaskInstallLedger(Context c) {
    context=c; pm=c.getPackageManager(); prefs=c.getSharedPreferences("section2_download_records",0);
    try { for(PackageInfo p:pm.getInstalledPackages(0)) { baseline.add(p.packageName); baselineTimes.put(p.packageName,p.firstInstallTime); } baselineReady=true; }
    catch(RuntimeException e) { log("安装基线读取失败，本轮不自动卸载"); }
    for(Map.Entry<String,?> e:prefs.getAll().entrySet()) {
      if(!(e.getValue() instanceof String)) continue;
      String[] v=((String)e.getValue()).split("\n",-1);
      if(e.getKey().startsWith("request:") && v.length==2 && v[0].equals("rq1")) {
        try { long t=Long.parseLong(v[1]); if(t>0 && runStart-t<7L*24*60*60*1000) requests.put(e.getKey().substring(8),t); }
        catch(NumberFormatException ignored) { }
        continue;
      }
      if(e.getKey().startsWith("seen:") && v.length==2 && v[0].equals("seen1")) {
        try { seen.put(e.getKey().substring(5),Long.parseLong(v[1])); }
        catch(NumberFormatException ignored) { }
        continue;
      }
      if(e.getKey().startsWith("hold:") && "1".equals(e.getValue())) {
        pendingTwoDay.add(e.getKey().substring(5));continue;
      }
      if(e.getKey().startsWith("bond:") && v.length>=2) {
        String pkg=e.getKey().substring(5);
        try {if(pm.getPackageInfo(pkg,0).firstInstallTime==Long.parseLong(v[0]))
          bonds.put(pkg,new HashSet<String>(Arrays.asList(v).subList(1,v.length)));}catch(Exception ignored){}
        continue;
      }
      if(v.length!=5 || !v[0].equals("v2")) continue;
      try {
        PackageInfo pi=pm.getPackageInfo(e.getKey(),0);long identity=Long.parseLong(v[1]);
        if(pi.firstInstallTime!=identity || protectedPackage(e.getKey(),pi.applicationInfo.flags)) continue;
        packages.put(e.getKey(),pm.getApplicationLabel(pi.applicationInfo).toString());
        identities.put(e.getKey(),identity);owners.put(e.getKey(),v[2]);
        if(v[3].equals("done")) completed.add(e.getKey());
        log("恢复任务安装记录："+packages.get(e.getKey()));
      } catch(Exception ignored) { }
    }
  }
  public static String clean(String s) { return s==null?"":Normalizer.normalize(s,Normalizer.Form.NFKC).replaceAll("\\s+","").toLowerCase(Locale.ROOT); }
  public static boolean protectedPackage(String p,int flags) {
    return p==null || p.equals("cn.jim.wallethelper") || p.equals("com.hihonor.wallet")
      || p.equals("android") || p.contains("packageinstaller") || p.contains("permissioncontroller")
      || p.contains("launcher") || p.contains("systemui") || (flags & 129)!=0;
  }
  public static boolean eligible(boolean baselineReady,boolean existed,int flags,String pkg,long installed,long requested,String task,String label,int matches) {
    return baselineReady && !existed && !protectedPackage(pkg,flags) && installed>=requested
      && requested>0 && matches==1 && !clean(task).isEmpty() && clean(task).equals(clean(label));
  }
  private boolean originalInstall(String pkg,long installed) {
    Long before=baselineTimes.get(pkg);
    return baseline.contains(pkg) && (before==null || before.longValue()==installed);
  }
  private boolean protectedAtRequest(String pkg,long installed,long requested) {
    return originalInstall(pkg,installed) && !(requested<runStart && installed>=requested);
  }
  public void requested(int section,String name) {
    if((section!=2 && section!=0) || name==null || clean(name).isEmpty()) return;
    String key=section+":"+name;
    if(section==0) setHold(name,true);
    if(!requests.containsKey(key)) {
      long at=System.currentTimeMillis();requests.put(key,at);
      prefs.edit().putString("request:"+key,"rq1\n"+at).apply();
      log("记录任务下载："+key);
    }
  }
  public void scan() {
    if(!baselineReady) return;
    long wallNow=System.currentTimeMillis();if(wallNow-lastScan<2000)return;lastScan=wallNow;
    List<PackageInfo> apps;
    try { apps=pm.getInstalledPackages(0); } catch(RuntimeException e) { log("安装清单读取失败："+e.getClass().getSimpleName());return; }
    for(PackageInfo pi:apps) {
      String pkg=pi.packageName;
      if(pkg==null || pi.applicationInfo==null || protectedPackage(pkg,pi.applicationInfo.flags)) continue;
      if(originalInstall(pkg,pi.firstInstallTime) && !Long.valueOf(pi.firstInstallTime).equals(seen.get(pkg))) continue;
      if(pi.firstInstallTime<runStart && !baseline.contains(pkg)) continue;
      if(pi.firstInstallTime<runStart && !seen.containsKey(pkg)) continue;
      Long previous=seen.get(pkg);
      if(previous==null || previous.longValue()!=pi.firstInstallTime) {
        seen.put(pkg,pi.firstInstallTime);
        prefs.edit().putString("seen:"+pkg,"seen1\n"+pi.firstInstallTime).apply();
        String label=String.valueOf(pm.getApplicationLabel(pi.applicationInfo));
        log("记录运行期间安装："+label+" ["+pkg+"]；等待任务归属核对");
      }
    }
    if(requests.isEmpty()) return;
    for(Map.Entry<String,Long> request:requests.entrySet()) {
      List<PackageInfo> matches=new ArrayList<PackageInfo>();
      for(PackageInfo pi:apps) {
        if(pi.applicationInfo==null || protectedPackage(pi.packageName,pi.applicationInfo.flags)
            || protectedAtRequest(pi.packageName,pi.firstInstallTime,request.getValue())) continue;
        try {
          if(!clean(request.getKey().substring(2)).equals(clean(pm.getApplicationLabel(pi.applicationInfo).toString()))) continue;
          if(pi.firstInstallTime>=request.getValue()) matches.add(pi);
        } catch(Exception ignored) { }
      }
      if(matches.size()!=1) continue;
      PackageInfo pi=matches.get(0);String pkg=pi.packageName;
      if(packages.containsKey(pkg) && !"extra".equals(owners.get(pkg))) continue;
      try {
        String label=pm.getApplicationLabel(pi.applicationInfo).toString();
        if(!eligible(baselineReady,protectedAtRequest(pkg,pi.firstInstallTime,request.getValue()),pi.applicationInfo.flags,pkg,pi.firstInstallTime,request.getValue(),request.getKey().substring(2),label,matches.size())) continue;
        packages.put(pkg,label); identities.put(pkg,pi.firstInstallTime);owners.put(pkg,request.getKey());persist(pkg);
        log("已记录本轮新安装："+label+" ["+pkg+"]");
      } catch(Exception ignored) { }
    }
  }
  private void setHold(String name,boolean hold) {
    String key=clean(name);
    if(hold){pendingTwoDay.add(key);prefs.edit().putString("hold:"+key,"1").apply();}
    else {pendingTwoDay.remove(key);prefs.edit().remove("hold:"+key).apply();}
  }
  private boolean held(String pkg) {
    String owner=owners.get(pkg);
    if(bonds.containsKey(pkg)) for(String name:bonds.get(pkg)) if(pendingTwoDay.contains(name))return true;
    if(owner!=null && owner.startsWith("0:") && !completed.contains(pkg))return true;
    if(pendingTwoDay.contains(clean(packages.get(pkg))))return true;
    if(owner!=null && owner.length()>2 && pendingTwoDay.contains(clean(owner.substring(2))))return true;
    if("extra".equals(owner)) for(String name:pendingTwoDay) {
      boolean linked=false;
      for(String p:owners.keySet())
        if(("0:"+name).equals(clean(owners.get(p))) || name.equals(clean(packages.get(p)))){linked=true;break;}
      if(!linked)return true;
    }
    return false;
  }
  public void forceScan(){lastScan=0;scan();}
  public int prepare() {
    forceScan();queue.clear();active=null;
    for(Map.Entry<String,Long> e:seen.entrySet()) {
      if(packages.containsKey(e.getKey()))continue;
      try {
        PackageInfo pi=pm.getPackageInfo(e.getKey(),0);
        if(pi.firstInstallTime!=e.getValue() || pi.applicationInfo==null || protectedPackage(pi.packageName,pi.applicationInfo.flags))continue;
        packages.put(pi.packageName,pm.getApplicationLabel(pi.applicationInfo).toString());
        identities.put(pi.packageName,pi.firstInstallTime);owners.put(pi.packageName,"extra");persist(pi.packageName);
      }catch(Exception ignored){}
    }
    if(!baselineReady)return 0;
    for(String pkg:packages.keySet()) {
      try {
        PackageInfo pi=pm.getPackageInfo(pkg,0);
        if(pi.firstInstallTime!=identities.get(pkg) || protectedPackage(pkg,pi.applicationInfo.flags))continue;
      }catch(Exception ignored){continue;}
      if(held(pkg)){log("次日任务或归属待核对，保留应用："+packages.get(pkg));continue;}
      if(!attempted.contains(pkg)){
        queue.add(pkg);
        log("按非次日新增应用策略清理："+packages.get(pkg)+"；奖励确认="+completed.contains(pkg));
      }
    }
    return queue.size();
  }
  private void persist(String pkg) {
    String owner=owners.get(pkg);
    if(owner!=null && owner.startsWith("0:")){
      Set<String> names=bonds.get(pkg);
      if(names==null){names=new HashSet<String>();bonds.put(pkg,names);}
      names.add(clean(owner.substring(2)));
      StringBuilder record=new StringBuilder(String.valueOf(identities.get(pkg)));
      for(String n:names)record.append("\n").append(n);
      prefs.edit().putString("bond:"+pkg,record.toString()).apply();
    }
    prefs.edit().putString(pkg,"v2\n"+identities.get(pkg)+"\n"+owners.get(pkg)+"\n"+(completed.contains(pkg)?"done":"pending")+"\n"+packages.get(pkg)).apply();
  }
  /** Foreground evidence supplements exact-label discovery; never authorizes an old install. */
  public void observed(int section,String name,String pkg) {
    String key=section+":"+name;Long requested=requests.get(key);
    if(!baselineReady || requested==null || pkg==null) return;
    if(packages.containsKey(pkg) && !"extra".equals(owners.get(pkg))) {
      if(section==0){owners.put(pkg,key);completed.remove(pkg);setHold(name,true);persist(pkg);}
      return;
    }
    try {
      PackageInfo pi=pm.getPackageInfo(pkg,0);
      if(pi.firstInstallTime<requested || protectedPackage(pkg,pi.applicationInfo.flags) || protectedAtRequest(pkg,pi.firstInstallTime,requested)) return;
      String label=pm.getApplicationLabel(pi.applicationInfo).toString();
      // The actual foreground package is stronger evidence than a display name.
      // A preexisting install, system package, or install before the request remains protected.
      if(!clean(name).equals(clean(label))) log("任务名与体验应用名称不同，按实际前台包关联："+name+" / "+label);
      if(!seen.containsKey(pkg) || seen.get(pkg).longValue()!=pi.firstInstallTime) {
        seen.put(pkg,pi.firstInstallTime);
        prefs.edit().putString("seen:"+pkg,"seen1\n"+pi.firstInstallTime).apply();
        log("记录运行期间安装："+label+" ["+pkg+"]；由体验窗口确认任务归属");
      }
      packages.put(pkg,label);identities.put(pkg,pi.firstInstallTime);owners.put(pkg,key);persist(pkg);
      log("已记录体验应用安装身份："+label+" ["+pkg+"]");
    } catch(Exception e) { log("体验应用安装身份暂未读取："+name+" ["+pkg+"] "+e.getClass().getSimpleName()); }
  }
  public static boolean finalStatus(int section,String status,boolean explicitReward) {
    if(section!=0 && section!=2) return false;
    String s=clean(status);
    if(s.contains("明日") || s.contains("次日")) return false;
    return s.equals("已领奖") || s.equals("已领取") || s.equals("已完成") || (section==2 && explicitReward);
  }
  public void finished(int section,String name,String status,boolean explicitReward) {
    String key=section+":"+name;
    if(section==0) setHold(name,!finalStatus(0,status,false));
    // The same install may also be needed by a two-day task. That task takes priority.
    if(section==0) for(String pkg:packages.keySet()) {
      String owner=owners.get(pkg);
      if(key.equals(owner) || ("2:"+name).equals(owner)) {
        boolean changed=!key.equals(owner);owners.put(pkg,key);
        if(!finalStatus(0,status,false) && completed.remove(pkg)) changed=true;
        if(changed) persist(pkg);
      }
    }
    if(!finalStatus(section,status,explicitReward)) return;
    if(requests.containsKey(key)) scan();
    for(String pkg:packages.keySet()) if(key.equals(owners.get(pkg)) && completed.add(pkg)) {
      persist(pkg);log("任务完成，加入卸载队列："+packages.get(pkg));
    }
  }
  public int prepareReady() {
    queue.clear(); active=null;
    for(String pkg:packages.keySet()) if(completed.contains(pkg) && !attempted.contains(pkg)) queue.add(pkg);
    return queue.size();
  }
  private void log(String m) { messages+= (messages.isEmpty()?"":"\n")+m; }
  public String takeMessage() {String m=messages;messages="";return m;}
  public String summary() {
    int keep=0,left=0;
    for(String p:packages.keySet())try{
      if(pm.getPackageInfo(p,0).firstInstallTime!=identities.get(p))continue;
      if(held(p))keep++;else left++;
    }catch(Exception ignored){}
    return "本轮任务已结束；卸载确认成功 "+removed+" 项，次日/待核对保留 "+keep+" 项，待清理 "+left+" 项，跳过 "+skipped+" 项";
  }
  private PackageInfo installed(String pkg) throws PackageManager.NameNotFoundException { return pm.getPackageInfo(pkg,0); }
  private void skip(String reason) { log(reason+"："+packages.get(active));skipped++;active=null; }
  /** -3 = all done; -1 = wait; nonnegative = index of exact system uninstall confirmation. */
  public int step(List<TaskRules.Item> items,String foreground,long now) {
    if(active==null) {
      if(queue.isEmpty()) return -3;
      active=queue.remove(0); attempted.add(active); clicked=false;
      try {
        PackageInfo pi=installed(active);
        if(pi.firstInstallTime!=identities.get(active) || protectedPackage(active,pi.applicationInfo.flags)) {skip("安装身份已变化，保留");return -1;}
        Intent intent=new Intent(Intent.ACTION_DELETE,Uri.parse("package:"+active));intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        ResolveInfo ri=pm.resolveActivity(intent,0);
        if(ri==null || ri.activityInfo==null || (ri.activityInfo.applicationInfo.flags & 129)==0) {skip("无法确认系统卸载入口，保留");return -1;}
        installer=ri.activityInfo.packageName; intent.setComponent(new ComponentName(installer,ri.activityInfo.name));
        openedAt=now;context.startActivity(intent);log("准备卸载本轮新应用："+packages.get(active));
      } catch(PackageManager.NameNotFoundException e) {prefs.edit().remove(active).remove("seen:"+active).apply();seen.remove(active);log("应用已不存在："+packages.get(active));active=null;}
        catch(Exception e) {skip("无法打开卸载界面，保留");}
      return -1;
    }
    try { if(installed(active).firstInstallTime!=identities.get(active)) {skip("安装身份已变化，保留");return -1;} }
    catch(PackageManager.NameNotFoundException e) {removed++;prefs.edit().remove(active).remove("seen:"+active).apply();seen.remove(active);log("已确认卸载："+packages.get(active));active=null;return -1;}
    catch(RuntimeException e) {skip("无法核对安装状态，保留");return -1;}
    if(now-openedAt>20000) {skip("卸载未确认，保留记录");return -1;}
    if(clicked || now-openedAt<1000 || !foreground.equals(installer)) return -1;
    boolean target=false,uninstall=false;int button=-1;
    for(TaskRules.Item i:items) {
      if(matchesDialogLabel(i.text,packages.get(active))) target=true;
      if(i.text!=null && i.text.contains("卸载")) uninstall=true;
      if(("android:id/button1".equals(i.viewId) || "com.android.packageinstaller:id/bottom_btn_uninstall".equals(i.viewId))
          && ("卸载".equals(i.text)||"确定".equals(i.text)||"确认卸载".equals(i.text))) button=i.index;
    }
    // Exact package-targeted system dialog AND exact app label AND positive button required.
    if(target && uninstall && button>=0) {clicked=true;return button;}
    return -1;
  }
  public static boolean matchesDialogLabel(String text,String label) {
    String t=clean(text),l=clean(label);
    return !l.isEmpty() && (t.equals(l) || t.contains("“"+l+"”") || t.contains("\""+l+"\""));
  }
  public void clickFailed() { if(active!=null) skip("卸载确认按钮未能点击，保留"); }
}
