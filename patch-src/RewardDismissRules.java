package cn.jim.wallethelper;
import java.util.List;

/** Select a blank point within wallet web content and above the observed reward artwork. */
public final class RewardDismissRules {
  public static float[] point(List<TaskRules.Item> items,int width,int height,int candidate) {
    if(candidate<0 || candidate>=6 || width<=0 || height<=0) return null;
    int top=-1, popupTop=height, bottom=height;
    boolean popup=false;
    for(TaskRules.Item i:items) {
      if("com.hihonor.wallet:id/tv_title".equals(i.viewId)) top=Math.max(top,i.y+i.h);
      if("com.hihonor.wallet:id/content".equals(i.viewId)) bottom=Math.min(bottom,i.y);
      if("领奖成功弹窗背景".equals(i.text) && i.y>0 && i.w>width/2 && i.h>height/4) {
        popup=true; popupTop=Math.min(popupTop,i.y);
      }
    }
    if(top<0 || !popup) return null;
    int pad=Math.max(8,width/100), low=top+pad, high=Math.min(popupTop,bottom)-pad;
    if(high-low<pad*2) return null;
    float x=width*(candidate%3==0?.90f:candidate%3==1?.10f:.50f);
    float y=low+(high-low)*(candidate<3?.50f:.72f);
    // Confirmed reward mask intercepts touches; underlay text is not an obstacle.
    // Wallet web boundary, artwork boundary and service overlay guard still apply.
    return new float[]{x,y};
  }
  public static String describe(float[] point) {
    return "弹窗外网页点按："+(int)point[0]+","+(int)point[1];
  }
}
