package cn.jim.wallethelper;
// Compile-only API bridge; never packaged.
public abstract class WalletService extends android.accessibilityservice.AccessibilityService {
 public static WalletService instance;
 public void enterExtraTool() {}
 public void exitExtraTool() {}
 public boolean extraTap(float x,float y) { return false; }
}
