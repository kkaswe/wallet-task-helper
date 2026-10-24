.class public final Lcn/jim/wallethelper/OverlayCloseClick;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;

.field private final service:Lcn/jim/wallethelper/WalletService;

.method public constructor <init>(Lcn/jim/wallethelper/WalletService;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcn/jim/wallethelper/OverlayCloseClick;->service:Lcn/jim/wallethelper/WalletService;
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    iget-object v0, p0, Lcn/jim/wallethelper/OverlayCloseClick;->service:Lcn/jim/wallethelper/WalletService;
    invoke-virtual {v0}, Lcn/jim/wallethelper/WalletService;->hideOverlay()V
    return-void
.end method
