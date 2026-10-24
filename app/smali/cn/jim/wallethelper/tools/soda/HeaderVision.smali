.class public final Lcn/jim/wallethelper/tools/soda/HeaderVision;
.super Ljava/lang/Object;
.source "HeaderVision.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;,
        Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;,
        Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;
    }
.end annotation


# instance fields
.field private final close:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

.field private final success:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

.field private final waiting:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;


# direct methods
.method public constructor <init>(Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision;->success:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    iput-object p2, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision;->waiting:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    iput-object p3, p0, Lcn/jim/wallethelper/tools/soda/HeaderVision;->close:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    return-void
.end method

.method public static find([IIILcn/jim/wallethelper/tools/soda/HeaderVision$Template;IIII)Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;
    .locals 26

    .line 31
    move/from16 v1, p1

    move-object/from16 v3, p3

    const/4 v0, 0x0

    move/from16 v2, p4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v4, p5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v5, p6

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move/from16 v6, p2

    move/from16 v7, p7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 32
    iget v8, v3, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;->width:I

    iget v9, v3, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;->height:I

    mul-int/2addr v8, v9

    .line 34
    sub-int v9, v7, v4

    const/16 v10, 0xa0

    const/4 v11, 0x1

    if-le v9, v10, :cond_0

    const/4 v9, 0x2

    goto :goto_0

    :cond_0
    move v9, v11

    .line 35
    :goto_0
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    move v10, v0

    move v14, v10

    move v15, v4

    :goto_1
    iget v0, v3, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;->height:I

    sub-int v0, v7, v0

    if-le v15, v0, :cond_2

    .line 43
    if-le v9, v11, :cond_1

    const-wide v8, 0x3fe199999999999aL    # 0.55

    cmpl-double v0, v12, v8

    if-lez v0, :cond_1

    add-int/lit8 v0, v10, -0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v0, v14, -0x2

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v0, v3, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;->width:I

    add-int/2addr v10, v0

    add-int/lit8 v10, v10, 0x3

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget v0, v3, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;->height:I

    add-int/2addr v14, v0

    add-int/lit8 v14, v14, 0x3

    invoke-static {v7, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move v4, v8

    move v5, v9

    move v6, v10

    invoke-static/range {v0 .. v7}, Lcn/jim/wallethelper/tools/soda/HeaderVision;->find([IIILcn/jim/wallethelper/tools/soda/HeaderVision$Template;IIII)Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    move-result-object v0

    return-object v0

    .line 44
    :cond_1
    new-instance v0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    iget v1, v3, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;->width:I

    iget v2, v3, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;->height:I

    move-object/from16 p0, v0

    move-wide/from16 p1, v12

    move/from16 p3, v10

    move/from16 p4, v14

    move/from16 p5, v1

    move/from16 p6, v2

    invoke-direct/range {p0 .. p6}, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;-><init>(DIIII)V

    return-object v0

    .line 35
    :cond_2
    move v0, v2

    :goto_2
    iget v11, v3, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;->width:I

    sub-int v11, v5, v11

    if-le v0, v11, :cond_3

    add-int/2addr v15, v9

    const/4 v0, 0x0

    const/4 v11, 0x1

    goto :goto_1

    .line 36
    :cond_3
    nop

    .line 37
    const-wide/16 v16, 0x0

    move-wide/from16 v18, v16

    move-wide/from16 v20, v18

    const/4 v11, 0x0

    const/16 v22, 0x0

    :goto_3
    move/from16 v23, v2

    iget v2, v3, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;->height:I

    if-lt v11, v2, :cond_6

    .line 38
    mul-double v18, v18, v18

    move/from16 p5, v4

    move/from16 p6, v5

    int-to-double v4, v8

    div-double v18, v18, v4

    sub-double v16, v16, v18

    .line 39
    mul-int/lit8 v2, v8, 0x12

    int-to-double v4, v2

    cmpg-double v2, v16, v4

    if-gez v2, :cond_4

    goto :goto_4

    .line 40
    :cond_4
    iget-wide v4, v3, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;->energy:D

    mul-double v16, v16, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double v20, v20, v4

    .line 41
    cmpl-double v2, v20, v12

    if-lez v2, :cond_5

    move v10, v0

    move v14, v15

    move-wide/from16 v12, v20

    .line 35
    :cond_5
    :goto_4
    add-int/2addr v0, v9

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v2, v23

    const/4 v11, 0x1

    goto :goto_2

    .line 37
    :cond_6
    move/from16 p5, v4

    move/from16 p6, v5

    add-int v2, v15, v11

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    const/4 v4, 0x0

    :goto_5
    iget v5, v3, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;->width:I

    if-lt v4, v5, :cond_7

    add-int/lit8 v11, v11, 0x1

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v2, v23

    goto :goto_3

    :cond_7
    add-int v5, v2, v4

    aget v5, p0, v5

    move/from16 p7, v0

    int-to-double v0, v5

    add-double v18, v18, v0

    mul-int/2addr v5, v5

    int-to-double v5, v5

    add-double v16, v16, v5

    iget-object v5, v3, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;->weights:[D

    add-int/lit8 v6, v22, 0x1

    aget-wide v24, v5, v22

    mul-double v0, v0, v24

    add-double v20, v20, v0

    add-int/lit8 v4, v4, 0x1

    move/from16 v1, p1

    move/from16 v0, p7

    move/from16 v22, v6

    move/from16 v6, p2

    goto :goto_5
.end method

.method public static gray(I)I
    .locals 2

    .line 18
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    mul-int/lit8 v0, v0, 0x4d

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0x96

    add-int/2addr v0, v1

    and-int/lit16 p0, p0, 0xff

    mul-int/lit8 p0, p0, 0x1d

    add-int/2addr v0, p0

    shr-int/lit8 p0, v0, 0x8

    return p0
.end method


# virtual methods
.method public detect([III)Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;
    .locals 20

    .line 22
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v9, p2

    move/from16 v10, p3

    array-length v2, v1

    new-array v11, v2, [I

    const/4 v12, 0x0

    move v3, v12

    :goto_0
    if-lt v3, v2, :cond_4

    .line 23
    iget-object v4, v0, Lcn/jim/wallethelper/tools/soda/HeaderVision;->waiting:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    div-int/lit8 v5, v9, 0x2

    add-int/lit8 v13, v9, -0x5

    add-int/lit8 v14, v10, -0x5

    const/16 v6, 0xa

    move-object v1, v11

    move/from16 v2, p2

    move/from16 v3, p3

    move v7, v13

    move v8, v14

    invoke-static/range {v1 .. v8}, Lcn/jim/wallethelper/tools/soda/HeaderVision;->find([IIILcn/jim/wallethelper/tools/soda/HeaderVision$Template;IIII)Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    move-result-object v15

    .line 24
    iget-object v4, v0, Lcn/jim/wallethelper/tools/soda/HeaderVision;->success:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    mul-int/lit8 v1, v9, 0x3

    div-int/lit8 v5, v1, 0x5

    move-object v1, v11

    invoke-static/range {v1 .. v8}, Lcn/jim/wallethelper/tools/soda/HeaderVision;->find([IIILcn/jim/wallethelper/tools/soda/HeaderVision$Template;IIII)Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    move-result-object v13

    .line 25
    iget-wide v1, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    const-wide v3, 0x3fe999999999999aL    # 0.8

    cmpl-double v1, v1, v3

    const/4 v14, 0x1

    if-ltz v1, :cond_0

    move/from16 v16, v14

    goto :goto_1

    :cond_0
    move/from16 v16, v12

    .line 26
    :goto_1
    nop

    .line 27
    iget-wide v1, v13, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    const-wide v17, 0x3feae147ae147ae1L    # 0.84

    cmpl-double v1, v1, v17

    const/16 v19, 0x0

    if-ltz v1, :cond_2

    if-nez v16, :cond_2

    iget-object v4, v0, Lcn/jim/wallethelper/tools/soda/HeaderVision;->close:Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    iget v1, v13, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->x:I

    iget v2, v13, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->width:I

    add-int v5, v1, v2

    iget v1, v13, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->y:I

    add-int/lit8 v1, v1, -0x4

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v1, v13, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->x:I

    iget v2, v13, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->width:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x19

    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget v1, v13, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->y:I

    iget v2, v13, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->height:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    move-object v1, v11

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {v1 .. v8}, Lcn/jim/wallethelper/tools/soda/HeaderVision;->find([IIILcn/jim/wallethelper/tools/soda/HeaderVision$Template;IIII)Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    move-result-object v1

    iget-wide v2, v1, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    const-wide v4, 0x3fea8f5c28f5c28fL    # 0.83

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    move-object/from16 v5, v19

    goto :goto_2

    :cond_1
    move-object v5, v1

    goto :goto_2

    .line 28
    :cond_2
    move-object/from16 v5, v19

    :goto_2
    new-instance v1, Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;

    iget-wide v2, v13, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    cmpl-double v2, v2, v17

    if-ltz v2, :cond_3

    if-nez v16, :cond_3

    move v4, v14

    goto :goto_3

    :cond_3
    move v4, v12

    :goto_3
    iget-wide v6, v13, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    iget-wide v8, v15, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->score:D

    move-object v2, v1

    move/from16 v3, v16

    invoke-direct/range {v2 .. v9}, Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;-><init>(ZZLcn/jim/wallethelper/tools/soda/HeaderVision$Match;DD)V

    return-object v1

    .line 22
    :cond_4
    aget v4, v1, v3

    invoke-static {v4}, Lcn/jim/wallethelper/tools/soda/HeaderVision;->gray(I)I

    move-result v4

    aput v4, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method
