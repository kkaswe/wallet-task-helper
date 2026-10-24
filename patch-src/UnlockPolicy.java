package cn.jim.wallethelper;
import java.util.*;
import java.text.SimpleDateFormat;
public final class UnlockPolicy {
  public static String day(long now){return new SimpleDateFormat("yyyy-MM-dd",Locale.US).format(new Date(now));}
  public static boolean due(boolean enabled,long now,String last){Calendar c=Calendar.getInstance();c.setTimeInMillis(now);return enabled && c.get(Calendar.HOUR_OF_DAY)>=5 && !day(now).equals(last);}
}
