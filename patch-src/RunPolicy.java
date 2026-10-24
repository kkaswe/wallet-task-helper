package cn.jim.wallethelper;
public final class RunPolicy {
  public static final int NORMAL=0, HOLD=1, RESUME=2, RESTART=3;
  public static int action(boolean running,boolean paused,String reason,String started,String today,boolean afterFive){
    if("hold".equals(reason))return HOLD;
    if(running&&!paused)return HOLD;
    if(!"screen".equals(reason))return running?HOLD:NORMAL;
    if(!afterFive && !today.equals(started))return HOLD;
    return running&&paused&&today.equals(started)?RESUME:RESTART;
  }
}
