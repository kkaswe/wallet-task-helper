package cn.jim.wallethelper;

import android.graphics.Rect;
import android.os.SystemClock;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.*;
import java.lang.reflect.Method;

/** Converts current accessibility nodes to the tested video state machine. */
public final class WalletVideo {
  public String message,summary;
  public int index;
  private final WalletVideoFlow flow=new WalletVideoFlow();
  private static Method viewId;
  private boolean networkRetry;
  static {try{viewId=AccessibilityNodeInfo.class.getMethod("getViewIdResourceName");}catch(Exception ignored){}}
  public int step(List<AccessibilityNodeInfo> nodes,String pkg,int width,int height) {
    if(networkRetry){
      if(WalletService.instance==null){summary=message="无障碍服务已断开，停止网络重试";return -1;}
      int status=WifiRetry.advance(WalletService.instance);
      if(status==0)return WalletVideoFlow.WAIT;
      networkRetry=false;
      if(status<0){summary=message=WifiRetry.error;return WalletVideoFlow.FAIL;}
      flow.retryNetwork(SystemClock.uptimeMillis());
      message="关闭 Wi-Fi 后重新进入钱包，核对次数再重试";return WalletVideoFlow.OPEN;
    }
    List<WalletVideoFlow.Node> values=new ArrayList<WalletVideoFlow.Node>();
    for(int i=0;i<nodes.size();i++) {
      AccessibilityNodeInfo n=nodes.get(i);
      if(!n.isVisibleToUser() || !n.isEnabled())continue;
      Rect b=new Rect();n.getBoundsInScreen(b);
      String id="";
      try{if(viewId!=null){Object v=viewId.invoke(n);if(v!=null)id=v.toString();}}catch(Exception ignored){}
      CharSequence text=n.getText();if(text==null || text.length()==0)text=n.getContentDescription();
      values.add(new WalletVideoFlow.Node(text==null?"":text.toString(),id,i,b.left,b.top,b.right,b.bottom,n.isClickable()));
    }
    int result=flow.step(WalletVideoFlow.read(values,pkg,width,height),SystemClock.uptimeMillis());
    message=flow.message;summary=flow.summary;index=flow.index;
    if(result==WalletVideoFlow.NETWORK){
      if(WalletService.instance==null||!WifiRetry.begin(WalletService.instance)){summary=message="网络重试无法开始："+WifiRetry.error;return WalletVideoFlow.FAIL;}
      networkRetry=true;return WalletVideoFlow.WAIT;
    }
    return result;
  }
}
