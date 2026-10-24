package cn.jim.wallethelper.tools.soda;

import android.app.*;
import android.os.Bundle;
import android.content.*;
import android.content.pm.*;
import android.view.*;
import android.widget.*;
import java.util.*;
import cn.jim.wallethelper.WalletService;

public final class SodaToolsActivity extends Activity {
    private EditText count;
    public static void addEntry(final Activity a,LinearLayout root) {
        Button b=new Button(a); b.setText("额外工具 · 汽水音乐");
        root.addView(b,new LinearLayout.LayoutParams(-1,-2));
        b.setOnClickListener(new View.OnClickListener(){public void onClick(View v){a.startActivity(new Intent(a,SodaToolsActivity.class));}});
    }
    @Override public void onCreate(Bundle state) {
        super.onCreate(state);
        ScrollView scroll=new ScrollView(this); LinearLayout root=new LinearLayout(this); root.setOrientation(1);root.setPadding(24,32,24,24);scroll.addView(root);setContentView(scroll);
        TextView title=new TextView(this);title.setText("额外工具 / 汽水音乐");title.setTextSize(24);root.addView(title);
        TextView tip=new TextView(this);tip.setText("打开汽水音乐后，进入免费听的广告页面。支持无障碍文字与本机截图识别。首次升级后请关闭再开启无障碍服务。助手检查右上角：有倒计时则等待；无倒计时或领取成功时点关闭。领取成功后的天数福利弹窗会点击领取。\n\n连续观看达到设定次数后退出；下一条入口不明确时等待你手动打开。钱包和此工具只能运行一个，切换时停止另一项。\n\n不会点击广告中的下载、购买或申请按钮。");tip.setTextSize(16);root.addView(tip);
        count=new EditText(this);count.setInputType(2);count.setHint("本次广告数（0—9999，0不执行）");count.setText(String.valueOf(getPreferences(0).getInt("count_v2",50)));root.addView(count);
        button(root,"打开汽水音乐",new Runnable(){public void run(){open(false);}});
        button(root,"启动广告助手并打开汽水",new Runnable(){public void run(){open(true);}});
        button(root,"停止广告助手",new Runnable(){public void run(){SodaController.stop();}});
        button(root,"查看 / 导出汽水诊断",new Runnable(){public void run(){diagnostics();}});
        button(root,"返回钱包助手",new Runnable(){public void run(){SodaController.stop();finish();}});
    }
    private void button(LinearLayout root,String label,final Runnable r) {Button b=new Button(this);b.setText(label);root.addView(b,new LinearLayout.LayoutParams(-1,-2));b.setOnClickListener(new View.OnClickListener(){public void onClick(View v){r.run();}});}
    private void open(boolean run) {
        int n=50;
        if(run) {
            try {n=Integer.parseInt(count.getText().toString().trim());}catch(Exception e){toast("请输入 0—9999 次");return;}
            if(n<0||n>9999){toast("请输入 0—9999 次");return;}
            getPreferences(0).edit().putInt("count_v2",n).apply();
            if(n==0){SodaController.stop();toast("已设置为 0 次，不执行广告任务");return;}
            if(WalletService.instance==null){toast("请先在钱包助手首页开启无障碍服务");return;}
        }
        // Resolve the exact installed launcher label instead of guessing a package or a deep link.
        PackageManager pm=getPackageManager(); Intent query=new Intent(Intent.ACTION_MAIN);query.addCategory(Intent.CATEGORY_LAUNCHER);
        Set<String> matches=new HashSet<String>();
        for(ResolveInfo i:pm.queryIntentActivities(query,0)) {
            if("汽水音乐".equals(String.valueOf(i.loadLabel(pm)).trim()) || "汽水音乐".equals(String.valueOf(i.activityInfo.applicationInfo.loadLabel(pm)).trim())) matches.add(i.activityInfo.packageName);
        }
        if(matches.size()!=1) {toast(matches.isEmpty()?"未找到已安装的汽水音乐":"发现多个汽水音乐入口，请先保留一个入口");return;}
        String pkg=matches.iterator().next(); Intent intent=pm.getLaunchIntentForPackage(pkg);
        if(intent==null){toast("汽水音乐没有可打开的入口");return;}
        try {
            if(run){SodaController.start(WalletService.instance,pkg,n);}
            else if(WalletService.instance!=null){SodaController.stop();WalletService.instance.enterExtraTool();WalletService.instance.exitExtraTool();}
            startActivity(intent);
        } catch(Exception e){SodaController.stop();toast("打开失败："+e.getClass().getSimpleName());}
    }
    private void toast(String s){Toast.makeText(this,s,Toast.LENGTH_LONG).show();}
    private void diagnostics(){
        final String data=getSharedPreferences("soda_tool",0).getString("diagnostic","暂无汽水诊断。请在广告页面点击竖排浮窗的诊断。");
        new AlertDialog.Builder(this).setTitle("汽水音乐诊断").setMessage(data).setPositiveButton("关闭",null).setNeutralButton("导出",new DialogInterface.OnClickListener(){public void onClick(DialogInterface d,int w){Intent i=new Intent(Intent.ACTION_SEND);i.setType("text/plain");i.putExtra(Intent.EXTRA_TEXT,data);i.putExtra(Intent.EXTRA_SUBJECT,"soda-diagnostics.txt");startActivity(Intent.createChooser(i,"导出汽水诊断"));}}).show();
    }
}
