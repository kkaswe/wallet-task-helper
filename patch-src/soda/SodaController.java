package cn.jim.wallethelper.tools.soda;

import android.app.KeyguardManager;
import android.content.*;
import android.graphics.*;
import android.os.*;
import android.view.*;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.*;
import java.util.*;
import cn.jim.wallethelper.WalletService;

/** Own scheduler, state and log. Only the small service bridge is shared with wallet. */
public final class SodaController {
    private static SodaController current;
    private final WalletService service;
    private final String pkg;
    private final Handler handler=new Handler();
    private final AdSession session;
    private final StringBuilder log=new StringBuilder();
    private LinearLayout panel;
    private TextView status;
    private Button pause;
    private WindowManager wm;
    private WindowManager.LayoutParams params;
    private boolean paused, disposed;
    private long started=SystemClock.elapsedRealtime(), lastReadable=started;
    private int closeTries, benefitTries;
    private boolean adContext;
    private long lastAd;
    private String closePage="";
    private long continuousAdSince;
    private SodaVision vision;
    private SodaVision.Result visual;
    private long lastVisualRequest;
    private boolean visualBusy;
    private int visionEpoch;
    private String visualKey="",visualError="",visualDescription="";
    private String lastNote="";
    private final Runnable ticker=new Runnable(){public void run(){
        if(disposed)return;
        if(!paused)try{step();}catch(Exception e){pauseWith("识别异常，请导出汽水诊断："+e.getClass().getSimpleName());}
        if(!disposed)handler.postDelayed(this,500);
    }};
    private SodaController(WalletService s,String p,int n){service=s;pkg=p;session=new AdSession(n,started);}
    public static void start(WalletService service,String pkg,int count) {
        stop();if(count<=0)return;service.enterExtraTool();
        SodaController c=new SodaController(service,pkg,count);current=c;
        try {c.overlay();c.vision=new SodaVision(service);c.note("已启动：请进入免费听广告页");c.handler.postDelayed(c.ticker,1800);}catch(Exception e){stop();throw new IllegalStateException("无法显示汽水浮窗",e);}
    }
    public static void stop() {
        SodaController c=current;current=null;if(c==null)return;
        c.disposed=true;c.visionEpoch++;if(c.vision!=null)c.vision.close();c.handler.removeCallbacksAndMessages(null);
        if(c.panel!=null)try{c.wm.removeView(c.panel);}catch(Exception ignored){}
        c.service.exitExtraTool();
    }
    private int dp(int n){return (int)(n*service.getResources().getDisplayMetrics().density+.5f);}
    private void overlay(){
        wm=(WindowManager)service.getSystemService(Context.WINDOW_SERVICE);
        panel=new LinearLayout(service);panel.setOrientation(1);panel.setPadding(dp(5),dp(5),dp(5),dp(5));panel.setBackgroundColor(0xee243342);
        status=new TextView(service);status.setTextColor(Color.WHITE);status.setTextSize(13);status.setMaxLines(6);panel.addView(status,new LinearLayout.LayoutParams(-1,-2));
        params=new WindowManager.LayoutParams(dp(116),-2,2032,WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE|WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL|WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON,PixelFormat.TRANSLUCENT);
        params.gravity=Gravity.TOP|Gravity.LEFT;params.x=dp(8);params.y=dp(120);
        status.setOnTouchListener(new View.OnTouchListener(){float x,y;int px,py;public boolean onTouch(View v,MotionEvent e){
            if(e.getAction()==MotionEvent.ACTION_DOWN){x=e.getRawX();y=e.getRawY();px=params.x;py=params.y;return true;}
            if(e.getAction()==MotionEvent.ACTION_MOVE){params.x=Math.max(0,px+(int)(e.getRawX()-x));params.y=Math.max(0,py+(int)(e.getRawY()-y));wm.updateViewLayout(panel,params);return true;}return true;
        }});
        pause=button("暂停",new Runnable(){public void run(){paused=!paused;invalidateVision();pause.setText(paused?"继续":"暂停");keepAwake(!paused);session.lastProgress=SystemClock.elapsedRealtime();lastReadable=session.lastProgress;note(paused?"已暂停":"继续识别广告");}});
        button("停止",new Runnable(){public void run(){stop();}});
        button("诊断",new Runnable(){public void run(){diagnostic();}});
        button("工具页",new Runnable(){public void run(){pauseWith("已暂停，返回工具页");Intent i=new Intent(service,SodaToolsActivity.class);i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);service.startActivity(i);}});
        wm.addView(panel,params);
    }
    private Button button(String s,final Runnable r){Button b=new Button(service);b.setText(s);b.setTextSize(14);b.setPadding(0,0,0,0);panel.addView(b,new LinearLayout.LayoutParams(-1,dp(44)));b.setOnClickListener(new View.OnClickListener(){public void onClick(View v){r.run();}});return b;}
    private void keepAwake(boolean on){if(on)params.flags|=WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON;else params.flags&=~WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON;wm.updateViewLayout(panel,params);}
    private void note(String s){status.setText("汽水 "+session.completed+"/"+session.target+"\n"+s);if(!s.equals(lastNote)){lastNote=s;log.append(SystemClock.elapsedRealtime()-started).append("ms ").append(s).append('\n');if(log.length()>18000)log.delete(0,6000);}}
    private void pauseWith(String s){paused=true;invalidateVision();pause.setText("继续");keepAwake(false);note(s);}
    private static String string(CharSequence s){return s==null?"":s.toString();}
    private static final class Screen {
        final ArrayList<AccessibilityNodeInfo> nodes=new ArrayList<AccessibilityNodeInfo>();
        String text="",header="",packageName="";int width,height,windowId=-1;
        void release(){for(AccessibilityNodeInfo n:nodes)n.recycle();}
    }
    private Screen screen(){
        Screen s=new Screen();AccessibilityNodeInfo root=service.getRootInActiveWindow();if(root==null)return s;
        s.packageName=string(root.getPackageName());s.windowId=root.getWindowId();Rect r=new Rect();root.getBoundsInScreen(r);s.width=Math.max(r.right,service.getResources().getDisplayMetrics().widthPixels);s.height=Math.max(r.bottom,service.getResources().getDisplayMetrics().heightPixels);
        walk(root,s,0);StringBuilder all=new StringBuilder(),header=new StringBuilder();
        for(AccessibilityNodeInfo n:s.nodes){if(!n.isVisibleToUser())continue;String t=string(n.getText()),d=string(n.getContentDescription());String both=t+(t.equals(d)?"":" "+d);if(both.trim().isEmpty()||both.length()>4000)continue;all.append(both).append('\n');n.getBoundsInScreen(r);if(r.top>=0&&r.bottom<=s.height*.16&&r.left>=s.width*.45)header.append(both).append('\n');}
        s.text=all.toString();s.header=header.toString();return s;
    }
    private void walk(AccessibilityNodeInfo n,Screen s,int depth){if(s.nodes.size()>=500||depth>35){n.recycle();return;}s.nodes.add(n);for(int i=0;i<n.getChildCount();i++){AccessibilityNodeInfo c=n.getChild(i);if(c!=null)walk(c,s,depth+1);}}
    private void step(){
        long now=SystemClock.elapsedRealtime();if(now<session.nextAction)return;
        KeyguardManager k=(KeyguardManager)service.getSystemService(Context.KEYGUARD_SERVICE);if(k!=null&&k.inKeyguardRestrictedInputMode()){pauseWith("屏幕已锁定，解锁后继续");return;}
        Screen s=screen();try {
            boolean inSoda=pkg.equals(s.packageName);
            if(!inSoda){
                if(service.getPackageName().equals(s.packageName)){note("等待回到汽水音乐");return;}
                if(!AdPageRules.externalLiveAllowed(adContext,lastAd,now,s.text)){
                    if(now-started<10000){note("等待汽水音乐打开");return;}
                    pauseWith("当前不在汽水广告或关联直播页，请返回后继续");return;
                }
            }
            SodaVision.Result frame=null;
            if(inSoda&&AdSession.countdown(s.header)<0)frame=readVision(s,now);
            if(frame!=null&&frame.header.waiting){
                adContext=true;lastAd=now;
                if(continuousAdSince==0)continuousAdSince=now;
                if(now-continuousAdSince>600000){pauseWith("图像倒计时长时间未结束，请检查广告");return;}
                session.observeCountdown(1,now);
                note("图像识别到倒计时，等待结束");return;
            }
            if(frame!=null&&frame.header.success)s.header+="\n领取成功";
            boolean visualPopup=frame!=null&&frame.popup.continuation;
            AccessibilityNodeInfo close=findTopClose(s);
            if(s.text.trim().isEmpty()&&close==null&&!visualPopup&&!(frame!=null&&(frame.header.success||frame.live.recognized))){if(now-lastReadable>30000)pauseWith("页面文字不可读，请点诊断");else note("等待广告文字加载");return;}
            lastReadable=now;
            int seconds=AdSession.countdown(s.header);
            if(seconds>=0){
                adContext=true;lastAd=now;
                if(continuousAdSince==0)continuousAdSince=now;
                if(now-continuousAdSince>600000){pauseWith("广告倒计时长时间未结束，请检查网络");return;}
                if(session.awaitingNew){closeTries=0;benefitTries=0;closePage="";}
                session.observeCountdown(seconds,now);
                note("广告倒计时 "+seconds+" 秒");if(seconds>0)return;
            }
            boolean upsell=AdSession.upsell(s.text)||visualPopup;
            if(close!=null&&!upsell&&!AdPageRules.dayBenefitHint(s.text)&&!AdSession.success(s.header)){
                session.observeTimerFreePage(now);adContext=true;lastAd=now;
            }
            boolean reward=session.credit(s.header,now);
            if(reward){continuousAdSince=0;adContext=true;lastAd=now;}
            // A direct days-benefit claim is completed even at the requested ad limit.
            // A "watch one more" offer is separate and still obeys that limit.
            if(inSoda&&session.credited&&!session.awaitingNew&&AdPageRules.dayBenefitHint(s.text)){
                if(benefitTries>=2){pauseWith("福利领取页面未变化，请检查后继续");return;}
                if(clickBenefit(s)){benefitTries++;session.nextAction=now+1800;session.lastProgress=now;note("领取天数福利");return;}
                note("未识别天数福利领取按钮，请点诊断");timeout(now);return;
            }
            if(inSoda&&upsell){
                if(!reward&&!session.credited){note("未确认本条奖励，等待领取成功");timeout(now);return;}
                if(session.awaitingNew){note("等待下一条广告加载");timeout(now);return;}
                if(session.finished()){
                    if(benefitTries>=2){pauseWith("已达到次数，请手动退出弹窗并停止");return;}
                    if(clickExact(s,"坚持退出")||(visualPopup&&tapVisual(frame,frame.popup.exit,s,now))){benefitTries++;note("已达到次数，正在退出弹窗");session.nextAction=now+1500;}
                    else pauseWith("奖励已确认，请手动退出弹窗并停止");return;
                }
                if(clickExact(s,"领取奖励")||(visualPopup&&tapVisual(frame,frame.popup.claim,s,now))){beginNext(now);note("领取续看福利，准备下一条广告");return;}
                note("未识别弹窗领取按钮，请点诊断");timeout(now);return;
            }
            if(frame!=null&&frame.live.recognized&&!upsell&&!frame.header.waiting&&seconds<=0&&inSoda){
                String key="visual-live:"+s.packageName;
                if(!key.equals(closePage)){closePage=key;closeTries=0;}
                if(closeTries>=2){pauseWith("直播关闭后页面未变化，请点诊断");return;}
                if(tapVisual(frame,frame.live.close,s,now)){
                    session.observeTimerFreePage(now);closeTries++;session.nextAction=now+1800;session.lastProgress=now;lastAd=now;
                    adContext=true;note("图像识别直播右上角×，点击关闭");return;
                }
            }
            if(frame!=null&&frame.header.success&&frame.header.close!=null&&close==null&&!upsell){
                String key="visual-header:"+s.packageName;
                if(!key.equals(closePage)){closePage=key;closeTries=0;}
                if(closeTries>=2){pauseWith("图像关闭后页面未变化，请点诊断");return;}
                if(tapVisual(frame,frame.header.close,s,now)){closeTries++;session.nextAction=now+1800;session.lastProgress=now;note("图像识别领取成功，点击右上角关闭");return;}
            }
            // If header text is hidden, await a fresh visual check before using a node-only X.
            if(inSoda&&AdSession.countdown(s.header)<0&&!AdSession.success(s.header)&&frame==null){
                note(visualError.isEmpty()?"正在识别广告画面":visualError);timeout(now);return;
            }
            if(close!=null&&AdPageRules.closeReady(s.header)){
                Rect bounds=new Rect();close.getBoundsInScreen(bounds);
                String key=s.packageName+"|"+s.header+"|"+bounds.toString();
                if(!key.equals(closePage)){closePage=key;closeTries=0;}
                if(closeTries>=2){pauseWith("关闭后页面未变化，请手动关闭后继续");return;}
                if(click(close,s)){closeTries++;session.nextAction=now+1800;session.lastProgress=now;note(reward?"领取成功，点击右上角关闭":(AdPageRules.live(s.text)?"直播无倒计时，点击右上角关闭":"无倒计时，点击右上角关闭"));return;}
                pauseWith("关闭按钮被遮挡或不可点，请移动浮窗后继续");return;
            }
            if(!inSoda){note("等待直播右上角关闭按钮");timeout(now);return;}
            if(reward){
                note("领取成功，等待关闭按钮或福利弹窗");timeout(now);return;
            }
            // A credit stays attached to its ad until an explicit new countdown is observed.
            if(session.credited&&!session.awaitingNew&&!AdSession.success(s.header)&&seconds<0){
                if(session.finished()){pauseWith("本次已完成；点击停止结束");return;}
                if(clickEntry(s)){beginNext(now);note("打开下一条广告");return;}
                note("请手动进入下一条免费听广告");timeout(now);return;
            }
            if(!session.awaitingNew&&seconds<0&&clickEntry(s)){beginNext(now);note("已点击看广告，等待加载");return;}
            note(session.awaitingNew?"等待新广告倒计时":"请进入广告页；等待领取成功");timeout(now);
        }finally{s.release();}
    }
    private void invalidateVision(){visual=null;visionEpoch++;}
    private SodaVision.Result readVision(final Screen s,long now){
        final String key=VisualContext.key(s.packageName,s.windowId,s.width,s.height,AdSession.upsell(s.text),AdPageRules.dayBenefitHint(s.text));
        if(!key.equals(visualKey)){visualKey=key;invalidateVision();}
        if(!visualBusy&&now-lastVisualRequest>=1600&&vision!=null){
            visualBusy=true;lastVisualRequest=now;final int epoch=visionEpoch;
            vision.request(service,new SodaVision.Listener(){public void ready(SodaVision.Result result,String error){
                visualBusy=false;
                if(disposed||paused||epoch!=visionEpoch||!key.equals(visualKey))return;
                if(result!=null&&(!s.packageName.equals(result.sourcePackage)||s.windowId!=result.sourceWindow)){
                    visual=null;visualError="识别窗口已变化，等待新截图";visualDescription=result.describe()+" discarded=true";return;
                }
                visual=result;visualError=error==null?"":error;
                visualDescription=result==null?visualError:result.describe();
            }});
        }
        return visual!=null&&s.packageName.equals(visual.sourcePackage)&&s.windowId==visual.sourceWindow&&VisualContext.usable(visual.captured,now,visual.width,visual.height,s.width,s.height)?visual:null;
    }
    private boolean tapVisual(SodaVision.Result frame,HeaderVision.Match match,Screen s,long now){
        if(match==null||frame==null||!VisualContext.usable(frame.captured,now,frame.width,frame.height,s.width,s.height)||!pkg.equals(s.packageName)||!s.packageName.equals(frame.sourcePackage)||s.windowId!=frame.sourceWindow||paused||disposed)return false;
        AccessibilityNodeInfo active=service.getRootInActiveWindow();
        boolean same=active!=null&&frame.sourcePackage.equals(string(active.getPackageName()))&&frame.sourceWindow==active.getWindowId();
        if(active!=null)active.recycle();
        if(!same){invalidateVision();return false;}
        float x=frame.x(match),y=frame.y(match);
        int[] pos=new int[2];panel.getLocationOnScreen(pos);
        Rect overlay=new Rect(pos[0],pos[1],pos[0]+panel.getWidth(),pos[1]+panel.getHeight());
        if(overlay.contains((int)x,(int)y)){note("请移动浮窗，避开识别到的按钮");return false;}
        boolean sent=service.extraTap(x,y);if(sent)invalidateVision();return sent;
    }
    private void beginNext(long now){session.next(now);closeTries=0;benefitTries=0;closePage="";adContext=true;lastAd=now;continuousAdSince=0;}
    private void timeout(long now){if(now-session.lastProgress>180000)pauseWith("等待超时，请检查页面或导出汽水诊断");}
    private boolean clickExact(Screen s,String label){
        AccessibilityNodeInfo match=null;
        for(AccessibilityNodeInfo n:s.nodes){
            if((AdSession.clean(string(n.getText())).equals(label)||AdSession.clean(string(n.getContentDescription())).equals(label))&&n.isVisibleToUser()&&insideOffer(n,s,false)){
                if(match!=null)return false; // Ambiguous reward CTA: require user diagnosis.
                match=n;
            }
        }
        return match!=null&&click(match,s);
    }
    private boolean insideOffer(AccessibilityNodeInfo node,Screen screen,boolean days){
        AccessibilityNodeInfo parent=node.getParent();
        for(int depth=0;parent!=null&&depth<6;depth++){
            Rect r=new Rect();parent.getBoundsInScreen(r);
            Screen subtree=new Screen();walk(AccessibilityNodeInfo.obtain(parent),subtree,0);
            StringBuilder text=new StringBuilder();for(AccessibilityNodeInfo n:subtree.nodes)if(n.isVisibleToUser())text.append(string(n.getText())).append(' ').append(string(n.getContentDescription())).append(' ');
            subtree.release();
            boolean offer=r.height()<screen.height*.8&&r.width()>screen.width*.4&&(days?AdPageRules.dayBenefit(text.toString()):AdSession.upsell(text.toString()));
            if(offer){parent.recycle();return true;}
            AccessibilityNodeInfo next=parent.getParent();parent.recycle();parent=next;
        }
        if(parent!=null)parent.recycle();return false;
    }
    private boolean clickEntry(Screen s){for(AccessibilityNodeInfo n:s.nodes){if(AdSession.entry(string(n.getText()))||AdSession.entry(string(n.getContentDescription())))if(click(n,s))return true;}return false;}
    private boolean click(AccessibilityNodeInfo n,Screen s){
        if(!n.isVisibleToUser()||!n.isEnabled())return false;
        Rect r=new Rect();n.getBoundsInScreen(r);if(r.isEmpty()||r.left<0||r.top<0||r.right>s.width||r.bottom>s.height||r.height()>s.height*.2||r.width()>s.width*.95)return false;
        int[] pos=new int[2];panel.getLocationOnScreen(pos);Rect overlay=new Rect(pos[0],pos[1],pos[0]+panel.getWidth(),pos[1]+panel.getHeight());if(overlay.contains(r.centerX(),r.centerY()))return false;
        if(n.isClickable()&&n.performAction(AccessibilityNodeInfo.ACTION_CLICK)){invalidateVision();return true;}
        boolean sent=service.extraTap(r.centerX(),r.centerY());if(sent)invalidateVision();return sent;
    }
    private boolean clickBenefit(Screen s){
        AccessibilityNodeInfo match=null;
        for(AccessibilityNodeInfo n:s.nodes){
            if((AdPageRules.claimLabel(string(n.getText()))||AdPageRules.claimLabel(string(n.getContentDescription())))&&n.isVisibleToUser()&&insideOffer(n,s,true)){
                if(match!=null)return false;
                match=n;
            }
        }
        return match!=null&&click(match,s);
    }
    private static String viewId(AccessibilityNodeInfo n){
        try{return string((CharSequence)n.getClass().getMethod("getViewIdResourceName").invoke(n));}
        catch(Exception ignored){return "";}
    }
    private AccessibilityNodeInfo findTopClose(Screen s){
        Rect r=new Rect();AccessibilityNodeInfo match=null;
        for(AccessibilityNodeInfo n:s.nodes){
            n.getBoundsInScreen(r);
            if(n.isVisibleToUser()&&n.isEnabled()&&r.left>s.width*.7&&r.top>=0&&r.bottom<s.height*.18&&r.width()<s.width*.25&&r.height()<s.height*.1
              &&(AdPageRules.closeLabel(string(n.getText()))||AdPageRules.closeLabel(string(n.getContentDescription()))||AdPageRules.closeId(viewId(n)))){
                if(match==null)match=n;
                else {Rect old=new Rect();match.getBoundsInScreen(old);if(!old.equals(r))return null;}
            }
        }
        return match;
    }
    private void diagnostic(){Screen s=screen();try{StringBuilder b=new StringBuilder("汽水音乐工具 0.1.23\n");b.append("package=").append(s.packageName).append(" nodeWindow=").append(s.windowId).append(" nodeAtMs=").append(SystemClock.elapsedRealtime()).append(" target=").append(pkg).append("\nprogress=").append(session.completed).append('/').append(session.target).append(" credited=").append(session.credited).append(" awaitingNew=").append(session.awaitingNew).append("\n").append(log).append("\n图像诊断：").append(visualDescription).append("\n当前图像可用=").append(visual!=null&&s.packageName.equals(visual.sourcePackage)&&s.windowId==visual.sourceWindow&&VisualContext.usable(visual.captured,SystemClock.elapsedRealtime(),visual.width,visual.height,s.width,s.height)).append("（false表示历史图像结果，不代表当前节点页面）\n当前可见节点\n");Rect r=new Rect();for(AccessibilityNodeInfo n:s.nodes){if(!n.isVisibleToUser())continue;n.getBoundsInScreen(r);b.append(r).append(" text=").append(string(n.getText())).append(" desc=").append(string(n.getContentDescription())).append(" id=").append(viewId(n)).append("\n");if(b.length()>65000)break;}service.getSharedPreferences("soda_tool",0).edit().putString("diagnostic",b.toString()).apply();note("诊断已保存，工具页可导出");}finally{s.release();}}
}
