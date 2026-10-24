package cn.jim.wallethelper.tools.soda;

/** Normalized cross-correlation for known ad header glyphs. Not general OCR. */
public final class HeaderVision {
    public static final class Template {
        final int width,height;final double[] weights;final double energy;
        public Template(int w,int h,int[] pixels){width=w;height=h;weights=new double[w*h];double mean=0;for(int p:pixels)mean+=gray(p);mean/=pixels.length;double e=0;for(int i=0;i<pixels.length;i++){weights[i]=gray(pixels[i])-mean;e+=weights[i]*weights[i];}energy=e;}
    }
    public static final class Match {
        public final double score;public final int x,y,width,height;
        Match(double score,int x,int y,int width,int height){this.score=score;this.x=x;this.y=y;this.width=width;this.height=height;}
        public int centerX(){return x+width/2;}public int centerY(){return y+height/2;}
    }
    public static final class Result {
        public final boolean waiting,success;public final Match close;public final double successScore,waitScore;
        Result(boolean w,boolean s,Match c,double ss,double ws){waiting=w;success=s;close=c;successScore=ss;waitScore=ws;}
    }
    public static int gray(int p){return (((p>>16)&255)*77+((p>>8)&255)*150+(p&255)*29)>>8;}
    private final Template success,waiting,close;
    public HeaderVision(Template s,Template w,Template c){success=s;waiting=w;close=c;}
    public Result detect(int[] pixels,int width,int height){
        int[] g=new int[pixels.length];for(int i=0;i<g.length;i++)g[i]=gray(pixels[i]);
        Match wait=find(g,width,height,waiting,width/2,10,width-5,height-5);
        Match ok=find(g,width,height,success,width*3/5,10,width-5,height-5);
        boolean hasWait=wait.score>=.80;
        Match x=null;
        if(ok.score>=.84&&!hasWait){x=find(g,width,height,close,ok.x+ok.width,Math.max(0,ok.y-4),Math.min(width,ok.x+ok.width+25),Math.min(height,ok.y+ok.height+5));if(x.score<.83)x=null;}
        return new Result(hasWait,ok.score>=.84&&!hasWait,x,ok.score,wait.score);
    }
    public static Match find(int[] g,int w,int h,Template t,int left,int top,int right,int bottom){
        left=Math.max(0,left);top=Math.max(0,top);right=Math.min(w,right);bottom=Math.min(h,bottom);
        double best=-1;int bx=0,by=0,n=t.width*t.height;
        // Small header only, about 150px high after normalization. No full-screen matching.
        int stride=(bottom-top>160)?2:1;
        for(int y=top;y<=bottom-t.height;y+=stride)for(int x=left;x<=right-t.width;x+=stride){
            double sum=0,square=0,dot=0;int k=0;
            for(int ty=0;ty<t.height;ty++){int off=(y+ty)*w+x;for(int tx=0;tx<t.width;tx++){int value=g[off+tx];sum+=value;square+=value*value;dot+=value*t.weights[k++];}}
            double variance=square-sum*sum/n;
            if(variance<n*18)continue;
            double score=dot/Math.sqrt(variance*t.energy);
            if(score>best){best=score;bx=x;by=y;}
        }
        if(stride>1&&best>.55)return find(g,w,h,t,Math.max(left,bx-2),Math.max(top,by-2),Math.min(right,bx+t.width+3),Math.min(bottom,by+t.height+3));
        return new Match(best,bx,by,t.width,t.height);
    }
}
