package cn.jim.wallethelper;
import android.accessibilityservice.AccessibilityService;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.*;
import android.net.wifi.WifiManager;
import android.os.*;
import android.view.accessibility.AccessibilityNodeInfo;

/** One network fallback per video flow; settings recovery survives process death. */
public final class WifiRetry {
  private static final Handler handler=new Handler(Looper.getMainLooper());
  private static boolean active,restoring,opened;
  private static long deadline,lastClick;
  private static int generation;
  public static String error;
  private static SharedPreferences prefs(Context c){return c.getSharedPreferences("video_wifi_retry",0);}
  private static WifiManager wifi(Context c){return (WifiManager)c.getApplicationContext().getSystemService(Context.WIFI_SERVICE);}
  private static void log(Context c,String s){LocalLog.add(c,"视频网络重试："+s);}
  public static boolean begin(AccessibilityService c){
    if(active||restoring||prefs(c).getBoolean("pending",false)){error="上次 Wi-Fi 恢复尚未完成";return false;}
    try{
      int state=wifi(c).getWifiState();
      if(state!=WifiManager.WIFI_STATE_ENABLED&&state!=WifiManager.WIFI_STATE_DISABLED)throw new IllegalStateException("Wi-Fi 正在切换");
      if(!prefs(c).edit().putBoolean("original",state==WifiManager.WIFI_STATE_ENABLED).putBoolean("pending",true).commit())throw new IllegalStateException("无法保存 Wi-Fi 原状态");
      generation++;opened=false;lastClick=0;active=true;deadline=SystemClock.uptimeMillis()+20000;
      log(c,state==WifiManager.WIFI_STATE_ENABLED?"超时后关闭 Wi-Fi，仅重试一次":"Wi-Fi 原本关闭，仅重新加载视频一次");return true;
    }catch(Exception e){error=e.getMessage();log(c,error);return false;}
  }
  // Called by the service video tick, never from an independent task-click timer.
  public static int advance(AccessibilityService c){
    if(!active){error="网络重试已取消";return -1;}
    try{
      if(wifi(c).getWifiState()==WifiManager.WIFI_STATE_DISABLED){active=false;log(c,"已确认 Wi-Fi 关闭，返回钱包核对次数后重试");return 1;}
      if(SystemClock.uptimeMillis()>deadline)throw new IllegalStateException("关闭 Wi-Fi 超时，停止重试");
      toggle(c,false);return 0;
    }catch(Exception e){active=false;error=e.getMessage();log(c,error);return -1;}
  }
  public static int state(Context c){return restoring?1:(prefs(c).getBoolean("pending",false)?-1:0);}
  public static void restore(final AccessibilityService c){
    active=false;
    if(restoring||!prefs(c).getBoolean("pending",false))return;
    restoring=true;opened=false;lastClick=0;
    final int token=++generation;
    final long until=SystemClock.uptimeMillis()+20000;
    final boolean target=prefs(c).getBoolean("original",false);
    new Runnable(){public void run(){
      if(token!=generation)return;
      try{
        int expected=target?WifiManager.WIFI_STATE_ENABLED:WifiManager.WIFI_STATE_DISABLED;
        if(wifi(c).getWifiState()==expected){
          if(!prefs(c).edit().remove("pending").commit())throw new IllegalStateException("Wi-Fi 恢复记录保存失败");
          restoring=false;log(c,"已恢复原 Wi-Fi="+target);
          if(opened)WalletEntry.open(c);
          opened=false;return;
        }
        if(SystemClock.uptimeMillis()>until)throw new IllegalStateException("Wi-Fi 恢复超时，保留原状态供服务重连重试");
        toggle(c,target);handler.postDelayed(this,350);
      }catch(Exception e){restoring=false;error=e.getMessage();log(c,error);}
    }}.run();
  }
  private static void launchSettings(Context c)throws Exception {
    Intent i=new Intent("android.settings.WIFI_SETTINGS").addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
    if(Build.VERSION.SDK_INT>=34){
      ActivityOptions creator=options("setPendingIntentCreatorBackgroundActivityStartMode");
      PendingIntent pi=PendingIntent.getActivity(c,141,i,0x04000000|PendingIntent.FLAG_CANCEL_CURRENT|PendingIntent.FLAG_ONE_SHOT,creator.toBundle());
      c.startIntentSender(pi.getIntentSender(),null,0,0,0,options("setPendingIntentBackgroundActivityStartMode").toBundle());
    }else c.startActivity(i);
    opened=true;
  }
  private static ActivityOptions options(String setter)throws Exception {
    ActivityOptions o=(ActivityOptions)ActivityOptions.class.getMethod("makeBasic").invoke(null);
    ActivityOptions.class.getMethod(setter,int.class).invoke(o,ActivityOptions.class.getField("MODE_BACKGROUND_ACTIVITY_START_ALLOWED").getInt(null));
    return o;
  }
  private static String id(AccessibilityNodeInfo n){
    try{return String.valueOf(AccessibilityNodeInfo.class.getMethod("getViewIdResourceName").invoke(n));}catch(Exception e){return "";}
  }
  private static boolean clickSwitch(AccessibilityNodeInfo n,boolean target){
    if(n==null)return false;
    try{
      String id=id(n);
      if("com.android.settings:id/switch_widget".equals(id) && n.isCheckable() && n.isClickable() && n.isEnabled() && n.isVisibleToUser()){
        if(n.isChecked()!=target && SystemClock.uptimeMillis()-lastClick>1800){
          lastClick=SystemClock.uptimeMillis();
          return n.performAction(AccessibilityNodeInfo.ACTION_CLICK);
        }
        return true;
      }
      for(int j=0;j<n.getChildCount();j++){AccessibilityNodeInfo child=n.getChild(j);if(child!=null)try{if(clickSwitch(child,target))return true;}finally{child.recycle();}}
      return false;
    }catch(Exception e){return false;}
  }
  private static boolean hasWifiLabel(AccessibilityNodeInfo n){
    if(n==null)return false;
    if("com.android.settings:id/switch_text".equals(id(n)) && "WLAN".contentEquals(n.getText()==null?"":n.getText()))return true;
    for(int j=0;j<n.getChildCount();j++){AccessibilityNodeInfo child=n.getChild(j);if(child!=null)try{if(hasWifiLabel(child))return true;}finally{child.recycle();}}
    return false;
  }
  private static void toggle(AccessibilityService c,boolean target)throws Exception{
    AccessibilityNodeInfo root=c.getRootInActiveWindow();
    try{
      if(root!=null && "com.android.settings".contentEquals(root.getPackageName()==null?"":root.getPackageName()) && hasWifiLabel(root)){
        opened=true;clickSwitch(root,target);
      }else if(!opened){launchSettings(c);}
    }finally{if(root!=null)root.recycle();}
  }
}
