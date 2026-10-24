package cn.jim.wallethelper;
import android.os.Handler;
public final class InstallMonitor {
  private static final Handler h=new Handler();
  private static Runnable poll;
  public static void start(final TaskInstallLedger ledger){
    stop();
    poll=new Runnable(){public void run(){
      if(poll!=this)return;
      try{ledger.scan();}catch(RuntimeException ignored){}
      h.postDelayed(this,2000);
    }};
    h.post(poll);
  }
  public static void stop(){if(poll!=null)h.removeCallbacks(poll);poll=null;}
}
