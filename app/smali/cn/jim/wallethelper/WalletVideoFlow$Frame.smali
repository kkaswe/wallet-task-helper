.class public final Lcn/jim/wallethelper/WalletVideoFlow$Frame;
.super Ljava/lang/Object;
.source "WalletVideoFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jim/wallethelper/WalletVideoFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Frame"
.end annotation


# instance fields
.field public ad:Z

.field public button:I

.field public buttonKey:Ljava/lang/String;

.field public close:I

.field public count:I

.field public countdown:Ljava/lang/String;

.field public max:I

.field public page:Z

.field public pkg:Ljava/lang/String;

.field public popup:Z

.field public reward:Z

.field public savings:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->pkg:Ljava/lang/String;

    iput-object v0, p0, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->countdown:Ljava/lang/String;

    iput-object v0, p0, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->buttonKey:Ljava/lang/String;

    .line 19
    const/4 v0, -0x1

    iput v0, p0, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->count:I

    iput v0, p0, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->max:I

    iput v0, p0, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->button:I

    iput v0, p0, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->close:I

    iput v0, p0, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->savings:I

    return-void
.end method
