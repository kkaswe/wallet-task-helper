package cn.jim.wallethelper;
import android.graphics.Rect;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.List;
import java.util.Locale;

/** One return retry and one explicitly identified recent-task dismissal per experience. */
public final class ReturnRecovery {
  public int attempts;
  private String targetPackage, targetLabel;
  private int cleanupStage;
  private long cleanupStarted;
  public String message;
  public void remember(String pkg,String label,String home) {
    if(targetPackage!=null || !eligible(pkg,home) || label==null || label.equals(pkg)) return;
    if(label.equals("荣耀钱包") || label.equals("钱包") || label.equals("钱包任务助手")) return;
    targetPackage=pkg; targetLabel=label;
  }
  public static boolean eligible(String pkg,String home) {
    if(pkg==null || pkg.isEmpty()) return false;
    String p=pkg.toLowerCase(Locale.ROOT);
    return !pkg.equals(home) && !pkg.equals("com.hihonor.wallet") && !pkg.equals("cn.jim.wallethelper")
      && !pkg.equals("android") && !p.contains("systemui") && !p.contains("launcher")
      && !p.contains("permissioncontroller") && !p.contains("packageinstaller");
  }
  public boolean retryAllowed() { return attempts<2; }
  public boolean waiting() { return targetPackage!=null && cleanupStage<2; }
  public float[] next(List<AccessibilityNodeInfo> nodes,int width,int height,View overlay,long now) {
    message=null;
    if(!waiting()) return null;
    if(cleanupStarted==0) cleanupStarted=now;
    float[] path=findPath(nodes,targetLabel,width,height);
    if(cleanupStage==1) {
      if(now-cleanupStarted<1500) return null;
      cleanupStage=2;
      message=path==null ? "移除手势后未再识别到目标卡片，继续切回钱包" : "目标卡片仍在，跳过清理并切回钱包";
      return null;
    }
    if(path==null) {
      if(now-cleanupStarted>=3500) { cleanupStage=2; message="未可靠识别体验应用卡片，跳过清理并切回钱包"; }
      return null;
    }
    if(overlay!=null && overlay.isShown()) {
      int[] xy=new int[2]; overlay.getLocationOnScreen(xy);
      if(blocked(path,xy[0],xy[1],overlay.getWidth(),overlay.getHeight())) {
        // Shift the same card's vertical swipe away from the floating controls.
        float inset=Math.max(24,(path[5]-path[4])*.12f);
        path[0]=path[2]=path[5]-inset;
        if(blocked(path,xy[0],xy[1],overlay.getWidth(),overlay.getHeight())) path[0]=path[2]=path[4]+inset;
      }
      if(blocked(path,xy[0],xy[1],overlay.getWidth(),overlay.getHeight())) {
        cleanupStage=2; message="控制条挡住移除手势，跳过清理并切回钱包"; return null;
      }
    }
    cleanupStage=1; cleanupStarted=now;
    message="尝试从最近任务划掉："+targetLabel;
    return path;
  }
  public void failed() { cleanupStage=2; message="移除手势未发送，继续切回钱包"; }
  public static boolean blocked(float[] p,int x,int y,int w,int h) {
    return p[0]>=x-12 && p[0]<=x+w+12 && Math.max(p[1],p[3])>=y-12 && Math.min(p[1],p[3])<=y+h+12;
  }
  public static float[] findPath(List<AccessibilityNodeInfo> nodes,String label,int width,int height) {
    float[] result=null;
    for(AccessibilityNodeInfo title:nodes) {
      if(!title.isVisibleToUser()) continue;
      CharSequence text=title.getText(); if(text==null || text.length()==0) text=title.getContentDescription();
      if(text==null || !label.equals(text.toString().trim())) continue;
      Rect tr=new Rect(); title.getBoundsInScreen(tr);
      if(tr.top<height*.03f || tr.bottom>height*.25f || tr.width()<=0) continue;
      AccessibilityNodeInfo ancestor=title.getParent();
      for(int depth=0;ancestor!=null && depth<7;depth++) {
        Rect card=new Rect(); ancestor.getBoundsInScreen(card);
        float[] candidate=geometry(tr.left,tr.top,tr.right,tr.bottom,card.left,card.top,card.right,card.bottom,width,height);
        if(candidate!=null && !RecentCardGuard.exposed(ancestor,candidate)) candidate=null;
        AccessibilityNodeInfo next=null;
        if(candidate==null) next=ancestor.getParent();
        ancestor.recycle(); ancestor=next;
        if(candidate!=null) {
          if(result!=null) return null; // Duplicate labels: do not guess which task to remove.
          result=candidate; break;
        }
      }
      if(ancestor!=null) ancestor.recycle();
    }
    return result;
  }
  public static float[] geometry(int tl,int tt,int tr,int tb,int l,int t,int r,int b,int w,int h) {
    int cw=r-l,ch=b-t;
    if(w<=0 || h<=0 || l<0 || r>w || t<h*.03f || b>h*.90f
        || cw<w*.18f || cw>w*.95f || ch<h*.40f || ch>h*.85f
      || tl<l || tr>r || tt<t || tb>t+ch*.22f) return null;
    float x=(l+r)/2f;
    return new float[]{x,t+ch*.68f,x,Math.max(h*.06f,t+8),l,r};
  }
}
