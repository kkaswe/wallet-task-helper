.class public final Lcn/jim/wallethelper/tools/soda/PopupVision$Result;
.super Ljava/lang/Object;
.source "PopupVision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jim/wallethelper/tools/soda/PopupVision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final againScore:D

.field public final claim:Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

.field public final claimScore:D

.field public final continuation:Z

.field public final exit:Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

.field public final freeScore:D


# direct methods
.method constructor <init>(ZLcn/jim/wallethelper/tools/soda/HeaderVision$Match;Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;DDD)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcn/jim/wallethelper/tools/soda/PopupVision$Result;->continuation:Z

    iput-object p2, p0, Lcn/jim/wallethelper/tools/soda/PopupVision$Result;->claim:Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    iput-object p3, p0, Lcn/jim/wallethelper/tools/soda/PopupVision$Result;->exit:Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    iput-wide p4, p0, Lcn/jim/wallethelper/tools/soda/PopupVision$Result;->claimScore:D

    iput-wide p6, p0, Lcn/jim/wallethelper/tools/soda/PopupVision$Result;->freeScore:D

    iput-wide p8, p0, Lcn/jim/wallethelper/tools/soda/PopupVision$Result;->againScore:D

    return-void
.end method
