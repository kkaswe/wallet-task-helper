package cn.jim.wallethelper.tools.soda;

import java.util.regex.Pattern;

/** Page-specific rules. Neither a close button nor a live stream proves reward receipt. */
public final class AdPageRules {
    public static boolean closeLabel(String text) {
        String s=AdSession.clean(text).toLowerCase(java.util.Locale.ROOT);
        return s.equals("×")||s.equals("✕")||s.equals("✖")||s.equals("x")||s.equals("关闭")||s.equals("关闭广告")||s.equals("关闭直播")||s.equals("关闭直播间")||s.equals("关闭按钮")||s.equals("close")||s.equals("closead");
    }
    public static boolean closeId(String id) {
        String name=id.substring(id.lastIndexOf('/')+1).toLowerCase(java.util.Locale.ROOT);
        return name.matches("(?:[a-z0-9]+_)*(?:close|dismiss)(?:_(?:ad|live))?(?:_(?:button|btn|layout|view|icon))?");
    }
    public static boolean live(String text) {
        String s=AdSession.clean(text);
        return s.contains("直播")||s.contains("进入直播间")||(s.contains("关注")&&(s.contains("主播")||s.contains("在线")||s.contains("送礼")||s.contains("说点什么")));
    }
    public static boolean externalLiveAllowed(boolean trackedAd,long lastAd,long now,String text) {
        return trackedAd && now-lastAd<=120000 && live(text);
    }
    public static boolean closeReady(String header) { return AdSession.countdown(header)<=0; }
    public static boolean dayBenefit(String text) {
        String s=AdSession.clean(text);
        return dayBenefitHint(s)&&!s.contains("下载")&&!s.contains("购买")&&!s.contains("申请额度");
    }
    public static boolean dayBenefitHint(String text) {
        String s=AdSession.clean(text);
        if(AdSession.upsell(s)||s.contains("再看"))return false;
        return s.contains("领取") && (s.contains("福利")||s.contains("免费听")||s.contains("畅听")) && Pattern.compile("(?:[0-9]{1,4}|[一二三四五六七八九十百]+)天").matcher(s).find();
    }
    public static boolean claimLabel(String text) {
        String s=AdSession.clean(text);
        return s.equals("领取")||s.equals("立即领取")||s.equals("领取福利")||s.equals("领取奖励")||s.equals("一键领取")||s.matches("(?:立即)?领取[0-9]{1,4}天(?:福利|免费听|畅听)");
    }
}
