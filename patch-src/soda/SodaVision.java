package cn.jim.wallethelper.tools.soda;

import android.accessibilityservice.AccessibilityService;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.hardware.HardwareBuffer;
import android.os.*;
import android.view.accessibility.AccessibilityNodeInfo;
import java.io.InputStream;
import java.util.concurrent.*;

/** Local screenshot processing. Images are neither written to disk nor uploaded. */
public final class SodaVision {
    public interface Listener { void ready(Result result,String error); }
    public static final class Result {
        public final HeaderVision.Result header;public final PopupVision.Result popup;public final LiveVision.Result live;
        public final String sourcePackage;public final int sourceWindow;
        public final int width,height;public final long captured;
        Result(HeaderVision.Result h,PopupVision.Result p,LiveVision.Result l,int w,int height,long when,String pkg,int window){header=h;popup=p;live=l;width=w;this.height=height;captured=when;sourcePackage=pkg;sourceWindow=window;}
        public float x(HeaderVision.Match m){return m.centerX()*width/342f;}
        public float y(HeaderVision.Match m){return m.centerY()*width/342f;}
        public String describe(){return "sourcePackage="+sourcePackage+" sourceWindow="+sourceWindow+" requestedAtMs="+captured+" live="+live.recognized+" liveCloseScore="+live.closeScore+" liveContextScore="+live.contextScore+" headerSuccess="+header.success+" waiting="+header.waiting+" successScore="+header.successScore+" waitScore="+header.waitScore+" popup="+popup.continuation+" claimLocated="+(popup.claim!=null)+" exitLocated="+(popup.exit!=null)+" claimScore="+popup.claimScore+" freeScore="+popup.freeScore+" againScore="+popup.againScore;}
    }
    private final HeaderVision header;private final PopupVision popup;private final LiveVision live;
    private final Handler main=new Handler(Looper.getMainLooper());
    private final ExecutorService worker=Executors.newSingleThreadExecutor();
    private boolean busy;private volatile boolean closed;
    public SodaVision(Context c)throws Exception {header=new HeaderVision(t(c,"success"),t(c,"waiting"),t(c,"close"));popup=new PopupVision(t(c,"claim"),t(c,"free"),t(c,"again"),t(c,"exit"),t(c,"claim-coin"),t(c,"prompt-coin"),t(c,"exit-coin"));live=new LiveVision(t(c,"live-close"),t(c,"live-more"));}
    private static HeaderVision.Template t(Context c,String n)throws Exception{
        InputStream in=c.getAssets().open("soda/"+n+".png");Bitmap b=null;
        try{b=BitmapFactory.decodeStream(in);int w=b.getWidth(),h=b.getHeight();int[] p=new int[w*h];b.getPixels(p,0,w,0,0,w,h);return new HeaderVision.Template(w,h,p);}
        finally{in.close();if(b!=null)b.recycle();}
    }
    public void close(){closed=true;worker.shutdown();main.removeCallbacksAndMessages(null);}
    private void finish(final Listener listener,final Result result,final String error){main.post(new Runnable(){public void run(){busy=false;if(!closed)listener.ready(result,error);}});}
    public void request(final AccessibilityService service,final Listener listener){
        if(closed||busy)return;
        if(Build.VERSION.SDK_INT<30){listener.ready(null,"截图识别需要Android 11及以上");return;}
        AccessibilityNodeInfo root=service.getRootInActiveWindow();
        if(root==null){listener.ready(null,"截图前无法确认应用窗口");return;}
        final String sourcePackage=String.valueOf(root.getPackageName());final int sourceWindow=root.getWindowId();root.recycle();
        busy=true;final long when=SystemClock.elapsedRealtime();
        try{service.takeScreenshot(0,service.getMainExecutor(),new AccessibilityService.TakeScreenshotCallback(){
            public void onFailure(int error){finish(listener,null,"截图失败("+error+")：请关闭再开启无障碍；受保护页面无法截图");}
            public void onSuccess(final AccessibilityService.ScreenshotResult result){
                final HardwareBuffer buffer=result.getHardwareBuffer();
                if(closed){buffer.close();busy=false;return;}
                AccessibilityNodeInfo after=service.getRootInActiveWindow();
                boolean same=after!=null&&sourcePackage.equals(String.valueOf(after.getPackageName()))&&sourceWindow==after.getWindowId();
                if(after!=null)after.recycle();
                if(!same){buffer.close();finish(listener,null,"截图期间应用窗口变化，本帧已丢弃");return;}
                try{worker.execute(new Runnable(){public void run(){
                    Bitmap hardware=null,software=null,small=null;
                    try{
                        hardware=Bitmap.wrapHardwareBuffer(buffer,result.getColorSpace());
                        if(hardware==null)throw new IllegalStateException("empty bitmap");
                        software=hardware.copy(Bitmap.Config.ARGB_8888,false);
                        int w=software.getWidth(),h=software.getHeight();
                        if(w>=h)throw new IllegalStateException("请使用竖屏");
                        int sh=Math.round(h*342f/w);small=Bitmap.createScaledBitmap(software,342,sh,true);
                        int[] pixels=new int[342*sh];small.getPixels(pixels,0,342,0,0,342,sh);
                        int hh=Math.min(sh,Math.min(180,Math.round(sh*.18f)));int[] top=new int[342*hh];System.arraycopy(pixels,0,top,0,top.length);
                        HeaderVision.Result hr=header.detect(top,342,hh);
                        PopupVision.Result pr=popup.detect(pixels,342,sh);
                        LiveVision.Result lr=live.detect(top,342,hh);
                        finish(listener,new Result(hr,pr,lr,w,h,when,sourcePackage,sourceWindow),null);
                    }catch(Exception e){finish(listener,null,"截图识别失败："+e.getMessage());}
                    finally{if(small!=null&&small!=software)small.recycle();if(software!=null)software.recycle();if(hardware!=null)hardware.recycle();buffer.close();}
                }});}catch(RejectedExecutionException e){buffer.close();finish(listener,null,"识别已停止");}
            }
        });}catch(Exception e){finish(listener,null,"截图不可用，请关闭再开启无障碍服务");}
    }
}
