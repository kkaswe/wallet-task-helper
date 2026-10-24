.class public final Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;
.super Ljava/lang/Object;
.source "HeaderVision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jim/wallethelper/tools/soda/HeaderVision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Match"
.end annotation


# instance fields
.field public final height:I

.field public final score:D

.field public final width:I

.field public final x:I

.field public final y:I


# direct methods
.method constructor <init>(DIIII)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    iput p3, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->x:I

    iput p4, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->y:I

    iput p5, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->width:I

    iput p6, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->height:I

    return-void
.end method


# virtual methods
.method public centerX()I
    .locals 2

    .line 12
    iget v0, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->x:I

    iget v1, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->width:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public centerY()I
    .locals 2

    .line 12
    iget v0, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->y:I

    iget v1, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->height:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method
