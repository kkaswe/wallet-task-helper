.class Lcn/jim/wallethelper/WifiRetry$1;
.super Ljava/lang/Object;
.source "WifiRetry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jim/wallethelper/WifiRetry;->restore(Landroid/accessibilityservice/AccessibilityService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/accessibilityservice/AccessibilityService;

.field final synthetic val$target:Z

.field final synthetic val$token:I

.field final synthetic val$until:J


# direct methods
.method constructor <init>(IZLandroid/accessibilityservice/AccessibilityService;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    iput p1, p0, Lcn/jim/wallethelper/WifiRetry$1;->val$token:I

    iput-boolean p2, p0, Lcn/jim/wallethelper/WifiRetry$1;->val$target:Z

    iput-object p3, p0, Lcn/jim/wallethelper/WifiRetry$1;->val$c:Landroid/accessibilityservice/AccessibilityService;

    iput-wide p4, p0, Lcn/jim/wallethelper/WifiRetry$1;->val$until:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 48
    iget v0, p0, Lcn/jim/wallethelper/WifiRetry$1;->val$token:I

    # getter for: Lcn/jim/wallethelper/WifiRetry;->generation:I
    invoke-static {}, Lcn/jim/wallethelper/WifiRetry;->access$000()I

    move-result v1

    if-eq v0, v1, :cond_9

    return-void

    .line 50
    :cond_9
    const/4 v0, 0x0

    :try_start_a
    iget-boolean v1, p0, Lcn/jim/wallethelper/WifiRetry$1;->val$target:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x3

    goto :goto_11

    :cond_10
    const/4 v1, 0x1

    .line 51
    :goto_11
    iget-object v2, p0, Lcn/jim/wallethelper/WifiRetry$1;->val$c:Landroid/accessibilityservice/AccessibilityService;

    # invokes: Lcn/jim/wallethelper/WifiRetry;->wifi(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    invoke-static {v2}, Lcn/jim/wallethelper/WifiRetry;->access$100(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    if-ne v2, v1, :cond_67

    .line 52
    iget-object v1, p0, Lcn/jim/wallethelper/WifiRetry$1;->val$c:Landroid/accessibilityservice/AccessibilityService;

    # invokes: Lcn/jim/wallethelper/WifiRetry;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcn/jim/wallethelper/WifiRetry;->access$200(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pending"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 53
    # setter for: Lcn/jim/wallethelper/WifiRetry;->restoring:Z
    invoke-static {v0}, Lcn/jim/wallethelper/WifiRetry;->access$302(Z)Z

    iget-object v1, p0, Lcn/jim/wallethelper/WifiRetry$1;->val$c:Landroid/accessibilityservice/AccessibilityService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u6062\u590d\u539f Wi-Fi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcn/jim/wallethelper/WifiRetry$1;->val$target:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcn/jim/wallethelper/WifiRetry;->log(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcn/jim/wallethelper/WifiRetry;->access$400(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    # getter for: Lcn/jim/wallethelper/WifiRetry;->opened:Z
    invoke-static {}, Lcn/jim/wallethelper/WifiRetry;->access$500()Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lcn/jim/wallethelper/WifiRetry$1;->val$c:Landroid/accessibilityservice/AccessibilityService;

    invoke-static {v1}, Lcn/jim/wallethelper/WalletEntry;->open(Landroid/content/Context;)Ljava/lang/String;

    .line 55
    :cond_5b
    # setter for: Lcn/jim/wallethelper/WifiRetry;->opened:Z
    invoke-static {v0}, Lcn/jim/wallethelper/WifiRetry;->access$502(Z)Z

    return-void

    .line 52
    :cond_5f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Wi-Fi \u6062\u590d\u8bb0\u5f55\u4fdd\u5b58\u5931\u8d25"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_67
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/jim/wallethelper/WifiRetry$1;->val$until:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_82

    .line 58
    iget-object v1, p0, Lcn/jim/wallethelper/WifiRetry$1;->val$c:Landroid/accessibilityservice/AccessibilityService;

    iget-boolean v2, p0, Lcn/jim/wallethelper/WifiRetry$1;->val$target:Z

    # invokes: Lcn/jim/wallethelper/WifiRetry;->toggle(Landroid/accessibilityservice/AccessibilityService;Z)V
    invoke-static {v1, v2}, Lcn/jim/wallethelper/WifiRetry;->access$600(Landroid/accessibilityservice/AccessibilityService;Z)V

    # getter for: Lcn/jim/wallethelper/WifiRetry;->handler:Landroid/os/Handler;
    invoke-static {}, Lcn/jim/wallethelper/WifiRetry;->access$700()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    goto :goto_9b

    .line 57
    :cond_82
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Wi-Fi \u6062\u590d\u8d85\u65f6\uff0c\u4fdd\u7559\u539f\u72b6\u6001\u4f9b\u670d\u52a1\u91cd\u8fde\u91cd\u8bd5"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_8a} :catch_8a

    .line 59
    :catch_8a
    move-exception v1

    # setter for: Lcn/jim/wallethelper/WifiRetry;->restoring:Z
    invoke-static {v0}, Lcn/jim/wallethelper/WifiRetry;->access$302(Z)Z

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jim/wallethelper/WifiRetry;->error:Ljava/lang/String;

    iget-object v0, p0, Lcn/jim/wallethelper/WifiRetry$1;->val$c:Landroid/accessibilityservice/AccessibilityService;

    sget-object v1, Lcn/jim/wallethelper/WifiRetry;->error:Ljava/lang/String;

    # invokes: Lcn/jim/wallethelper/WifiRetry;->log(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcn/jim/wallethelper/WifiRetry;->access$400(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    :goto_9b
    return-void
.end method
