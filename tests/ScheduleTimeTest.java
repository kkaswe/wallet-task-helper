import cn.jim.wallethelper.ScheduleTime;
import java.time.*;
import java.util.TimeZone;
public class ScheduleTimeTest {
  static int n;
  static void check(String zone,String input,String expected){TimeZone.setDefault(TimeZone.getTimeZone(zone));long now=ZonedDateTime.parse(input).toInstant().toEpochMilli();long actual=ScheduleTime.next(now);long want=ZonedDateTime.parse(expected).toInstant().toEpochMilli();if(actual!=want)throw new AssertionError(input+" -> "+Instant.ofEpochMilli(actual));n++;}
  public static void main(String[] args){
    check("Asia/Shanghai","2026-10-14T04:59:59+08:00","2026-10-14T05:00:00+08:00");
    check("Asia/Shanghai","2026-10-14T05:00:00+08:00","2026-10-15T05:00:00+08:00");
    check("Asia/Shanghai","2026-10-14T12:00:00+08:00","2026-10-15T05:00:00+08:00");
    check("Asia/Shanghai","2026-12-31T23:59:59+08:00","2027-01-01T05:00:00+08:00");
    check("America/New_York","2026-03-07T12:00:00-05:00","2026-03-08T05:00:00-04:00");
    check("America/New_York","2026-10-31T12:00:00-04:00","2026-11-01T05:00:00-05:00");
    System.out.println("PASS: "+n+" daily scheduling boundary checks");
  }
}
