package cn.jim.wallethelper;
import android.accessibilityservice.AccessibilityService;
import android.content.*;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;

/** Media volume for the run; Wi-Fi changes only for a video timeout fallback. */
public final class VideoEnvironment {
  private static boolean ready;
  private static boolean restoring;
  private static final Handler recovery = new Handler(Looper.getMainLooper());
  public static String error;
  private static SharedPreferences prefs(Context c){return c.getSharedPreferences("video_environment",0);}
  private static AudioManager audio(Context c){return (AudioManager)c.getSystemService(Context.AUDIO_SERVICE);}
  private static void log(Context c,String s){LocalLog.add(c,"视频设置："+s);}
  public static int prepare(AccessibilityService c){
    if(ready)return 1;
    try{
      SharedPreferences p=prefs(c);
      if(p.getBoolean("pending",false)){
        restore(c);
        return 0;
      }
      int volume=audio(c).getStreamVolume(AudioManager.STREAM_MUSIC);
      if(!p.edit().putInt("volume",volume).putBoolean("pending",true).remove("wifi").commit())throw new IllegalStateException("无法保存媒体音量");
      audio(c).setStreamVolume(AudioManager.STREAM_MUSIC,0,0);
      if(audio(c).getStreamVolume(AudioManager.STREAM_MUSIC)!=0)throw new IllegalStateException("媒体音量未归零");
      ready=true;error=null;log(c,"已保存原媒体音量="+volume+"，现设为 0；Wi-Fi 未操作");return 1;
    }catch(Exception e){error="视频准备失败："+e.getMessage();log(c,error);return -1;}
  }
  public static int restorationState(Context c){return restoring?1:(prefs(c).getBoolean("pending",false)?-1:WifiRetry.state(c));}
  public static void restore(final AccessibilityService c){
    ready=false;
    WifiRetry.restore(c);
    if(restoring)return;
    final SharedPreferences p=prefs(c);
    if(!p.getBoolean("pending",false))return;
    restoring=true;
    final long started=SystemClock.uptimeMillis();
    final int target=p.getInt("volume",0);
    log(c,"开始恢复媒体音量，目标="+target);
    new Runnable(){
      long stableSince=-1;
      boolean applied;
      public void run(){
        long now=SystemClock.uptimeMillis();
        try{
          AudioManager a=audio(c);
          int actual=a.getStreamVolume(AudioManager.STREAM_MUSIC);
          if(!applied || actual!=target){
            a.setStreamVolume(AudioManager.STREAM_MUSIC,target,0);
            applied=true;stableSince=-1;
          }else{
            if(stableSince<0)stableSince=now;
            if(now-stableSince>=1500){
              if(!p.edit().remove("pending").remove("wifi").commit())throw new IllegalStateException("恢复记录保存失败");
              restoring=false;error=null;
              log(c,"已恢复媒体音量="+actual+"，延迟复核通过；网络恢复状态另行记录");return;
            }
          }
        }catch(Exception e){stableSince=-1;error=e.getClass().getSimpleName()+":"+e.getMessage();}
        if(now-started>=10000){
          restoring=false;error="媒体音量恢复未完成，目标="+target+"；保留恢复记录，服务重连时重试";
          log(c,error);return;
        }
        recovery.postDelayed(this,300);
      }
    }.run();
  }
}
