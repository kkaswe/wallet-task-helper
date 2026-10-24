package cn.jim.wallethelper;
/** Recovery applies to wallet work, never to an intentional timed experience. */
public final class WalletGuard {
  public static boolean shouldReturn(String phase,String pkg,String wallet,boolean changedWindow,boolean store) {
    if(wallet==null || wallet.isEmpty() || wallet.equals(pkg)) return false;
    if((pkg==null || pkg.isEmpty() || "null".equals(pkg)) && !changedWindow) return false;
    if("OPENING".equals(phase) || "DWELL".equals(phase) || "RECENTS".equals(phase) || "RETURN".equals(phase) || "IDLE".equals(phase)) return false;
    if("DOWNLOAD".equals(phase) && store) return false;
    if(pkg!=null && pkg.contains("packageinstaller") && ("SCAN".equals(phase) || "REWIND".equals(phase) || "WAIT_INSTALL".equals(phase))) return false;
    return "SCAN".equals(phase) || "REWIND".equals(phase) || "WAIT_INSTALL".equals(phase)
      || "EXPAND".equals(phase) || "VERIFY".equals(phase) || "CLAIM_READY".equals(phase)
      || "CLAIM".equals(phase) || "DOWNLOAD".equals(phase);
  }
}
