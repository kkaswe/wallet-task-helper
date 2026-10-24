package cn.jim.wallethelper.tools.soda;

import java.util.regex.*;

/** Pure state; deliberately has no wallet task, installation or cleanup dependencies. */
public final class AdSession {
    private static final Pattern COUNT = Pattern.compile("(?i)(\\d{1,3})\\s*(?:秒|s)(?![a-z])");
    private static final Pattern CLOCK = Pattern.compile("(?<![0-9])([0-9]{1,2}):([0-5][0-9])(?![0-9])");
    public final int target;
    public int completed;
    public boolean credited, awaitingNew;
    public long nextAction, observedUntil, lastProgress;
    public AdSession(int target, long now) { this.target=Math.max(0,Math.min(9999,target)); lastProgress=now; }
    public static String clean(String s) { return s==null?"":s.replaceAll("\\s+",""); }
    public static int countdown(String s) {
        Matcher m=COUNT.matcher(s); int result=-1;
        while(m.find()) result=Math.max(result,Integer.parseInt(m.group(1)));
        m=CLOCK.matcher(s);
        while(m.find())result=Math.max(result,Integer.parseInt(m.group(1))*60+Integer.parseInt(m.group(2)));
        return result;
    }
    public static boolean success(String s) { return Pattern.compile("(?m)^\\s*领取成功\\s*[×xX]?\\s*$").matcher(s).find(); }
    public static boolean upsell(String s) {
        String t=clean(s); return t.contains("再看") && t.contains("视频") && t.contains("领取奖励") && t.contains("坚持退出");
    }
    public static boolean entry(String s) {
        String t=clean(s); return t.equals("看广告")||t.equals("看视频免费听")||t.equals("看广告免费听")||t.equals("看视频领免费听");
    }
    public void observeCountdown(int seconds,long now) {
        if(seconds<0)return;
        if(awaitingNew || (credited && seconds>0)) { awaitingNew=false; credited=false; observedUntil=0; }
        // Never close while a positive countdown is still displayed, including stalled playback.
        if(seconds>0) observedUntil=now+seconds*1000L+1000L;
        lastProgress=now;
    }
    public boolean credit(String s,long now) {
        if((finished()&&!credited)||awaitingNew||countdown(s)>0||!success(s))return false;
        if(!credited) { credited=true; completed++; lastProgress=now; }
        return true;
    }
    public void observeTimerFreePage(long now) {
        if(awaitingNew){awaitingNew=false;credited=false;observedUntil=0;lastProgress=now;}
    }
    public void next(long now) { awaitingNew=true; nextAction=now+2000; lastProgress=now; }
    public boolean finished() { return completed>=target; }
}
