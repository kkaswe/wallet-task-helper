package cn.jim.wallethelper.tools.soda;
public final class PopupVision {
    public static final class Result {
        public final boolean continuation;public final HeaderVision.Match claim,exit;public final double claimScore,freeScore,againScore;
        Result(boolean c,HeaderVision.Match button,HeaderVision.Match exit,double bs,double fs,double as){continuation=c;claim=button;this.exit=exit;claimScore=bs;freeScore=fs;againScore=as;}
    }
    private final HeaderVision.Template claim,free,again,exit,coinClaim,coinPrompt,coinExit;
    public PopupVision(HeaderVision.Template c,HeaderVision.Template f,HeaderVision.Template a,HeaderVision.Template e,
                       HeaderVision.Template cc,HeaderVision.Template cp,HeaderVision.Template ce){
        claim=c;free=f;again=a;exit=e;coinClaim=cc;coinPrompt=cp;coinExit=ce;
    }
    public Result detect(int[] pixels,int w,int h){
        int[] g=new int[pixels.length];for(int i=0;i<g.length;i++)g[i]=HeaderVision.gray(pixels[i]);
        // The coin offer has no free-listening title. Anchor on its continuation
        // sentence AND exit label, never on an advertiser's reward button alone.
        HeaderVision.Match dismiss=findExit(g,w,h);
        if(dismiss.score>=.83){
            HeaderVision.Match prompt=HeaderVision.find(g,w,h,coinPrompt,dismiss.x-55,dismiss.y-210,
                    dismiss.x+140,dismiss.y-75);
            if(prompt.score>=.83){
                HeaderVision.Match c=HeaderVision.find(g,w,h,coinClaim,dismiss.x-35,prompt.y+prompt.height+20,
                        dismiss.x+dismiss.width+35,dismiss.y-10);
                boolean valid=c.score>=.83&&Math.abs(c.centerX()-dismiss.centerX())<40;
                // Even an unreadable button must block clicks through the modal.
                return new Result(true,valid?c:null,dismiss,c.score,0,prompt.score);
            }
        }
        HeaderVision.Match button=HeaderVision.find(g,w,h,claim,w/4,h/3,w*3/4,h*4/5);
        if(button.score<.83)return new Result(false,null,null,button.score,0,0);
        HeaderVision.Match title=HeaderVision.find(g,w,h,free,Math.max(0,button.x-35),Math.max(0,button.y-140),Math.min(w,button.x+150),button.y-12);
        HeaderVision.Match more=HeaderVision.find(g,w,h,again,Math.max(0,button.x-70),Math.max(0,button.y-180),Math.min(w,button.x+90),button.y-30);
        boolean ok=title.score>=.83&&more.score>=.83;
        HeaderVision.Match exitButton=ok?HeaderVision.find(g,w,h,exit,button.x-20,button.y+button.height,button.x+button.width+30,Math.min(h,button.y+button.height+80)):null;
        if(exitButton!=null&&exitButton.score<.83)exitButton=null;
        return new Result(ok,ok?button:null,exitButton,button.score,title.score,more.score);
    }
    private HeaderVision.Match findExit(int[] g,int w,int h){
        HeaderVision.Match best=null;
        // Thin gray glyphs are easily lost by a two-pixel scan. Overlapping
        // short bands retain single-pixel scanning without changing other detectors.
        for(int top=h/2;top<h*4/5;top+=100){
            HeaderVision.Match m=HeaderVision.find(g,w,h,coinExit,w/4,top,w*3/4,Math.min(h*4/5,top+100+coinExit.height));
            if(best==null||m.score>best.score)best=m;
        }
        return best;
    }
}
