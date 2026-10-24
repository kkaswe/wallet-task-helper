.class final Lcn/jim/wallethelper/DebugNavigationClick;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.field private final activity:Lcn/jim/wallethelper/MainActivity;
.field private final open:Z
.method constructor <init>(Lcn/jim/wallethelper/MainActivity;Z)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcn/jim/wallethelper/DebugNavigationClick;->activity:Lcn/jim/wallethelper/MainActivity;
    iput-boolean p2, p0, Lcn/jim/wallethelper/DebugNavigationClick;->open:Z
    return-void
.end method
.method public onClick(Landroid/view/View;)V
    .locals 2
    iget-object v0, p0, Lcn/jim/wallethelper/DebugNavigationClick;->activity:Lcn/jim/wallethelper/MainActivity;
    iget-boolean v1, p0, Lcn/jim/wallethelper/DebugNavigationClick;->open:Z
    if-eqz v1, :home
    invoke-virtual {v0}, Lcn/jim/wallethelper/MainActivity;->showDebug()V
    return-void
    :home
    invoke-virtual {v0}, Lcn/jim/wallethelper/MainActivity;->show()V
    return-void
.end method
