package cn.jim.wallethelper;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;

/** The one wallet-launch entry used by the home button and the automatic second pass. */
public final class WalletEntry {
  public static String lastRoute;
  private WalletEntry() {}

  public static String open(Context context) {
    try {
      Intent launch=context.getPackageManager().getLaunchIntentForPackage("com.hihonor.wallet");
      if(launch==null) return "未找到荣耀钱包，请确认已安装且未停用";
      if(!(context instanceof Activity)) launch.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
      if(!(context instanceof Activity) && Build.VERSION.SDK_INT>=34) {
        // Public APIs reflected only because the supplied compile jar predates them.
        ActivityOptions creator=options("setPendingIntentCreatorBackgroundActivityStartMode");
        PendingIntent entry=PendingIntent.getActivity(context,138,launch,
          0x04000000 | PendingIntent.FLAG_CANCEL_CURRENT | PendingIntent.FLAG_ONE_SHOT,
          creator.toBundle());
        ActivityOptions sender=options("setPendingIntentBackgroundActivityStartMode");
        context.startIntentSender(entry.getIntentSender(),null,0,0,0,sender.toBundle());
        lastRoute="PendingIntent/IntentSender";
      } else {
        context.startActivity(launch);
        lastRoute="Activity";
      }
      return null;
    } catch(IntentSender.SendIntentException e) {
      return "钱包启动入口已失效，请重试";
    } catch(ReflectiveOperationException e) {
      Throwable cause=e instanceof InvocationTargetException?((InvocationTargetException)e).getCause():e;
      return "钱包后台启动参数不可用："+cause.getClass().getSimpleName();
    } catch(RuntimeException e) {
      return "暂时无法打开荣耀钱包（"+e.getClass().getSimpleName()+"），请从桌面打开";
    }
  }

  private static ActivityOptions options(String setter) throws ReflectiveOperationException {
    ActivityOptions value=(ActivityOptions)ActivityOptions.class.getMethod("makeBasic").invoke(null);
    int allowed=ActivityOptions.class.getField("MODE_BACKGROUND_ACTIVITY_START_ALLOWED").getInt(null);
    ActivityOptions.class.getMethod(setter,int.class).invoke(value,allowed);
    return value;
  }
}
