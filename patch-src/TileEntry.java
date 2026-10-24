package cn.jim.wallethelper;
import android.app.Activity;
import android.content.*;
import android.widget.Toast;
import java.util.concurrent.Executor;
import java.util.function.Consumer;
public final class TileEntry {
  public static void add(final Activity a){try{
    Object manager=a.getSystemService("statusbar");Class<?> icon=Class.forName("android.graphics.drawable.Icon");
    int resource=a.getResources().getIdentifier("ic_auto_toggle","drawable",a.getPackageName());
    Object image=icon.getMethod("createWithResource",Context.class,int.class).invoke(null,a,resource);
    manager.getClass().getMethod("requestAddTileService",ComponentName.class,CharSequence.class,icon,Executor.class,Consumer.class).invoke(manager,new ComponentName(a,WalletTileService.class),"钱包自动任务",image,new Executor(){public void execute(Runnable r){a.runOnUiThread(r);}},new Consumer<Integer>(){public void accept(Integer result){Toast.makeText(a,"添加请求已处理，请在快捷设置中查看",0).show();}});
  }catch(Exception e){Toast.makeText(a,"请下拉快捷设置，点编辑，将钱包自动任务拖入开关区",1).show();}}
}
