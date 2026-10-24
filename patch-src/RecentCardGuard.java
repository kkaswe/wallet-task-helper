package cn.jim.wallethelper;

import android.graphics.Rect;
import android.view.accessibility.AccessibilityNodeInfo;
import java.lang.reflect.Method;

/** Refuse to start a swipe through a card drawn above the intended card. */
public final class RecentCardGuard {
  private RecentCardGuard() {}

  public static boolean exposed(AccessibilityNodeInfo card,float[] path) {
    AccessibilityNodeInfo parent=card.getParent();
    if(parent==null) return false;
    try {
      // Public since API 24; reflection keeps the supplied older build jar usable.
      Method order=AccessibilityNodeInfo.class.getMethod("getDrawingOrder");
      int target=(Integer)order.invoke(card);
      if(target<=0) return false;
      boolean found=false;
      for(int i=0;i<parent.getChildCount();i++) {
        AccessibilityNodeInfo other=parent.getChild(i);
        if(other==null) return false;
        try {
          if(other.equals(card)) { found=true; continue; }
          int above=(Integer)order.invoke(other);
          if(above<=0 || above==target) return false;
          if(above<target || !other.isVisibleToUser()) continue;
          Rect r=new Rect(); other.getBoundsInScreen(r);
          // Leave an inset so a narrow exposed edge is not treated as a clear hit.
          if(path[0]>=r.left-16 && path[0]<=r.right+16
              && path[1]>=r.top-16 && path[1]<=r.bottom+16) return false;
        } finally { other.recycle(); }
      }
      return found;
    } catch(Exception unavailable) {
      return false;
    } finally { parent.recycle(); }
  }
}
