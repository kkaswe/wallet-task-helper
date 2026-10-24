.class public final Lcn/jim/wallethelper/tools/soda/LiveVision;
.super Ljava/lang/Object;
.source "LiveVision.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jim/wallethelper/tools/soda/LiveVision$Result;
    }
.end annotation


# instance fields
.field private final close:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

.field private final more:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;


# direct methods
.method public constructor <init>(Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/LiveVision;->close:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    iput-object p2, p0, Lcn/jim/wallethelper/tools/soda/LiveVision;->more:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    return-void
.end method


# virtual methods
.method public detect([III)Lcn/jim/wallethelper/tools/soda/LiveVision$Result;
    .locals 20

    .line 13
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v10, p3

    array-length v2, v1

    new-array v11, v2, [I

    const/4 v12, 0x0

    move v3, v12

    :goto_0
    if-lt v3, v2, :cond_2

    .line 14
    iget-object v4, v0, Lcn/jim/wallethelper/tools/soda/LiveVision;->close:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    mul-int/lit8 v1, v9, 0x9

    div-int/lit8 v5, v1, 0xa

    const/16 v1, 0x69

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/16 v6, 0xf

    move-object v1, v11

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v7, p2

    invoke-static/range {v1 .. v8}, Lcn/jim/wallethelper/tools/soda/HeaderVision;->find([IIILcn/jim/wallethelper/tools/soda/HeaderVision$Template;IIII)Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    move-result-object v15

    .line 15
    iget-wide v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    const-wide v13, 0x3feb333333333333L    # 0.85

    cmpg-double v1, v1, v13

    if-gez v1, :cond_0

    new-instance v1, Lcn/jim/wallethelper/tools/soda/LiveVision$Result;

    iget-wide v2, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    const-wide/16 v18, 0x0

    const/4 v14, 0x0

    move-object v13, v1

    move-wide/from16 v16, v2

    invoke-direct/range {v13 .. v19}, Lcn/jim/wallethelper/tools/soda/LiveVision$Result;-><init>(ZLcn/jim/wallethelper/tools/soda/HeaderVision$Match;DD)V

    return-object v1

    .line 16
    :cond_0
    iget-object v4, v0, Lcn/jim/wallethelper/tools/soda/LiveVision;->more:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    div-int/lit8 v1, v9, 0x2

    iget v2, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->x:I

    add-int/lit8 v2, v2, -0x5a

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->y:I

    iget-object v2, v0, Lcn/jim/wallethelper/tools/soda/LiveVision;->close:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    iget v2, v2, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;->height:I

    add-int v6, v1, v2

    iget v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->x:I

    add-int/lit8 v1, v1, 0x14

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->y:I

    add-int/lit8 v1, v1, 0x50

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    move-object v1, v11

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {v1 .. v8}, Lcn/jim/wallethelper/tools/soda/HeaderVision;->find([IIILcn/jim/wallethelper/tools/soda/HeaderVision$Template;IIII)Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    move-result-object v1

    .line 17
    new-instance v2, Lcn/jim/wallethelper/tools/soda/LiveVision$Result;

    iget-wide v3, v1, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    cmpl-double v3, v3, v13

    if-ltz v3, :cond_1

    const/4 v12, 0x1

    :cond_1
    move v14, v12

    iget-wide v3, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    iget-wide v5, v1, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    move-object v13, v2

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    invoke-direct/range {v13 .. v19}, Lcn/jim/wallethelper/tools/soda/LiveVision$Result;-><init>(ZLcn/jim/wallethelper/tools/soda/HeaderVision$Match;DD)V

    return-object v2

    .line 13
    :cond_2
    aget v4, v1, v3

    invoke-static {v4}, Lcn/jim/wallethelper/tools/soda/HeaderVision;->gray(I)I

    move-result v4

    aput v4, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method
