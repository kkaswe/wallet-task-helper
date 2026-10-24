package cn.jim.wallethelper;

import android.accessibilityservice.AccessibilityService;
import android.graphics.Rect;
import android.os.SystemClock;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.List;

/** One bounded wallet recent-task close, shared tool entry relaunch, and second task-page pass. */
public final class WalletRestart {
  public String message;
  public float[] swipePath;
  private int stage;
  private long started;
  private long lastMove;
  private int moves;
  private boolean relaunched;
  private long lastTrace;
  private float[] stableCard;
  private long stableSince;
  private final String walletPackage, walletLabel, homePackage;
  private final int width, height;

  public WalletRestart(String walletPackage, String walletLabel, String homePackage, int width, int height) {
    this.walletPackage=walletPackage; this.walletLabel=walletLabel; this.homePackage=homePackage;
    this.width=width; this.height=height;
  }

  public boolean begin(AccessibilityService service) {
    if(walletPackage==null || walletLabel==null || homePackage==null || width<=0 || height<=0) {
      message="无法确认钱包身份，未执行自动重开"; return false;
    }
    if(!service.performGlobalAction(AccessibilityService.GLOBAL_ACTION_RECENTS)) {
      message="无法打开最近任务，未执行自动重开"; return false;
    }
    stage=1; started=SystemClock.uptimeMillis();
    message="第一轮结束，打开最近任务定位荣耀钱包卡片";
    return true;
  }

  public String trace(String foreground) {
    long now=SystemClock.uptimeMillis();
    if(now-lastTrace<1000) return null;
    lastTrace=now;
    return "重开检查阶段="+stage+"，前台="+foreground+"，阶段等待="+(now-started)+"ms";
  }

  /** 0 = waiting, 1 = task page ready, 2 = close card, 3 = scroll carousel, -1 = stop. */
  public int step(AccessibilityService service, List<AccessibilityNodeInfo> nodes, String foreground, View overlay) {
    message=null;
    long now=SystemClock.uptimeMillis();
    if(stage==1) {
      if(!homePackage.equals(foreground)) return timedOut(now,12000,"未进入最近任务界面，自动重开已暂停");
      if(now-started<1400) return 0;
      if(now-lastMove<700) return 0;
      float[] card=walletCard(nodes,walletLabel,width,height);
      if(card==null) {
        stableCard=null;
        if(moves>=4 || now-started>=12000) {
          message="无法唯一识别荣耀钱包卡片，未划动其他应用"; return -1;
        }
        // Recent tasks can open with the wallet card partly outside the screen.
        // A horizontal gesture moves the carousel, without dismissing a card.
        int titleX=walletTitleX(nodes,walletLabel);
        boolean left=titleX<0 || titleX>width/2;
        if(titleX<0 && (moves&1)==1) left=false;
        float y=height*.55f;
        swipePath=left?new float[]{width*.76f,y,width*.28f,y}
                      :new float[]{width*.28f,y,width*.76f,y};
        if(overlay!=null && overlay.isShown()) {
          int[] xy=new int[2]; overlay.getLocationOnScreen(xy);
          if(ReturnRecovery.blocked(swipePath,xy[0],xy[1],overlay.getWidth(),overlay.getHeight())) {
            message="控制条挡住最近任务横向定位手势"; return -1;
          }
        }
        moves++; lastMove=now;
        message="横向定位荣耀钱包卡片（"+moves+"/4）";
        return 3;
      }
      if(stableCard==null || moved(stableCard,card)) {
        stableCard=card; stableSince=now; return 0;
      }
      if(now-stableSince<700) return 0;
      if(overlay!=null && overlay.isShown()) {
        int[] xy=new int[2]; overlay.getLocationOnScreen(xy);
        if(ReturnRecovery.blocked(card,xy[0],xy[1],overlay.getWidth(),overlay.getHeight())) {
          message="控制条挡住钱包卡片，自动重开已暂停"; return -1;
        }
      }
      swipePath=card; stage=2; started=now;
      message="已确认钱包卡片无遮挡且位置稳定，移除目标 @ "+card[0]+","+card[1]; return 2;
    }
    if(stage==2) {
      if(now-started<900) return 0;
      if(!homePackage.equals(foreground)) return timedOut(now,5000,"最近任务界面已变化，无法确认钱包卡片移除");
      if(walletTitleX(nodes,walletLabel)>=0) {
        message="荣耀钱包卡片仍在，自动重开已暂停"; return -1;
      }
      if(!launchViaTool(service)) return -1;
      stage=3; started=now; message="已移除钱包卡片，直接调用助手的钱包入口（"+WalletEntry.lastRoute+"）"; return 0;
    }
    if(stage==3) {
      if(!walletPackage.equals(foreground)) {
        if(!relaunched && now-started>=3000) {
          relaunched=true;
          if(!service.performGlobalAction(AccessibilityService.GLOBAL_ACTION_HOME)) {
            message="无法离开最近任务界面，自动重开已暂停"; return -1;
          }
          stage=6; started=now; message="钱包未到前台，返回桌面准备重试助手入口"; return 0;
        }
        return timedOut(now,12000,"通过助手入口重开后未回到荣耀钱包");
      }
      if(taskPage(nodes)) { stage=5; message="钱包任务页已重新打开，开始第二轮"; return 1; }
      if(clickSavings(nodes,height)) {
        stage=4; started=now; message="已进入省钱页，等待任务列表"; return 0;
      }
      return timedOut(now,12000,"重新启动后未找到省钱入口");
    }
    if(stage==4) {
      if(walletPackage.equals(foreground) && taskPage(nodes)) {
        stage=5; message="钱包任务页已重新打开，开始第二轮"; return 1;
      }
      return timedOut(now,10000,"省钱任务列表未出现，自动复跑已暂停");
    }
    if(stage==6) {
      if(walletPackage.equals(foreground)) { stage=3; started=now; return 0; }
      if(now-started<1000) return 0;
      if(!launchViaTool(service)) return -1;
      stage=3; started=now; message="已从桌面重试调用助手的钱包入口"; return 0;
    }
    message="自动重开状态异常"; return -1;
  }

  private boolean launchViaTool(AccessibilityService service) {
    String failure=WalletEntry.open(service);
    if(failure==null) return true;
    message=failure; return false;
  }

  private int timedOut(long now,long limit,String failure) {
    if(now-started<limit) return 0;
    message=failure; return -1;
  }

  public static boolean taskPage(List<AccessibilityNodeInfo> nodes) {
    for(AccessibilityNodeInfo n:nodes) {
      CharSequence text=n.getText();
      if(text==null) continue;
      String s=text.toString();
      if(s.contains("连续2天体验应用") || s.contains("下载并体验应用15秒") || s.contains("浏览应用10秒")) return true;
    }
    return false;
  }

  public static boolean clickSavings(List<AccessibilityNodeInfo> nodes,int height) {
    for(AccessibilityNodeInfo n:nodes) {
      CharSequence text=n.getText();
      if(text==null || !"省钱".equals(text.toString())) continue;
      Rect bounds=new Rect(); n.getBoundsInScreen(bounds);
      if(bounds.centerY()<height*.75f) continue;
      AccessibilityNodeInfo current=n;
      for(int depth=0;current!=null && depth<4;depth++) {
        boolean clicked=current.isEnabled() && current.isClickable()
          && current.performAction(AccessibilityNodeInfo.ACTION_CLICK);
        AccessibilityNodeInfo parent=clicked?null:current.getParent();
        if(current!=n) current.recycle();
        if(clicked) return true;
        current=parent;
      }
    }
    return false;
  }

  /** Ignore the icon and title when both identify the same card; reject distinct matches. */
  public static float[] walletCard(List<AccessibilityNodeInfo> nodes,String label,int width,int height) {
    float[] result=null;
    if(nodes==null || label==null) return null;
    for(AccessibilityNodeInfo title:nodes) {
      if(!title.isVisibleToUser()) continue;
      CharSequence name=title.getText();
      if(name==null || name.length()==0) name=title.getContentDescription();
      if(name==null || !label.equals(name.toString().trim())) continue;
      Rect tr=new Rect(); title.getBoundsInScreen(tr);
      if(tr.top<height*.03f || tr.bottom>height*.25f || tr.width()<=0) continue;
      AccessibilityNodeInfo ancestor=title.getParent();
      for(int depth=0;ancestor!=null && depth<7;depth++) {
        Rect card=new Rect(); ancestor.getBoundsInScreen(card);
        float[] candidate=ReturnRecovery.geometry(tr.left,tr.top,tr.right,tr.bottom,
          card.left,card.top,card.right,card.bottom,width,height);
        if(candidate!=null && !RecentCardGuard.exposed(ancestor,candidate)) candidate=null;
        AccessibilityNodeInfo next=candidate==null?ancestor.getParent():null;
        ancestor.recycle(); ancestor=next;
        if(candidate!=null) {
          if(result!=null && (result[4]!=candidate[4] || result[5]!=candidate[5])) return null;
          result=candidate; break;
        }
      }
      if(ancestor!=null) ancestor.recycle();
    }
    return result;
  }

  private static boolean moved(float[] a,float[] b) {
    for(int i=0;i<a.length;i++) if(Math.abs(a[i]-b[i])>8) return true;
    return false;
  }

  private static int walletTitleX(List<AccessibilityNodeInfo> nodes,String label) {
    if(nodes==null || label==null) return -1;
    for(AccessibilityNodeInfo node:nodes) {
      if(!node.isVisibleToUser()) continue;
      CharSequence text=node.getText();
      if(text==null || text.length()==0) text=node.getContentDescription();
      if(text==null || !label.equals(text.toString().trim())) continue;
      Rect bounds=new Rect(); node.getBoundsInScreen(bounds);
      if(bounds.width()>0) return bounds.centerX();
    }
    return -1;
  }
}
