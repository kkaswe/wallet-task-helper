package cn.jim.wallethelper;
import android.content.*;
public final class ScheduleReceiver extends BroadcastReceiver {
  public void onReceive(Context c,Intent i){DailySchedule.receive(c,i);}
}
