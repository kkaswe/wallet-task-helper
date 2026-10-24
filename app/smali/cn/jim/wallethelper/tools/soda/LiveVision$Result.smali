.class public final Lcn/jim/wallethelper/tools/soda/LiveVision$Result;
.super Ljava/lang/Object;
.source "LiveVision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jim/wallethelper/tools/soda/LiveVision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final close:Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

.field public final closeScore:D

.field public final contextScore:D

.field public final recognized:Z


# direct methods
.method constructor <init>(ZLcn/jim/wallethelper/tools/soda/HeaderVision$Match;DD)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcn/jim/wallethelper/tools/soda/LiveVision$Result;->recognized:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcn/jim/wallethelper/tools/soda/LiveVision$Result;->close:Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    iput-wide p3, p0, Lcn/jim/wallethelper/tools/soda/LiveVision$Result;->closeScore:D

    iput-wide p5, p0, Lcn/jim/wallethelper/tools/soda/LiveVision$Result;->contextScore:D

    return-void
.end method
