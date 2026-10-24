package cn.jim.wallethelper;
import android.app.*;
import android.content.*;
public final class RunNotice {
  public static Notification build(Context c,String channel,String title,String text,boolean ongoing)throws Exception {
    NotificationManager nm=(NotificationManager)c.getSystemService(Context.NOTIFICATION_SERVICE);
    Class<?> type=Class.forName("android.app.NotificationChannel");
    Object ch=type.getConstructor(String.class,CharSequence.class,int.class).newInstance(channel,ongoing?"助手常驻":"任务结果",ongoing?2:3);
    NotificationManager.class.getMethod("createNotificationChannel",type).invoke(nm,ch);
    Intent i=new Intent(c,ScheduleActivity.class).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
    PendingIntent pi=PendingIntent.getActivity(c,ongoing?145:146,i,0x04000000|PendingIntent.FLAG_UPDATE_CURRENT);
    Notification.Builder b=new Notification.Builder(c).setSmallIcon(android.R.drawable.ic_popup_sync).setContentTitle(title).setContentText(text).setContentIntent(pi).setOngoing(ongoing).setAutoCancel(!ongoing).setOnlyAlertOnce(ongoing);
    b.setStyle(new Notification.BigTextStyle().bigText(text));
    Notification.Builder.class.getMethod("setChannelId",String.class).invoke(b,channel);
    return b.build();
  }
  public static void stopped(Context c,String message,boolean wasRunning){
    if(!wasRunning || message==null || !message.startsWith("本轮任务已结束"))return;
    DailySchedule.completed(c);
    String title=message!=null && message.startsWith("本轮任务已结束")?"钱包任务已结束":"钱包任务已停止";
    try{((NotificationManager)c.getSystemService(Context.NOTIFICATION_SERVICE)).notify(146,build(c,"wallet_result",title,message,false));}
    catch(Exception e){LocalLog.add(c,"结果通知未显示："+e.getClass().getSimpleName());}
    if(message!=null && message.startsWith("本轮任务已结束") && c instanceof WalletService){
      try{((WalletService)c).hideOverlay();}catch(RuntimeException e){LocalLog.add(c,"完成后关闭浮窗失败："+e.getClass().getSimpleName());}
    }
    ResidentService.refresh();
  }
}
