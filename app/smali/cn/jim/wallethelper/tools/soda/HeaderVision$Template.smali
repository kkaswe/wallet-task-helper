.class public final Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;
.super Ljava/lang/Object;
.source "HeaderVision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jim/wallethelper/tools/soda/HeaderVision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Template"
.end annotation


# instance fields
.field final energy:D

.field final height:I

.field final weights:[D

.field final width:I


# direct methods
.method public constructor <init>(II[I)V
    .locals 9

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;->width:I

    iput p2, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;->height:I

    mul-int/2addr p1, p2

    new-array p1, p1, [D

    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;->weights:[D

    array-length p1, p3

    const-wide/16 v0, 0x0

    const/4 p2, 0x0

    move v2, p2

    move-wide v3, v0

    :goto_0
    if-lt v2, p1, :cond_1

    array-length p1, p3

    int-to-double v5, p1

    div-double v5, v3, v5

    :goto_1
    array-length p1, p3

    if-lt p2, p1, :cond_0

    iput-wide v0, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;->energy:D

    return-void

    :cond_0
    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;->weights:[D

    aget v2, p3, p2

    invoke-static {v2}, Lcn/jim/wallethelper/tools/soda/HeaderVision;->gray(I)I

    move-result v2

    int-to-double v2, v2

    sub-double/2addr v2, v5

    aput-wide v2, p1, p2

    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;->weights:[D

    aget-wide v2, p1, p2

    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;->weights:[D

    aget-wide v7, p1, p2

    mul-double/2addr v2, v7

    add-double/2addr v0, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    aget v5, p3, v2

    invoke-static {v5}, Lcn/jim/wallethelper/tools/soda/HeaderVision;->gray(I)I

    move-result v5

    int-to-double v5, v5

    add-double/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
