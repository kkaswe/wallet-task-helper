.class public final Lcn/jim/wallethelper/VideoTaskClick;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.field private final activity:Landroid/app/Activity;
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcn/jim/wallethelper/VideoTaskClick;->activity:Landroid/app/Activity;
    return-void
.end method
.method public onClick(Landroid/view/View;)V
    .locals 3
    sget-object v0, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;
    if-eqz v0, :missing
    invoke-virtual {v0}, Lcn/jim/wallethelper/WalletService;->startWalletVideo()V
    return-void
    :missing
    iget-object v0, p0, Lcn/jim/wallethelper/VideoTaskClick;->activity:Landroid/app/Activity;
    const-string v1, "请先开启助手无障碍服务"
    const/4 v2, 0x0
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v0
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    return-void
.end method
