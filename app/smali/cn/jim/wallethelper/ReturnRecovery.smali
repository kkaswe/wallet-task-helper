.class public final Lcn/jim/wallethelper/ReturnRecovery;
.super Ljava/lang/Object;
.source "ReturnRecovery.java"


# instance fields
.field public attempts:I

.field private cleanupStage:I

.field private cleanupStarted:J

.field public message:Ljava/lang/String;

.field private targetLabel:Ljava/lang/String;

.field private targetPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blocked([FIIII)Z
    .locals 3

    .line 62
    const/4 v0, 0x0

    aget v1, p0, v0

    add-int/lit8 v2, p1, -0xc

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_36

    aget v1, p0, v0

    add-int/2addr p1, p3

    add-int/lit8 p1, p1, 0xc

    int-to-float p1, p1

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_36

    const/4 p1, 0x1

    aget p3, p0, p1

    const/4 v1, 0x3

    aget v2, p0, v1

    invoke-static {p3, v2}, Ljava/lang/Math;->max(FF)F

    move-result p3

    add-int/lit8 v2, p2, -0xc

    int-to-float v2, v2

    cmpl-float p3, p3, v2

    if-ltz p3, :cond_36

    aget p3, p0, p1

    aget p0, p0, v1

    invoke-static {p3, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    add-int/2addr p2, p4

    add-int/lit8 p2, p2, 0xc

    int-to-float p2, p2

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_36

    move v0, p1

    :cond_36
    return v0
.end method

.method public static eligible(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 21
    const/4 v0, 0x0

    if-eqz p0, :cond_52

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_52

    .line 22
    :cond_a
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    const-string p1, "com.hihonor.wallet"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    const-string p1, "cn.jim.wallethelper"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_50

    .line 24
    const-string p1, "android"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_50

    const-string p0, "systemui"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_50

    const-string p0, "launcher"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_50

    .line 25
    const-string p0, "permissioncontroller"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_50

    const-string p0, "packageinstaller"

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_50

    const/4 v0, 0x1

    goto :goto_51

    :cond_50
    nop

    .line 23
    :goto_51
    return v0

    .line 21
    :cond_52
    :goto_52
    return v0
.end method

.method public static findPath(Ljava/util/List;Ljava/lang/String;II)[F
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Ljava/lang/String;",
            "II)[F"
        }
    .end annotation

    .line 65
    nop

    .line 66
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 67
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v4

    if-nez v4, :cond_1c

    move-object/from16 v5, p1

    goto :goto_7

    .line 68
    :cond_1c
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_28

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_2c

    :cond_28
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    .line 69
    :cond_2c
    if-eqz v4, :cond_c2

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3f

    goto :goto_7

    .line 70
    :cond_3f
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 71
    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    move/from16 v7, p3

    int-to-float v8, v7

    const v9, 0x3cf5c28f    # 0.03f

    mul-float/2addr v9, v8

    cmpg-float v6, v6, v9

    if-ltz v6, :cond_7

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    const/high16 v9, 0x3e800000    # 0.25f

    mul-float/2addr v8, v9

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_7

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-gtz v6, :cond_66

    goto :goto_7

    .line 72
    :cond_66
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 73
    const/4 v6, 0x0

    :goto_6b
    if-eqz v3, :cond_bb

    const/4 v8, 0x7

    if-ge v6, v8, :cond_bb

    .line 74
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 75
    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v9, v4, Landroid/graphics/Rect;->top:I

    move v10, v9

    iget v9, v4, Landroid/graphics/Rect;->right:I

    move v11, v10

    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    move v12, v11

    iget v11, v8, Landroid/graphics/Rect;->left:I

    move v13, v12

    iget v12, v8, Landroid/graphics/Rect;->top:I

    move v14, v13

    iget v13, v8, Landroid/graphics/Rect;->right:I

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    move v15, v14

    move v14, v8

    move v8, v15

    move/from16 v15, p2

    move/from16 v16, p3

    invoke-static/range {v7 .. v16}, Lcn/jim/wallethelper/ReturnRecovery;->geometry(IIIIIIIIII)[F

    move-result-object v7

    .line 76
    if-eqz v7, :cond_a1

    invoke-static {v3, v7}, Lcn/jim/wallethelper/RecentCardGuard;->exposed(Landroid/view/accessibility/AccessibilityNodeInfo;[F)Z

    move-result v8

    if-nez v8, :cond_a1

    move-object v7, v1

    .line 77
    :cond_a1
    nop

    .line 78
    if-nez v7, :cond_a9

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    goto :goto_aa

    :cond_a9
    move-object v8, v1

    .line 79
    :goto_aa
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 80
    if-eqz v7, :cond_b5

    .line 81
    if-eqz v2, :cond_b2

    return-object v1

    .line 82
    :cond_b2
    move-object v2, v7

    move-object v3, v8

    goto :goto_bb

    .line 73
    :cond_b5
    add-int/lit8 v6, v6, 0x1

    move/from16 v7, p3

    move-object v3, v8

    goto :goto_6b

    .line 85
    :cond_bb
    :goto_bb
    if-eqz v3, :cond_c0

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 86
    :cond_c0
    goto/16 :goto_7

    .line 69
    :cond_c2
    move-object/from16 v5, p1

    goto/16 :goto_7

    .line 87
    :cond_c6
    return-object v2
.end method

.method public static geometry(IIIIIIIIII)[F
    .locals 4

    .line 90
    sub-int v0, p6, p4

    sub-int v1, p7, p5

    .line 91
    if-lez p8, :cond_81

    if-lez p9, :cond_81

    if-ltz p4, :cond_81

    if-gt p6, p8, :cond_81

    int-to-float v2, p5

    int-to-float p9, p9

    const v3, 0x3cf5c28f    # 0.03f

    mul-float/2addr v3, p9

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_81

    int-to-float p7, p7

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v3, p9

    cmpl-float p7, p7, v3

    if-gtz p7, :cond_81

    int-to-float p7, v0

    int-to-float p8, p8

    const v0, 0x3e3851ec    # 0.18f

    mul-float/2addr v0, p8

    cmpg-float v0, p7, v0

    if-ltz v0, :cond_81

    const v0, 0x3f733333    # 0.95f

    mul-float/2addr p8, v0

    cmpl-float p7, p7, p8

    if-gtz p7, :cond_81

    int-to-float p7, v1

    const p8, 0x3ecccccd    # 0.4f

    mul-float/2addr p8, p9

    cmpg-float p8, p7, p8

    if-ltz p8, :cond_81

    const p8, 0x3f59999a    # 0.85f

    mul-float/2addr p8, p9

    cmpl-float p8, p7, p8

    if-gtz p8, :cond_81

    if-lt p0, p4, :cond_81

    if-gt p2, p6, :cond_81

    if-lt p1, p5, :cond_81

    int-to-float p0, p3

    const p1, 0x3e6147ae    # 0.22f

    mul-float/2addr p1, p7

    add-float/2addr p1, v2

    cmpl-float p0, p0, p1

    if-lez p0, :cond_53

    goto :goto_81

    .line 94
    :cond_53
    add-int p0, p4, p6

    int-to-float p0, p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    .line 95
    const p1, 0x3f2e147b    # 0.68f

    mul-float/2addr p7, p1

    add-float/2addr v2, p7

    const p1, 0x3d75c28f    # 0.06f

    mul-float/2addr p9, p1

    add-int/lit8 p5, p5, 0x8

    int-to-float p1, p5

    invoke-static {p9, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    int-to-float p2, p4

    int-to-float p3, p6

    const/4 p4, 0x6

    new-array p4, p4, [F

    const/4 p5, 0x0

    aput p0, p4, p5

    const/4 p5, 0x1

    aput v2, p4, p5

    const/4 p5, 0x2

    aput p0, p4, p5

    const/4 p0, 0x3

    aput p1, p4, p0

    const/4 p0, 0x4

    aput p2, p4, p0

    const/4 p0, 0x5

    aput p3, p4, p0

    return-object p4

    .line 93
    :cond_81
    :goto_81
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public failed()V
    .locals 1

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcn/jim/wallethelper/ReturnRecovery;->cleanupStage:I

    const-string v0, "\u79fb\u9664\u624b\u52bf\u672a\u53d1\u9001\uff0c\u7ee7\u7eed\u5207\u56de\u94b1\u5305"

    iput-object v0, p0, Lcn/jim/wallethelper/ReturnRecovery;->message:Ljava/lang/String;

    return-void
.end method

.method public next(Ljava/util/List;IILandroid/view/View;J)[F
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;II",
            "Landroid/view/View;",
            "J)[F"
        }
    .end annotation

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jim/wallethelper/ReturnRecovery;->message:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Lcn/jim/wallethelper/ReturnRecovery;->waiting()Z

    move-result v1

    if-nez v1, :cond_a

    return-object v0

    .line 32
    :cond_a
    iget-wide v1, p0, Lcn/jim/wallethelper/ReturnRecovery;->cleanupStarted:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_14

    iput-wide p5, p0, Lcn/jim/wallethelper/ReturnRecovery;->cleanupStarted:J

    .line 33
    :cond_14
    iget-object v1, p0, Lcn/jim/wallethelper/ReturnRecovery;->targetLabel:Ljava/lang/String;

    invoke-static {p1, v1, p2, p3}, Lcn/jim/wallethelper/ReturnRecovery;->findPath(Ljava/util/List;Ljava/lang/String;II)[F

    move-result-object p1

    .line 34
    iget p2, p0, Lcn/jim/wallethelper/ReturnRecovery;->cleanupStage:I

    const/4 p3, 0x1

    const/4 v1, 0x2

    if-ne p2, p3, :cond_36

    .line 35
    iget-wide p2, p0, Lcn/jim/wallethelper/ReturnRecovery;->cleanupStarted:J

    sub-long/2addr p5, p2

    const-wide/16 p2, 0x5dc

    cmp-long p2, p5, p2

    if-gez p2, :cond_2a

    return-object v0

    .line 36
    :cond_2a
    iput v1, p0, Lcn/jim/wallethelper/ReturnRecovery;->cleanupStage:I

    .line 37
    if-nez p1, :cond_31

    const-string p1, "\u79fb\u9664\u624b\u52bf\u540e\u672a\u518d\u8bc6\u522b\u5230\u76ee\u6807\u5361\u7247\uff0c\u7ee7\u7eed\u5207\u56de\u94b1\u5305"

    goto :goto_33

    :cond_31
    const-string p1, "\u76ee\u6807\u5361\u7247\u4ecd\u5728\uff0c\u8df3\u8fc7\u6e05\u7406\u5e76\u5207\u56de\u94b1\u5305"

    :goto_33
    iput-object p1, p0, Lcn/jim/wallethelper/ReturnRecovery;->message:Ljava/lang/String;

    .line 38
    return-object v0

    .line 40
    :cond_36
    if-nez p1, :cond_48

    .line 41
    iget-wide p1, p0, Lcn/jim/wallethelper/ReturnRecovery;->cleanupStarted:J

    sub-long/2addr p5, p1

    const-wide/16 p1, 0xdac

    cmp-long p1, p5, p1

    if-ltz p1, :cond_47

    iput v1, p0, Lcn/jim/wallethelper/ReturnRecovery;->cleanupStage:I

    const-string p1, "\u672a\u53ef\u9760\u8bc6\u522b\u4f53\u9a8c\u5e94\u7528\u5361\u7247\uff0c\u8df3\u8fc7\u6e05\u7406\u5e76\u5207\u56de\u94b1\u5305"

    iput-object p1, p0, Lcn/jim/wallethelper/ReturnRecovery;->message:Ljava/lang/String;

    .line 42
    :cond_47
    return-object v0

    .line 44
    :cond_48
    if-eqz p4, :cond_b2

    invoke-virtual {p4}, Landroid/view/View;->isShown()Z

    move-result p2

    if-eqz p2, :cond_b2

    .line 45
    new-array p2, v1, [I

    invoke-virtual {p4, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 46
    const/4 v2, 0x0

    aget v3, p2, v2

    aget v4, p2, p3

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-static {p1, v3, v4, v5, v6}, Lcn/jim/wallethelper/ReturnRecovery;->blocked([FIIII)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 48
    const/4 v3, 0x5

    aget v4, p1, v3

    const/4 v5, 0x4

    aget v6, p1, v5

    sub-float/2addr v4, v6

    const v6, 0x3df5c28f    # 0.12f

    mul-float/2addr v4, v6

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 49
    aget v3, p1, v3

    sub-float/2addr v3, v4

    aput v3, p1, v1

    aput v3, p1, v2

    .line 50
    aget v3, p2, v2

    aget v6, p2, p3

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-static {p1, v3, v6, v7, v8}, Lcn/jim/wallethelper/ReturnRecovery;->blocked([FIIII)Z

    move-result v3

    if-eqz v3, :cond_99

    aget v3, p1, v5

    add-float/2addr v3, v4

    aput v3, p1, v1

    aput v3, p1, v2

    .line 52
    :cond_99
    aget v2, p2, v2

    aget p2, p2, p3

    invoke-virtual {p4}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result p4

    invoke-static {p1, v2, p2, v3, p4}, Lcn/jim/wallethelper/ReturnRecovery;->blocked([FIIII)Z

    move-result p2

    if-eqz p2, :cond_b2

    .line 53
    iput v1, p0, Lcn/jim/wallethelper/ReturnRecovery;->cleanupStage:I

    const-string p1, "\u63a7\u5236\u6761\u6321\u4f4f\u79fb\u9664\u624b\u52bf\uff0c\u8df3\u8fc7\u6e05\u7406\u5e76\u5207\u56de\u94b1\u5305"

    iput-object p1, p0, Lcn/jim/wallethelper/ReturnRecovery;->message:Ljava/lang/String;

    return-object v0

    .line 56
    :cond_b2
    iput p3, p0, Lcn/jim/wallethelper/ReturnRecovery;->cleanupStage:I

    iput-wide p5, p0, Lcn/jim/wallethelper/ReturnRecovery;->cleanupStarted:J

    .line 57
    iget-object p2, p0, Lcn/jim/wallethelper/ReturnRecovery;->targetLabel:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u5c1d\u8bd5\u4ece\u6700\u8fd1\u4efb\u52a1\u5212\u6389\uff1a"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/jim/wallethelper/ReturnRecovery;->message:Ljava/lang/String;

    .line 58
    return-object p1
.end method

.method public remember(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcn/jim/wallethelper/ReturnRecovery;->targetPackage:Ljava/lang/String;

    if-nez v0, :cond_32

    invoke-static {p1, p3}, Lcn/jim/wallethelper/ReturnRecovery;->eligible(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_32

    if-eqz p2, :cond_32

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_13

    goto :goto_32

    .line 17
    :cond_13
    const-string p3, "\u8363\u8000\u94b1\u5305"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_31

    const-string p3, "\u94b1\u5305"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_31

    const-string p3, "\u94b1\u5305\u4efb\u52a1\u52a9\u624b"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2c

    goto :goto_31

    .line 18
    :cond_2c
    iput-object p1, p0, Lcn/jim/wallethelper/ReturnRecovery;->targetPackage:Ljava/lang/String;

    iput-object p2, p0, Lcn/jim/wallethelper/ReturnRecovery;->targetLabel:Ljava/lang/String;

    .line 19
    return-void

    .line 17
    :cond_31
    :goto_31
    return-void

    .line 16
    :cond_32
    :goto_32
    return-void
.end method

.method public retryAllowed()Z
    .locals 2

    .line 27
    iget v0, p0, Lcn/jim/wallethelper/ReturnRecovery;->attempts:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public waiting()Z
    .locals 2

    .line 28
    iget-object v0, p0, Lcn/jim/wallethelper/ReturnRecovery;->targetPackage:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget v0, p0, Lcn/jim/wallethelper/ReturnRecovery;->cleanupStage:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method
