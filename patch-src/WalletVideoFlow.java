package cn.jim.wallethelper;

import java.util.*;
import java.util.regex.*;

/** Pure video-task decisions; no timers, device access, or reward API calls. */
public final class WalletVideoFlow {
  public static final int WAIT=0, DONE=1, FAIL=-1, SCROLL=2, CLICK=3, OPEN=4, DISMISS=5, NETWORK=6;
  public static final String WALLET="com.hihonor.wallet";
  public static final class Node {
    public String text,id; public int index,l,t,r,b; public boolean clickable;
    public Node(String text,String id,int index,int l,int t,int r,int b,boolean clickable) {
      this.text=clean(text); this.id=id==null?"":id; this.index=index;
      this.l=l;this.t=t;this.r=r;this.b=b;this.clickable=clickable;
    }
  }
  public static final class Frame {
    public String pkg="",countdown="",buttonKey="";
    public int count=-1,max=-1,button=-1,close=-1,savings=-1;
    public boolean ad,reward,popup,page;
  }
  public static Frame read(List<Node> nodes,String pkg,int width,int height) {
    Frame f=new Frame(); f.pkg=pkg;
    if(!WALLET.equals(pkg)) return f;
    Node title=null,counter=null; int titles=0;
    for(Node n:nodes) {
      if(n.r<=n.l || n.b<=n.t || n.t<0 || n.b>height) continue;
      if(n.id.equals(WALLET+":id/ad_reward_root")) f.ad=true;
      if(n.id.equals(WALLET+":id/ad_countdown")) {
        f.ad=true;f.countdown=n.text;
        f.reward=!n.text.contains("未") && !n.text.contains("秒后") && n.text.matches(".*(已获得奖励|奖励已发放|奖励已领取|已领取奖励|领取成功|领取完成|已完成).*");
      }
      if((n.id.equals(WALLET+":id/ad_video_close") || n.id.equals(WALLET+":id/honor_ads_reward_close_expanded"))
          && n.t<height*.2 && n.l>width*.7) f.close=n.index;
      if(n.text.equals("省钱") && n.t>height*.75) f.savings=n.index;
      if(n.text.contains("领会员时长") || n.text.equals("钱包任务")) f.page=true;
      if(n.text.equals("完整观看视频")) {title=n;titles++;}
      if((n.text.equals("继续做任务") || n.text.equals("今日已全部完成")) && n.l>width*.15 && n.r<width*.85 && n.t>height*.45) f.popup=true;
    }
    if(f.ad || titles!=1) return f;
    for(Node n:nodes) {
      if(n.t<title.b-8 || n.t>title.b+width*.2 || n.l<width*.1 || n.l>width*.65) continue;
      Matcher m=Pattern.compile("每日最多领取\\d+次[（(](\\d+)/(\\d+)[）)]").matcher(n.text);
      if(m.matches()) {if(counter!=null)return f;counter=n;f.count=Integer.parseInt(m.group(1));f.max=Integer.parseInt(m.group(2));}
    }
    // The wallet's floating bottom navigation can cover nodes still reported visible.
    // Scroll the whole card into the content area before accepting its counter/button.
    if(counter==null || counter.b>height*.90 || title.t<height*.08 || f.max<1 || f.max>10 || f.count<0 || f.count>f.max) {f.count=-1;return f;}
    Node button=null;
    for(Node n:nodes) {
      if(!n.clickable || n.l<width*.65 || n.r>width || n.r-n.l<width*.07 || n.r-n.l>width*.35
          || n.b>height*.90 || n.b-n.t<width*.035 || n.b-n.t>width*.16 || n.t<title.t-width*.04 || n.b>counter.b+width*.04) continue;
      if(button!=null && (button.l!=n.l || button.t!=n.t || button.r!=n.r || button.b!=n.b)) {f.button=-1;return f;}
      button=n; f.button=n.index; f.buttonKey=n.l+","+n.t+","+n.r+","+n.b;
    }
    return f;
  }
  static String clean(String s){return s==null?"":s.replaceAll("\\s+","");}

  public String message,summary="视频尚未完成";
  public int index=-1;
  private int state=0,baseline=-1,initial=-1,attempts,failures,scrolls,claims,opens;
  private long started=-1,stageAt,nextAt,progressAt;
  private String lastCountdown="";
  private boolean adSeen,timedOut,networkUsed,networkPending;
  private int stableIndex=-1; private long stableAt;
  private String stableKey="";

  /** 0 locate, 1 awaiting click outcome, 2 playing, 3 returning, 4 awaiting count. */
  public int step(Frame f,long now) {
    message=null;index=-1;
    if(started<0){started=now;stageAt=now;}
    if(now<nextAt)return WAIT;
    if(networkPending){networkPending=false;message="视频超时，申请关闭 Wi-Fi 后重试一次";return NETWORK;}
    if(now-started>600000)return fail("视频阶段超过10分钟，已停止");
    if(!WALLET.equals(f.pkg)) {
      if(opens<2 && now-stageAt>=1500){opens++;nextAt=now+2000;message="视频流程返回钱包核对状态";return OPEN;}
      if(now-stageAt>20000)return fail("视频流程未回到钱包，请处理当前页面后重试");
      return WAIT;
    }
    if(f.ad) {
      if(!adSeen){adSeen=true;state=2;stageAt=now;progressAt=now;lastCountdown=f.countdown;message="视频广告已打开，等待实际奖励完成提示";}
      if(!f.countdown.equals(lastCountdown) && !f.countdown.isEmpty()) {lastCountdown=f.countdown;progressAt=now;message="视频广告："+f.countdown;}
      if(f.reward) {
        if(f.close<0)return fail("广告奖励已就绪，但未识别到关闭按钮");
        state=3;stageAt=now;nextAt=now+1500;index=f.close;message="广告奖励已就绪，关闭后核对任务领取";return CLICK;
      }
      if(now-progressAt>=45000 || now-stageAt>=180000) {
        if(networkUsed)return fail("关闭 Wi-Fi 重试后仍超时，已停止");
        networkUsed=true;timedOut=true;state=3;stageAt=now;
        if(f.close<0){message="视频超时，申请关闭 Wi-Fi 后重试一次";return NETWORK;}
        networkPending=true;nextAt=now+1800;index=f.close;
        message="视频倒计时停滞或播放超时，退出后切换网络重试，不计为完成";return CLICK;
      }
      return WAIT;
    }
    if(f.popup) {nextAt=now+900;message="关闭视频奖励弹窗，核对实际领取次数";return DISMISS;}
    if(f.count>=0) {
      opens=0;
      if(initial<0){initial=f.count;baseline=f.count;message="视频任务当前次数 "+f.count+"/"+f.max;}
      if(f.count<baseline)return fail("视频次数发生回退，停止以避免重复领取");
      if(f.count>baseline) {
        message="视频领取已确认："+baseline+"→"+f.count+"/"+f.max;
        baseline=f.count;state=0;adSeen=false;timedOut=false;claims=0;failures=0;stableIndex=-1;
        nextAt=now+1000;
        if(f.count>=f.max)return done("视频今日已完成 "+f.count+"/"+f.max+"；本次确认领取 "+(f.count-initial)+" 次");
        return WAIT;
      }
      if(f.count>=f.max)return done("视频今日已完成 "+f.count+"/"+f.max+"；本次确认领取 "+(f.count-initial)+" 次");
      if(state==2 || state==3) {
        state=4;stageAt=now;stableIndex=-1;claims=0;
        if(timedOut){failures++;if(failures>1)return fail("视频连续两次未完成，已停止；当前 "+f.count+"/"+f.max);}
        message="已回视频任务卡片，核对并领取";
      }
      if(state==1 && now-stageAt<6000)return WAIT;
      if(state==1 && now-stageAt>=6000){failures++;state=0;stableIndex=-1;if(failures>1)return fail("视频按钮连续两次无结果，已停止");}
      if(state==4 && claims>0 && now-stageAt<8000)return WAIT;
      if(state==4 && claims>=2 && now-stageAt>=8000)return fail("视频领取后次数未增加，已停止");
      if(f.button<0) {if(now-stageAt>15000)return fail("视频卡片按钮不可确认，已停止");return WAIT;}
      // Two observations before tapping a moving web button.
      if(stableIndex!=f.button || !stableKey.equals(f.buttonKey)){stableIndex=f.button;stableKey=f.buttonKey;stableAt=now;return WAIT;}
      if(now-stableAt<700)return WAIT;
      if(state==0 && ++attempts>f.max+2)return fail("视频启动次数已达重试上限");
      index=f.button;nextAt=now+1500;stageAt=now;adSeen=false;
      if(state==4){claims++;message="点击视频卡片领取，等待次数确认";}
      else {state=1;adSeen=false;timedOut=false;message="点击视频任务卡片，等待广告或已有奖励";}
      return CLICK;
    }
    stableIndex=-1;
    if(state!=0 && now-stageAt<10000)return WAIT;
    if(f.savings>=0 && !f.page){index=f.savings;nextAt=now+1000;return CLICK;}
    if(f.page) {
      if(++scrolls>14)return fail("未找到可核对次数的视频任务卡片");
      nextAt=now+1100;message="定位观看视频任务（"+scrolls+"/14）";return SCROLL;
    }
    if(now-stageAt>15000)return fail("未找到钱包省钱任务页，已停止");
    return WAIT;
  }
  public void retryNetwork(long now){
    state=0;adSeen=false;timedOut=false;networkPending=false;stageAt=now;
    nextAt=now+2000;scrolls=0;opens=0;stableIndex=-1;claims=0;
  }
  private int done(String s){summary=s;message=s;return DONE;}
  private int fail(String s){summary=s;message=s;return FAIL;}
}
