.class public final Lcn/jim/wallethelper/RestartCheckClick;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.implements Ljava/lang/Runnable;
.field private final activity:Landroid/app/Activity;
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcn/jim/wallethelper/RestartCheckClick;->activity:Landroid/app/Activity;
    return-void
.end method
.method public onClick(Landroid/view/View;)V
    .locals 4
    sget-object v0, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;
    if-eqz v0, :missing
    iget-object v1, p0, Lcn/jim/wallethelper/RestartCheckClick;->activity:Landroid/app/Activity;
    const-string v2, "后台重开检查已安排：20秒后"
    invoke-static {v1, v2}, Lcn/jim/wallethelper/LocalLog;->add(Landroid/content/Context;Ljava/lang/String;)V
    new-instance v1, Landroid/os/Handler;
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V
    const-wide/16 v2, 0x4e20
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    const/4 v1, 0x2
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z
    return-void
    :missing
    iget-object v0, p0, Lcn/jim/wallethelper/RestartCheckClick;->activity:Landroid/app/Activity;
    const-string v1, "请先开启助手无障碍服务"
    const/4 v2, 0x0
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    return-void
.end method

.method public run()V
    .locals 1
    sget-object v0, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;
    if-eqz v0, :done
    invoke-virtual {v0}, Lcn/jim/wallethelper/WalletService;->checkWalletRestart()V
    :done
    return-void
.end method
