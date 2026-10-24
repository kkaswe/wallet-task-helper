.class public final Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;
.super Ljava/lang/Object;
.source "HeaderVision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jim/wallethelper/tools/soda/HeaderVision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final close:Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

.field public final success:Z

.field public final successScore:D

.field public final waitScore:D

.field public final waiting:Z


# direct methods
.method constructor <init>(ZZLcn/jim/wallethelper/tools/soda/HeaderVision$Match;DD)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;->waiting:Z

    iput-boolean p2, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;->success:Z

    iput-object p3, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;->close:Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    iput-wide p4, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;->successScore:D

    iput-wide p6, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;->waitScore:D

    return-void
.end method
