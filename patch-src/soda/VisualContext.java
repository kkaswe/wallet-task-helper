package cn.jim.wallethelper.tools.soda;
/** Stable UI context deliberately excludes changing chat/product strings. */
public final class VisualContext {
    public static final long MAX_AGE=1800;
    public static String key(String pkg,int window,int w,int h,boolean offer,boolean benefit){return pkg+":"+window+":"+w+"x"+h+":"+offer+":"+benefit;}
    public static boolean usable(long captured,long now,int imageW,int imageH,int screenW,int screenH){return now>=captured&&now-captured<MAX_AGE&&imageW==screenW&&imageH==screenH;}
}
