package cn.jim.wallethelper;
import java.util.Calendar;
public final class ScheduleTime {
  public static long next(long now){Calendar t=Calendar.getInstance();t.setTimeInMillis(now);t.set(Calendar.HOUR_OF_DAY,5);t.set(Calendar.MINUTE,0);t.set(Calendar.SECOND,0);t.set(Calendar.MILLISECOND,0);if(t.getTimeInMillis()<=now)t.add(Calendar.DATE,1);return t.getTimeInMillis();}
}
