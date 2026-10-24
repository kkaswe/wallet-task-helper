.class public final Lcn/jim/wallethelper/tools/soda/PopupVision;
.super Ljava/lang/Object;
.source "PopupVision.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jim/wallethelper/tools/soda/PopupVision$Result;
    }
.end annotation


# instance fields
.field private final again:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

.field private final claim:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

.field private final coinClaim:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

.field private final coinExit:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

.field private final coinPrompt:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

.field private final exit:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

.field private final free:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;


# direct methods
.method public constructor <init>(Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/PopupVision;->claim:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    iput-object p2, p0, Lcn/jim/wallethelper/tools/soda/PopupVision;->free:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    iput-object p3, p0, Lcn/jim/wallethelper/tools/soda/PopupVision;->again:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    iput-object p4, p0, Lcn/jim/wallethelper/tools/soda/PopupVision;->exit:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    iput-object p5, p0, Lcn/jim/wallethelper/tools/soda/PopupVision;->coinClaim:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    iput-object p6, p0, Lcn/jim/wallethelper/tools/soda/PopupVision;->coinPrompt:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    iput-object p7, p0, Lcn/jim/wallethelper/tools/soda/PopupVision;->coinExit:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    .line 11
    return-void
.end method

.method private findExit([III)Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;
    .locals 11

    .line 38
    nop

    .line 41
    div-int/lit8 v0, p3, 0x2

    const/4 v1, 0x0

    move v7, v0

    :goto_0
    mul-int/lit8 v0, p3, 0x4

    div-int/lit8 v0, v0, 0x5

    if-lt v7, v0, :cond_0

    .line 45
    return-object v1

    .line 42
    :cond_0
    iget-object v5, p0, Lcn/jim/wallethelper/tools/soda/PopupVision;->coinExit:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    div-int/lit8 v6, p2, 0x4

    mul-int/lit8 v2, p2, 0x3

    div-int/lit8 v8, v2, 0x4

    add-int/lit8 v10, v7, 0x64

    iget-object v2, p0, Lcn/jim/wallethelper/tools/soda/PopupVision;->coinExit:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    iget v2, v2, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;->height:I

    add-int/2addr v2, v10

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v2 .. v9}, Lcn/jim/wallethelper/tools/soda/HeaderVision;->find([IIILcn/jim/wallethelper/tools/soda/HeaderVision$Template;IIII)Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    move-result-object v0

    .line 43
    if-eqz v1, :cond_1

    iget-wide v2, v0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    iget-wide v4, v1, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    :cond_1
    move-object v1, v0

    .line 41
    :cond_2
    move v7, v10

    goto :goto_0
.end method


# virtual methods
.method public detect([III)Lcn/jim/wallethelper/tools/soda/PopupVision$Result;
    .locals 30

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
    if-lt v3, v2, :cond_8

    .line 16
    invoke-direct {v0, v11, v9, v10}, Lcn/jim/wallethelper/tools/soda/PopupVision;->findExit([III)Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    move-result-object v15

    .line 17
    iget-wide v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    const-wide v13, 0x3fea8f5c28f5c28fL    # 0.83

    cmpl-double v1, v1, v13

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-ltz v1, :cond_2

    .line 18
    iget-object v4, v0, Lcn/jim/wallethelper/tools/soda/PopupVision;->coinPrompt:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    iget v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->x:I

    add-int/lit8 v5, v1, -0x37

    iget v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->y:I

    add-int/lit16 v6, v1, -0xd2

    .line 19
    iget v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->x:I

    add-int/lit16 v7, v1, 0x8c

    iget v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->y:I

    add-int/lit8 v8, v1, -0x4b

    .line 18
    move-object v1, v11

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {v1 .. v8}, Lcn/jim/wallethelper/tools/soda/HeaderVision;->find([IIILcn/jim/wallethelper/tools/soda/HeaderVision$Template;IIII)Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    move-result-object v8

    .line 20
    iget-wide v1, v8, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    cmpl-double v1, v1, v13

    if-ltz v1, :cond_2

    .line 21
    iget-object v4, v0, Lcn/jim/wallethelper/tools/soda/PopupVision;->coinClaim:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    iget v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->x:I

    add-int/lit8 v5, v1, -0x23

    iget v1, v8, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->y:I

    iget v2, v8, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->height:I

    add-int/2addr v1, v2

    add-int/lit8 v6, v1, 0x14

    .line 22
    iget v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->x:I

    iget v2, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->width:I

    add-int/2addr v1, v2

    add-int/lit8 v7, v1, 0x23

    iget v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->y:I

    add-int/lit8 v18, v1, -0xa

    .line 21
    move-object v1, v11

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v8

    move/from16 v8, v18

    invoke-static/range {v1 .. v8}, Lcn/jim/wallethelper/tools/soda/HeaderVision;->find([IIILcn/jim/wallethelper/tools/soda/HeaderVision$Template;IIII)Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    move-result-object v1

    .line 23
    iget-wide v2, v1, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    cmpl-double v2, v2, v13

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->centerX()I

    move-result v2

    invoke-virtual {v15}, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->centerX()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x28

    if-ge v2, v3, :cond_0

    move/from16 v12, v16

    .line 25
    :cond_0
    new-instance v2, Lcn/jim/wallethelper/tools/soda/PopupVision$Result;

    if-eqz v12, :cond_1

    move-object/from16 v17, v1

    :cond_1
    iget-wide v3, v1, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    const-wide/16 v19, 0x0

    iget-wide v5, v9, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    const/4 v14, 0x1

    move-object v13, v2

    move-object v1, v15

    move-object/from16 v15, v17

    move-object/from16 v16, v1

    move-wide/from16 v17, v3

    move-wide/from16 v21, v5

    invoke-direct/range {v13 .. v22}, Lcn/jim/wallethelper/tools/soda/PopupVision$Result;-><init>(ZLcn/jim/wallethelper/tools/soda/HeaderVision$Match;Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;DDD)V

    return-object v2

    .line 28
    :cond_2
    iget-object v4, v0, Lcn/jim/wallethelper/tools/soda/PopupVision;->claim:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    div-int/lit8 v5, v9, 0x4

    div-int/lit8 v6, v10, 0x3

    mul-int/lit8 v1, v9, 0x3

    div-int/lit8 v7, v1, 0x4

    mul-int/lit8 v1, v10, 0x4

    div-int/lit8 v8, v1, 0x5

    move-object v1, v11

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {v1 .. v8}, Lcn/jim/wallethelper/tools/soda/HeaderVision;->find([IIILcn/jim/wallethelper/tools/soda/HeaderVision$Template;IIII)Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    move-result-object v15

    .line 29
    iget-wide v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    cmpg-double v1, v1, v13

    if-gez v1, :cond_3

    new-instance v1, Lcn/jim/wallethelper/tools/soda/PopupVision$Result;

    iget-wide v2, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v18, v1

    move-wide/from16 v22, v2

    invoke-direct/range {v18 .. v27}, Lcn/jim/wallethelper/tools/soda/PopupVision$Result;-><init>(ZLcn/jim/wallethelper/tools/soda/HeaderVision$Match;Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;DDD)V

    return-object v1

    .line 30
    :cond_3
    iget-object v4, v0, Lcn/jim/wallethelper/tools/soda/PopupVision;->free:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    iget v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->x:I

    add-int/lit8 v1, v1, -0x23

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->y:I

    add-int/lit16 v1, v1, -0x8c

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->x:I

    add-int/lit16 v1, v1, 0x96

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->y:I

    add-int/lit8 v8, v1, -0xc

    move-object v1, v11

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {v1 .. v8}, Lcn/jim/wallethelper/tools/soda/HeaderVision;->find([IIILcn/jim/wallethelper/tools/soda/HeaderVision$Template;IIII)Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    move-result-object v8

    .line 31
    iget-object v4, v0, Lcn/jim/wallethelper/tools/soda/PopupVision;->again:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    iget v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->x:I

    add-int/lit8 v1, v1, -0x46

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->y:I

    add-int/lit16 v1, v1, -0xb4

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->x:I

    add-int/lit8 v1, v1, 0x5a

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->y:I

    add-int/lit8 v18, v1, -0x1e

    move-object v1, v11

    move-object v12, v8

    move/from16 v8, v18

    invoke-static/range {v1 .. v8}, Lcn/jim/wallethelper/tools/soda/HeaderVision;->find([IIILcn/jim/wallethelper/tools/soda/HeaderVision$Template;IIII)Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    move-result-object v8

    .line 32
    iget-wide v1, v12, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    cmpl-double v1, v1, v13

    if-ltz v1, :cond_4

    iget-wide v1, v8, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    cmpl-double v1, v1, v13

    if-ltz v1, :cond_4

    move/from16 v21, v16

    goto :goto_1

    :cond_4
    const/16 v21, 0x0

    .line 33
    :goto_1
    if-eqz v21, :cond_5

    iget-object v4, v0, Lcn/jim/wallethelper/tools/soda/PopupVision;->exit:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    iget v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->x:I

    add-int/lit8 v5, v1, -0x14

    iget v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->y:I

    iget v2, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->height:I

    add-int v6, v1, v2

    iget v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->x:I

    iget v2, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->width:I

    add-int/2addr v1, v2

    add-int/lit8 v7, v1, 0x1e

    iget v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->y:I

    iget v2, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->height:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x50

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v16

    move-object v1, v11

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v8

    move/from16 v8, v16

    invoke-static/range {v1 .. v8}, Lcn/jim/wallethelper/tools/soda/HeaderVision;->find([IIILcn/jim/wallethelper/tools/soda/HeaderVision$Template;IIII)Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    move-result-object v1

    goto :goto_2

    :cond_5
    move-object v9, v8

    move-object/from16 v1, v17

    .line 34
    :goto_2
    if-eqz v1, :cond_6

    iget-wide v2, v1, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    cmpg-double v2, v2, v13

    if-gez v2, :cond_6

    move-object/from16 v23, v17

    goto :goto_3

    .line 35
    :cond_6
    move-object/from16 v23, v1

    :goto_3
    new-instance v1, Lcn/jim/wallethelper/tools/soda/PopupVision$Result;

    if-eqz v21, :cond_7

    move-object/from16 v22, v15

    goto :goto_4

    :cond_7
    move-object/from16 v22, v17

    :goto_4
    iget-wide v2, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    iget-wide v4, v12, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    iget-wide v6, v9, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    move-object/from16 v20, v1

    move-wide/from16 v24, v2

    move-wide/from16 v26, v4

    move-wide/from16 v28, v6

    invoke-direct/range {v20 .. v29}, Lcn/jim/wallethelper/tools/soda/PopupVision$Result;-><init>(ZLcn/jim/wallethelper/tools/soda/HeaderVision$Match;Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;DDD)V

    return-object v1

    .line 13
    :cond_8
    aget v4, v1, v3

    invoke-static {v4}, Lcn/jim/wallethelper/tools/soda/HeaderVision;->gray(I)I

    move-result v4

    aput v4, v11, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v12, 0x0

    goto/16 :goto_0
.end method
