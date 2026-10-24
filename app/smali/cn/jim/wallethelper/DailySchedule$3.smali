.class Lcn/jim/wallethelper/DailySchedule$3;
.super Ljava/lang/Object;
.source "DailySchedule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jim/wallethelper/DailySchedule;->attempt(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$deadline:J

.field final synthetic val$service:Lcn/jim/wallethelper/WalletService;

.field final synthetic val$token:I


# direct methods
.method constructor <init>(ILcn/jim/wallethelper/WalletService;Landroid/content/Context;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    iput p1, p0, Lcn/jim/wallethelper/DailySchedule$3;->val$token:I

    iput-object p2, p0, Lcn/jim/wallethelper/DailySchedule$3;->val$service:Lcn/jim/wallethelper/WalletService;

    iput-object p3, p0, Lcn/jim/wallethelper/DailySchedule$3;->val$c:Landroid/content/Context;

    iput-wide p4, p0, Lcn/jim/wallethelper/DailySchedule$3;->val$deadline:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 91
    iget v0, p0, Lcn/jim/wallethelper/DailySchedule$3;->val$token:I

    # getter for: Lcn/jim/wallethelper/DailySchedule;->generation:I
    invoke-static {}, Lcn/jim/wallethelper/DailySchedule;->access$100()I

    move-result v1

    if-eq v0, v1, :cond_9

    return-void

    .line 92
    :cond_9
    sget-object v0, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;

    iget-object v1, p0, Lcn/jim/wallethelper/DailySchedule$3;->val$service:Lcn/jim/wallethelper/WalletService;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1b

    # setter for: Lcn/jim/wallethelper/DailySchedule;->opening:Z
    invoke-static {v2}, Lcn/jim/wallethelper/DailySchedule;->access$202(Z)Z

    iget-object v0, p0, Lcn/jim/wallethelper/DailySchedule$3;->val$c:Landroid/content/Context;

    const-string v1, "\u8bf7\u91cd\u65b0\u8fde\u63a5\u65e0\u969c\u788d\u670d\u52a1"

    # invokes: Lcn/jim/wallethelper/DailySchedule;->notifyUser(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcn/jim/wallethelper/DailySchedule;->access$300(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 93
    :cond_1b
    iget-object v0, p0, Lcn/jim/wallethelper/DailySchedule$3;->val$c:Landroid/content/Context;

    invoke-static {v0}, Lcn/jim/wallethelper/DailySchedule;->enabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f7

    iget-object v0, p0, Lcn/jim/wallethelper/DailySchedule$3;->val$c:Landroid/content/Context;

    # invokes: Lcn/jim/wallethelper/DailySchedule;->unlocked(Landroid/content/Context;)Z
    invoke-static {v0}, Lcn/jim/wallethelper/DailySchedule;->access$400(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2d

    goto/16 :goto_f7

    .line 94
    :cond_2d
    iget-object v0, p0, Lcn/jim/wallethelper/DailySchedule$3;->val$service:Lcn/jim/wallethelper/WalletService;

    invoke-virtual {v0}, Lcn/jim/wallethelper/WalletService;->scheduledBusy()Z

    move-result v0

    if-eqz v0, :cond_40

    # setter for: Lcn/jim/wallethelper/DailySchedule;->opening:Z
    invoke-static {v2}, Lcn/jim/wallethelper/DailySchedule;->access$202(Z)Z

    iget-object v0, p0, Lcn/jim/wallethelper/DailySchedule$3;->val$c:Landroid/content/Context;

    const-string v1, "\u89e3\u9501\u8ba1\u5212\uff1a\u5df2\u6709\u4efb\u52a1\u8fd0\u884c\uff0c\u4ec5\u8df3\u8fc7\u672c\u6b21\u542f\u52a8"

    # invokes: Lcn/jim/wallethelper/DailySchedule;->done(Landroid/content/Context;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcn/jim/wallethelper/DailySchedule;->access$500(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    .line 95
    :cond_40
    iget-object v0, p0, Lcn/jim/wallethelper/DailySchedule$3;->val$service:Lcn/jim/wallethelper/WalletService;

    invoke-virtual {v0}, Lcn/jim/wallethelper/WalletService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 96
    nop

    .line 97
    const/4 v1, 0x1

    if-eqz v0, :cond_bb

    .line 98
    :try_start_4a
    const-string v3, "com.hihonor.wallet"

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_55

    const-string v4, ""

    goto :goto_59

    :cond_55
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    :goto_59
    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 99
    const-string v3, "\u6d4f\u89c8\u5e94\u7528"

    # invokes: Lcn/jim/wallethelper/DailySchedule;->hasText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z
    invoke-static {v0, v3}, Lcn/jim/wallethelper/DailySchedule;->access$600(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8a

    const-string v3, "\u4e0b\u8f7d\u5e76\u4f53\u9a8c"

    # invokes: Lcn/jim/wallethelper/DailySchedule;->hasText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z
    invoke-static {v0, v3}, Lcn/jim/wallethelper/DailySchedule;->access$600(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8a

    const-string v3, "\u89c2\u770b\u89c6\u9891\uff0c\u9886\u4f1a\u5458\u65f6\u957f"

    # invokes: Lcn/jim/wallethelper/DailySchedule;->hasText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z
    invoke-static {v0, v3}, Lcn/jim/wallethelper/DailySchedule;->access$600(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8a

    const-string v3, "\u5929\u5929\u9886\u4f1a\u5458"

    .line 100
    # invokes: Lcn/jim/wallethelper/DailySchedule;->hasText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z
    invoke-static {v0, v3}, Lcn/jim/wallethelper/DailySchedule;->access$600(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8a

    const-string v3, "\u8fde\u7eed2\u5929\u4f53\u9a8c\u5e94\u7528\uff0c\u9886\u4f1a\u5458\u65f6\u957f"

    # invokes: Lcn/jim/wallethelper/DailySchedule;->hasText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z
    invoke-static {v0, v3}, Lcn/jim/wallethelper/DailySchedule;->access$600(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_88

    goto :goto_8a

    :cond_88
    move v3, v2

    goto :goto_8b

    :cond_8a
    :goto_8a
    move v3, v1

    .line 101
    :goto_8b
    if-nez v3, :cond_b2

    .line 102
    # invokes: Lcn/jim/wallethelper/DailySchedule;->clickSavings(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    invoke-static {v0}, Lcn/jim/wallethelper/DailySchedule;->access$700(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v4

    if-eqz v4, :cond_9a

    iget-object v4, p0, Lcn/jim/wallethelper/DailySchedule$3;->val$c:Landroid/content/Context;

    const-string v5, "\u94b1\u5305\u9996\u9875\u5df2\u70b9\u51fb\u7701\u94b1\uff0c\u7b49\u5f85\u4efb\u52a1\u9875"

    invoke-static {v4, v5}, Lcn/jim/wallethelper/LocalLog;->add(Landroid/content/Context;Ljava/lang/String;)V

    .line 103
    :cond_9a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcn/jim/wallethelper/DailySchedule$3;->val$deadline:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_b2

    # getter for: Lcn/jim/wallethelper/DailySchedule;->handler:Landroid/os/Handler;
    invoke-static {}, Lcn/jim/wallethelper/DailySchedule;->access$800()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_ad
    .catchall {:try_start_4a .. :try_end_ad} :catchall_b6

    .line 106
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 103
    return-void

    .line 98
    :cond_b1
    move v3, v2

    .line 106
    :cond_b2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_bc

    :catchall_b6
    move-exception v1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    throw v1

    .line 97
    :cond_bb
    move v3, v2

    .line 107
    :goto_bc
    if-eqz v3, :cond_d1

    iget-object v0, p0, Lcn/jim/wallethelper/DailySchedule$3;->val$service:Lcn/jim/wallethelper/WalletService;

    invoke-virtual {v0}, Lcn/jim/wallethelper/WalletService;->startScheduledTask()Z

    move-result v0

    if-eqz v0, :cond_d1

    # setter for: Lcn/jim/wallethelper/DailySchedule;->opening:Z
    invoke-static {v2}, Lcn/jim/wallethelper/DailySchedule;->access$202(Z)Z

    iget-object v0, p0, Lcn/jim/wallethelper/DailySchedule$3;->val$c:Landroid/content/Context;

    const-string v2, "\u89e3\u9501\u8ba1\u5212\uff1a\u5df2\u8fdb\u5165\u7701\u94b1\u9875\u5e76\u542f\u52a8\u5b8c\u6574\u94b1\u5305\u4efb\u52a1"

    # invokes: Lcn/jim/wallethelper/DailySchedule;->done(Landroid/content/Context;Ljava/lang/String;Z)V
    invoke-static {v0, v2, v1}, Lcn/jim/wallethelper/DailySchedule;->access$500(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    .line 108
    :cond_d1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcn/jim/wallethelper/DailySchedule$3;->val$deadline:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_ed

    # setter for: Lcn/jim/wallethelper/DailySchedule;->opening:Z
    invoke-static {v2}, Lcn/jim/wallethelper/DailySchedule;->access$202(Z)Z

    iget-object v0, p0, Lcn/jim/wallethelper/DailySchedule$3;->val$c:Landroid/content/Context;

    const-string v1, "\u89e3\u9501\u8ba1\u5212\uff1a\u4efb\u52a1\u9875\u9762\u672a\u5c31\u7eea\uff0c\u505c\u6b62\u81ea\u52a8\u91cd\u8bd5"

    # invokes: Lcn/jim/wallethelper/DailySchedule;->done(Landroid/content/Context;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcn/jim/wallethelper/DailySchedule;->access$500(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcn/jim/wallethelper/DailySchedule$3;->val$c:Landroid/content/Context;

    const-string v1, "\u8bf7\u8fdb\u5165\u94b1\u5305\u7701\u94b1\u4efb\u52a1\u9875\uff0c\u624b\u52a8\u5f00\u59cb"

    # invokes: Lcn/jim/wallethelper/DailySchedule;->notifyUser(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcn/jim/wallethelper/DailySchedule;->access$300(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 109
    :cond_ed
    # getter for: Lcn/jim/wallethelper/DailySchedule;->handler:Landroid/os/Handler;
    invoke-static {}, Lcn/jim/wallethelper/DailySchedule;->access$800()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 110
    return-void

    .line 93
    :cond_f7
    :goto_f7
    # setter for: Lcn/jim/wallethelper/DailySchedule;->opening:Z
    invoke-static {v2}, Lcn/jim/wallethelper/DailySchedule;->access$202(Z)Z

    return-void
.end method
