package cn.jim.wallethelper;
import android.app.*;
import android.content.*;
import android.os.*;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.*;

/** Local daily alarm. Never unlocks the phone or resumes a user-paused run. */
public final class DailySchedule {
  private static final String ACTION="cn.jim.wallethelper.DAILY_0700";
  private static final Handler handler=new Handler();
  private static boolean attached,opening;
  private static int generation;
  private static int restoreRetries;
  private static boolean waitingRestore;
  private static final String SCHEMA="wallet-schedule-3";
  public static void cancelOpening(Context c){if(opening){p(c).edit().remove("pending").commit();LocalLog.add(c,"自动启动已取消，今日可在下次解锁后重试");}opening=false;generation++;}
  private static SharedPreferences p(Context c){return c.getSharedPreferences("daily_schedule",0);}
  private static String day(){return new java.text.SimpleDateFormat("yyyy-MM-dd",Locale.US).format(new Date());}
  public static long next(long now){return ScheduleTime.next(now);}
  private static AlarmManager alarm(Context c){return (AlarmManager)c.getSystemService(Context.ALARM_SERVICE);}
  public static boolean exact(Context c){try{return Build.VERSION.SDK_INT<31 || (Boolean)AlarmManager.class.getMethod("canScheduleExactAlarms").invoke(alarm(c));}catch(Exception e){return false;}}
  private static PendingIntent pi(Context c){Intent i=new Intent(c,ScheduleReceiver.class).setAction(ACTION);return PendingIntent.getBroadcast(c,144,i,0x04000000|PendingIntent.FLAG_UPDATE_CURRENT);}
  public static boolean enabled(Context c){return p(c).getBoolean("enabled",true);}
  public static void setEnabled(Context c,boolean value){
    p(c).edit().putBoolean("enabled",value).remove("pending").commit();
    if(!value){opening=false;generation++;if(WalletService.instance!=null)WalletService.instance.stopAutoFromTile();}
    ensure(c);
  }
  public static void ensure(Context c){
    try{alarm(c).cancel(pi(c));}catch(Exception ignored){}
    ResidentService.request(c);
  }
  public static String status(Context c){
    if(!enabled(c))return "自动任务已关闭";
    String resident=ResidentService.active()?"无障碍解锁监听已连接":"请开启无障碍服务";
    String state=day().equals(p(c).getString("last",""))?"今日自动计划已处理":(day().equals(p(c).getString("pending",""))?"今日解锁已触发，等待进入任务页":"等待解锁触发");
    return "每天 05:00 后首次解锁运行\n"+resident+"\n"+state+(WalletService.instance==null?"\n请开启无障碍服务":"");
  }
  public static void onUnlocked(Context c){
    if(!enabled(c)||!unlocked(c))return;
    int recovery=RunLifecycle.onUnlock(c,WalletService.instance);
    if(recovery==1)return;
    if(recovery!=2&&!UnlockPolicy.due(true,System.currentTimeMillis(),p(c).getString("last","")))return;
    restoreRetries=0;
    p(c).edit().putString("pending",day()).commit();attempt(c);
  }
  public static void attach(final Context c){
    ensure(c);
    SharedPreferences prefs=p(c);
    if(!SCHEMA.equals(prefs.getString("schema",""))){
      prefs.edit().remove("pending").putString("schema",SCHEMA).commit();
      LocalLog.add(c,"计划版本已更新，保留每日运行记录");
    }
    if(!attached){
      BroadcastReceiver r=new BroadcastReceiver(){public void onReceive(Context ignored,Intent i){onUnlocked(c.getApplicationContext());}};
      IntentFilter f=new IntentFilter(Intent.ACTION_USER_PRESENT);
      try{if(Build.VERSION.SDK_INT>=33)Context.class.getMethod("registerReceiver",BroadcastReceiver.class,IntentFilter.class,int.class).invoke(c.getApplicationContext(),r,f,2);else c.getApplicationContext().registerReceiver(r,f);attached=true;}catch(Exception e){LocalLog.add(c,"解锁后续执行监听不可用");}
    }
    attempt(c);
  }
  public static void receive(Context c,Intent intent){ensure(c);}
  private static boolean unlocked(Context c){return !((KeyguardManager)c.getSystemService(Context.KEYGUARD_SERVICE)).isKeyguardLocked() && ((PowerManager)c.getSystemService(Context.POWER_SERVICE)).isScreenOn();}
  private static void done(Context c,String message,boolean success){
    SharedPreferences.Editor e=p(c).edit().remove("pending");
    if(success)e.putString("last",day());
    e.commit();LocalLog.add(c,message);ResidentService.refresh();
  }
  public static void completed(Context c){cancelOpening(c);done(c,"今日任务已完成，本日不再自动启动",true);}
  public static void attempt(final Context c){
    if(!enabled(c)||opening||RunLifecycle.held(c))return;
    String pending=p(c).getString("pending","");
    if(!day().equals(pending)){if(!pending.isEmpty())p(c).edit().remove("pending").apply();return;}
    final WalletService service=WalletService.instance;
    if(service!=null && service.scheduledBusy()){done(c,"解锁计划：已有任务运行，仅跳过本次启动",false);return;}
    if(service==null||!unlocked(c)){notifyUser(c,service==null?"请开启无障碍服务，再打开助手继续今日计划":"请解锁手机，助手会继续今日解锁计划");return;}
    if(VideoEnvironment.restorationState(c)!=0){
      if(!waitingRestore && restoreRetries++<12){
        waitingRestore=true; final int restoreToken=generation;
        VideoEnvironment.restore(service);
        handler.postDelayed(new Runnable(){public void run(){waitingRestore=false;if(restoreToken==generation)attempt(c);}},1000);
      }else if(!waitingRestore){notifyUser(c,"媒体音量恢复未完成，保留计划，等待下次解锁重试");}
      return;
    }
    restoreRetries=0;
    opening=true;String error=WalletEntry.open(service);
    if(error!=null){opening=false;notifyUser(c,error);return;}
    final int token=++generation;
    final long deadline=SystemClock.uptimeMillis()+30000;
    handler.postDelayed(new Runnable(){public void run(){
      if(token!=generation)return;
      if(WalletService.instance!=service){opening=false;notifyUser(c,"请重新连接无障碍服务");return;}
      if(!enabled(c)||!unlocked(c)){opening=false;return;}
      if(service.scheduledBusy()){opening=false;done(c,"解锁计划：已有任务运行，仅跳过本次启动",false);return;}
      AccessibilityNodeInfo root=service.getRootInActiveWindow();
      boolean taskPage=false;
      if(root!=null)try{
        if("com.hihonor.wallet".contentEquals(root.getPackageName()==null?"":root.getPackageName())){
          taskPage=hasText(root,"浏览应用")||hasText(root,"下载并体验")||hasText(root,"观看视频，领会员时长")
              ||hasText(root,"天天领会员")||hasText(root,"连续2天体验应用，领会员时长");
          if(!taskPage){
            if(clickSavings(root))LocalLog.add(c,"钱包首页已点击省钱，等待任务页");
            if(SystemClock.uptimeMillis()<=deadline){handler.postDelayed(this,800);return;}
          }
        }
      }finally{root.recycle();}
      if(taskPage && service.startScheduledTask()){opening=false;done(c,"解锁计划：已进入省钱页并启动完整钱包任务",true);return;}
      if(SystemClock.uptimeMillis()>deadline){opening=false;done(c,"解锁计划：任务页面未就绪，停止自动重试",false);notifyUser(c,"请进入钱包省钱任务页，手动开始");return;}
      handler.postDelayed(this,1000);
    }},1500);
  }

  private static boolean hasText(AccessibilityNodeInfo n,String text){
    if(text.contentEquals(n.getText()==null?"":n.getText())||text.contentEquals(n.getContentDescription()==null?"":n.getContentDescription()))return true;
    for(int j=0;j<n.getChildCount();j++){AccessibilityNodeInfo child=n.getChild(j);if(child!=null)try{if(hasText(child,text))return true;}finally{child.recycle();}}
    return false;
  }
  private static boolean clickSavings(AccessibilityNodeInfo n){
    if("省钱".contentEquals(n.getText()==null?"":n.getText()) && n.isVisibleToUser()){
      if(clickAncestor(n))return true;
    }
    for(int j=0;j<n.getChildCount();j++){AccessibilityNodeInfo child=n.getChild(j);if(child!=null)try{if(clickSavings(child))return true;}finally{child.recycle();}}
    return false;
  }
  private static boolean clickAncestor(AccessibilityNodeInfo node){
    AccessibilityNodeInfo current=AccessibilityNodeInfo.obtain(node);
    for(int depth=0;current!=null&&depth<8;depth++){
      AccessibilityNodeInfo parent=null;
      try{
        if(current.isClickable()&&current.performAction(AccessibilityNodeInfo.ACTION_CLICK))return true;
        parent=current.getParent();
      }finally{current.recycle();}
      current=parent;
    }
    if(current!=null)current.recycle();
    return false;
  }
  private static void notifyUser(Context c,String text){
    LocalLog.add(c,"定时计划待处理："+text);
  }
}
