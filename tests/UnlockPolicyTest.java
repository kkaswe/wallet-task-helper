import cn.jim.wallethelper.UnlockPolicy;
import java.time.*;
import java.util.*;
public class UnlockPolicyTest {
  static int count;
  static void check(boolean enabled,String at,String last,boolean want){long now=ZonedDateTime.parse(at).toInstant().toEpochMilli();if(UnlockPolicy.due(enabled,now,last)!=want)throw new AssertionError(at+" last="+last);count++;}
  public static void main(String[] args){
    TimeZone.setDefault(TimeZone.getTimeZone("Asia/Shanghai"));
    check(true,"2026-10-14T04:59:59+08:00","",false);
    check(true,"2026-10-14T05:00:00+08:00","",true);
    check(true,"2026-10-14T05:00:01+08:00","2026-10-14",false);
    check(true,"2026-10-14T09:00:00+08:00","2026-10-13",true);
    check(false,"2026-10-14T09:00:00+08:00","",false);
    check(true,"2026-10-14T23:59:59+08:00","2026-10-14",false);
    check(true,"2026-10-15T00:00:00+08:00","2026-10-14",false);
    check(true,"2026-10-15T05:00:00+08:00","2026-10-14",true);
    check(true,"2027-01-01T05:00:00+08:00","2026-12-31",true);
    TimeZone.setDefault(TimeZone.getTimeZone("America/New_York"));
    check(true,"2026-11-01T04:59:59-05:00","2026-10-31",false);
    check(true,"2026-11-01T05:00:00-05:00","2026-10-31",true);
    check(true,"2026-11-01T05:30:00-05:00","2026-11-01",false);
    System.out.println("PASS: "+count+" unlock timing and daily deduplication checks");
  }
}
