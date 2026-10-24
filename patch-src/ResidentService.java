package cn.jim.wallethelper;
import android.app.*;
import android.content.*;
/** Compatibility shim: unlock listening belongs to the accessibility service. */
public final class ResidentService extends Service {
 public static String error;
 public static boolean active(){return WalletService.instance!=null;}
 public static void request(Context c){
  c.stopService(new Intent(c,ResidentService.class));
  ((NotificationManager)c.getSystemService(Context.NOTIFICATION_SERVICE)).cancel(145);
  ((NotificationManager)c.getSystemService(Context.NOTIFICATION_SERVICE)).cancel(144);
 }
 public static void refresh(){}
 public int onStartCommand(Intent i,int flags,int id){stopForeground(true);stopSelf();return START_NOT_STICKY;}
 public android.os.IBinder onBind(Intent i){return null;}
}
