package cn.jim.wallethelper;
import android.content.*;
public final class RunLifecycle {
  private static SharedPreferences p(Context c){return c.getSharedPreferences("run_lifecycle",0);}
  public static void started(Context c){p(c).edit().putString("day",UnlockPolicy.day(System.currentTimeMillis())).remove("pause").commit();}
  public static void paused(Context c,String message){
    String reason="屏幕已锁定或熄灭，请解锁后继续".equals(message)?"screen":"hold";
    p(c).edit().putString("pause",reason).commit();
  }
  public static void resumed(Context c){p(c).edit().remove("pause").commit();}
  public static void stopped(Context c,String message){
    // Keep the user's pause decision across service disconnect/reconnect.
    if("服务已关闭".equals(message))return;
    p(c).edit().remove("pause").remove("day").commit();
  }
  public static boolean held(Context c){return "hold".equals(p(c).getString("pause",""));}
  // 0: ordinary schedule; 1: handled/held; 2: rescan interrupted task.
  public static int onUnlock(Context c,WalletService s){
    boolean running=s!=null&&s.scheduledBusy();
    int action=RunPolicy.action(running,s!=null&&s.schedulePaused(),p(c).getString("pause",""),p(c).getString("day",""),UnlockPolicy.day(System.currentTimeMillis()),UnlockPolicy.due(true,System.currentTimeMillis(),""));
    if(action==RunPolicy.HOLD){LocalLog.add(c,running?"解锁计划：现有任务运行或暂停，保留今日启动机会":"解锁计划：手动或异常暂停，等待手动继续");return 1;}
    if(action==RunPolicy.RESUME){s.resumeScheduled();LocalLog.add(c,"解锁计划：恢复锁屏暂停的任务");return 1;}
    if(action==RunPolicy.RESTART){
      if(s==null)return 1;
      s.stopForNewDay();
      LocalLog.add(c,"解锁计划：结束遗留流程，保留安装记录，恢复音量后重新检查任务");return 2;
    }
    return 0;
  }
}
