package cn.jim.wallethelper.tools.soda;

/** Known live-room header: a close icon plus the nearby "更多直播" label. */
public final class LiveVision {
    public static final class Result {
        public final boolean recognized;public final HeaderVision.Match close;
        public final double closeScore,contextScore;
        Result(boolean ok,HeaderVision.Match x,double xs,double cs){recognized=ok;close=ok?x:null;closeScore=xs;contextScore=cs;}
    }
    private final HeaderVision.Template close,more;
    public LiveVision(HeaderVision.Template close,HeaderVision.Template more){this.close=close;this.more=more;}
    public Result detect(int[] pixels,int w,int h){
        int[] gray=new int[pixels.length];for(int i=0;i<gray.length;i++)gray[i]=HeaderVision.gray(pixels[i]);
        HeaderVision.Match x=HeaderVision.find(gray,w,h,close,w*9/10,15,w,Math.min(h,105));
        if(x.score<.85)return new Result(false,x,x.score,0);
        HeaderVision.Match label=HeaderVision.find(gray,w,h,more,Math.max(w/2,x.x-90),x.y+close.height,Math.min(w,x.x+20),Math.min(h,x.y+80));
        return new Result(label.score>=.85,x,x.score,label.score);
    }
}
