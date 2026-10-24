import cn.jim.wallethelper.WalletVideoFlow;
import cn.jim.wallethelper.WalletVideoFlow.*;
import java.util.*;
import javax.xml.parsers.*;
import org.w3c.dom.*;
import java.io.*;

public class WalletVideoFlowTest {
  static int checks;
  static void eq(Object a,Object b){checks++;if(!a.equals(b))throw new AssertionError("expected="+b+" actual="+a);}
  static Frame card(int count){Frame f=new Frame();f.pkg=WalletVideoFlow.WALLET;f.count=count;f.max=3;f.button=4;f.buttonKey="793,670,966,754";f.page=true;return f;}
  static Frame ad(String countdown,boolean reward){Frame f=new Frame();f.pkg=WalletVideoFlow.WALLET;f.ad=true;f.countdown=countdown;f.reward=reward;f.close=8;return f;}
  static List<WalletVideoFlow.Node> xml(String path)throws Exception {
    DocumentBuilderFactory factory=DocumentBuilderFactory.newInstance();factory.setFeature("http://apache.org/xml/features/disallow-doctype-decl",true);
    NodeList rows=factory.newDocumentBuilder().parse(new File(path)).getElementsByTagName("node");
    List<WalletVideoFlow.Node> out=new ArrayList<>();
    for(int i=0;i<rows.getLength();i++) {Element e=(Element)rows.item(i);String[] b=e.getAttribute("bounds").replaceAll("[^0-9,]",",").split(",+");List<Integer> n=new ArrayList<>();for(String v:b)if(!v.isEmpty())n.add(Integer.parseInt(v));
      if(n.size()!=4)continue;String text=e.getAttribute("text");if(text.isEmpty())text=e.getAttribute("content-desc");out.add(new WalletVideoFlow.Node(text,e.getAttribute("resource-id"),i,n.get(0),n.get(1),n.get(2),n.get(3),e.getAttribute("clickable").equals("true")));}
    return out;
  }
  public static void main(String[] args)throws Exception {
    Frame f;
    WalletVideoFlow flow=new WalletVideoFlow();f=card(1);
    eq(flow.step(f,0),WalletVideoFlow.WAIT);eq(flow.step(f,800),WalletVideoFlow.CLICK);
    eq(flow.step(ad("15秒后领取奖励",false),2400),WalletVideoFlow.WAIT);
    eq(flow.step(ad("1秒后领取奖励",false),16400),WalletVideoFlow.WAIT);
    eq(flow.step(ad("奖励已发放",true),17500),WalletVideoFlow.CLICK);
    eq(flow.index,8);
    eq(flow.step(card(1),19200),WalletVideoFlow.WAIT);
    eq(flow.step(card(1),20000),WalletVideoFlow.CLICK);
    Frame popup=card(2);popup.popup=true;
    eq(flow.step(popup,21600),WalletVideoFlow.DISMISS);
    eq(flow.step(card(2),22600),WalletVideoFlow.WAIT);
    eq(flow.step(card(2),23700),WalletVideoFlow.WAIT);
    eq(flow.step(card(2),24500),WalletVideoFlow.CLICK);
    eq(flow.step(ad("奖励已发放",true),26200),WalletVideoFlow.CLICK);
    eq(flow.step(card(2),28000),WalletVideoFlow.WAIT);
    eq(flow.step(card(2),28800),WalletVideoFlow.CLICK);
    eq(flow.step(card(3),30500),WalletVideoFlow.DONE);
    eq(flow.summary.contains("本次确认领取 2 次"),true);
    // Already at limit: no launch, claim or scroll.
    eq(new WalletVideoFlow().step(card(3),0),WalletVideoFlow.DONE);
    // The 16-second experience timer must never close a running video.
    flow=new WalletVideoFlow();flow.step(card(0),0);flow.step(card(0),800);
    flow.step(ad("15秒后领取奖励",false),2400);
    eq(flow.step(ad("15秒后领取奖励",false),19000),WalletVideoFlow.WAIT);
    eq(flow.step(ad("15秒后领取奖励",false),47400),WalletVideoFlow.CLICK);
    eq(flow.summary,"视频尚未完成");
    eq(flow.step(card(0),49500),WalletVideoFlow.NETWORK);flow.retryNetwork(49500);
    flow.step(card(0),51600);eq(flow.step(card(0),52400),WalletVideoFlow.CLICK);
    flow.step(ad("15秒后领取奖励",false),54000);
    eq(flow.step(ad("15秒后领取奖励",false),99000),WalletVideoFlow.FAIL);
    // Moving button coordinates require a new stable observation.
    flow=new WalletVideoFlow();flow.step(card(0),0);f=card(0);f.buttonKey="793,700,966,784";
    eq(flow.step(f,800),WalletVideoFlow.WAIT);eq(flow.step(f,1600),WalletVideoFlow.CLICK);
    // Unconfirmed claim is not counted as successful.
    flow=new WalletVideoFlow();flow.step(card(0),0);flow.step(card(0),800);flow.step(ad("奖励已发放",true),2500);
    flow.step(card(0),4500);flow.step(card(0),5300);flow.step(card(0),14000);
    eq(flow.step(card(0),23000),WalletVideoFlow.FAIL);
    // Missing video card is bounded and cannot click banking tasks.
    flow=new WalletVideoFlow();f=new Frame();f.pkg=WalletVideoFlow.WALLET;f.page=true;
    for(int i=0;i<14;i++)eq(flow.step(f,i*1200),WalletVideoFlow.SCROLL);
    eq(flow.step(f,18000),WalletVideoFlow.FAIL);
    System.out.println("WalletVideoFlowTest passed: "+checks+" checks (synthetic frames)");
  }
}
