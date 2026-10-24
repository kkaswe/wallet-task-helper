.class public final Lcn/jim/wallethelper/WalletVideoFlow$Node;
.super Ljava/lang/Object;
.source "WalletVideoFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jim/wallethelper/WalletVideoFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Node"
.end annotation


# instance fields
.field public b:I

.field public clickable:Z

.field public id:Ljava/lang/String;

.field public index:I

.field public l:I

.field public r:I

.field public t:I

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIIZ)V
    .registers 9

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {p1}, Lcn/jim/wallethelper/WalletVideoFlow;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/jim/wallethelper/WalletVideoFlow$Node;->text:Ljava/lang/String;

    if-nez p2, :cond_d

    const-string p2, ""

    :cond_d
    iput-object p2, p0, Lcn/jim/wallethelper/WalletVideoFlow$Node;->id:Ljava/lang/String;

    iput p3, p0, Lcn/jim/wallethelper/WalletVideoFlow$Node;->index:I

    .line 14
    iput p4, p0, Lcn/jim/wallethelper/WalletVideoFlow$Node;->l:I

    iput p5, p0, Lcn/jim/wallethelper/WalletVideoFlow$Node;->t:I

    iput p6, p0, Lcn/jim/wallethelper/WalletVideoFlow$Node;->r:I

    iput p7, p0, Lcn/jim/wallethelper/WalletVideoFlow$Node;->b:I

    iput-boolean p8, p0, Lcn/jim/wallethelper/WalletVideoFlow$Node;->clickable:Z

    .line 15
    return-void
.end method
