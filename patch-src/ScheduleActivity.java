package cn.jim.wallethelper;
import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.*;
import android.view.View;
public final class ScheduleActivity extends Activity {
  public static void addEntry(final Activity a,LinearLayout parent){Button b=new Button(a);b.setText("自动任务 · 解锁运行");b.setOnClickListener(new View.OnClickListener(){public void onClick(View v){a.startActivity(new Intent(a,ScheduleActivity.class));}});parent.addView(b);}
  public void onCreate(Bundle b){super.onCreate(b);}
  public void onResume(){super.onResume();DailySchedule.attach(this);show();}
  private void show(){ScrollView scroll=new ScrollView(this);LinearLayout l=new LinearLayout(this);l.setOrientation(1);int pad=(int)(24*getResources().getDisplayMetrics().density);l.setPadding(pad,pad*2,pad,pad);scroll.addView(l);setContentView(scroll);TextView t=new TextView(this);t.setTextSize(20);t.setText(DailySchedule.status(this)+"\n\n每天 7 点后首次解锁启动完整流程，每天最多自动启动一次。仅正常完成后发送结果通知，无常驻通知。关闭开关会停止当前任务。\n\n依靠无障碍服务监听解锁；系统清理进程可能中断，请允许后台运行，并保持无障碍服务开启。\n");l.addView(t);
    button(l,DailySchedule.enabled(this)?"关闭自动任务":"开启自动任务",new Runnable(){public void run(){DailySchedule.setEnabled(ScheduleActivity.this,!DailySchedule.enabled(ScheduleActivity.this));show();}});
    button(l,"添加到快捷设置开关",new Runnable(){public void run(){TileEntry.add(ScheduleActivity.this);}});
    button(l,"允许通知提醒",new Runnable(){public void run(){try{Activity.class.getMethod("requestPermissions",String[].class,int.class).invoke(ScheduleActivity.this,new String[]{"android.permission.POST_NOTIFICATIONS"},144);}catch(Exception e){Toast.makeText(ScheduleActivity.this,"请在系统设置中允许通知",1).show();}}});
    button(l,"开启无障碍服务",new Runnable(){public void run(){startActivity(new Intent("android.settings.ACCESSIBILITY_SETTINGS"));}});
    button(l,"后台运行设置",new Runnable(){public void run(){try{startActivity(new Intent("android.settings.IGNORE_BATTERY_OPTIMIZATION_SETTINGS"));}catch(Exception e){startActivity(new Intent("android.settings.APPLICATION_DETAILS_SETTINGS",Uri.parse("package:"+getPackageName())));}}});
    button(l,"返回首页",new Runnable(){public void run(){finish();}});
  }
  private void button(LinearLayout l,String text,final Runnable r){Button b=new Button(this);b.setText(text);b.setOnClickListener(new View.OnClickListener(){public void onClick(View v){r.run();}});l.addView(b);}
}
