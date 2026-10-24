import cn.jim.wallethelper.RunPolicy;
public class RunPolicyTest {
 static int n;
 static void check(boolean running,boolean paused,String reason,String day,boolean after,int want){
  if(RunPolicy.action(running,paused,reason,day,"2026-10-19",after)!=want)throw new AssertionError("case "+n);n++;
 }
 public static void main(String[] args){
  check(false,false,"","",true,0);
  check(true,false,"","2026-10-18",true,1);
  check(true,true,"hold","2026-10-18",true,1);
  check(false,false,"hold","2026-10-18",true,1);
  check(true,true,"screen","2026-10-19",true,2);
  check(true,true,"screen","2026-10-19",false,2);
  check(true,true,"screen","2026-10-18",true,3);
  check(true,true,"screen","2026-10-18",false,1);
  check(false,false,"screen","2026-10-19",true,3);
  check(false,false,"screen","2026-10-18",true,3);
  check(true,true,"","",true,1);
  check(false,false,"","2026-10-19",true,0);
  System.out.println("PASS: "+n+" pause/reconnect/cross-day policy cases");
 }
}
