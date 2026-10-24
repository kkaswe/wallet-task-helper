.class public final Lcn/jim/wallethelper/RecentCardGuard;
.super Ljava/lang/Object;
.source "RecentCardGuard.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exposed(Landroid/view/accessibility/AccessibilityNodeInfo;[F)Z
    .locals 11

    .line 12
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 13
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 16
    :cond_8
    :try_start_8
    const-class v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v3, "getDrawingOrder"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 17
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1e} :catch_ba
    .catchall {:try_start_8 .. :try_end_1e} :catchall_b5

    .line 18
    if-gtz v3, :cond_24

    .line 37
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 18
    return v1

    .line 19
    :cond_24
    nop

    .line 20
    move v4, v1

    move v5, v4

    :goto_27
    :try_start_27
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_b0

    .line 21
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_31} :catch_ba
    .catchall {:try_start_27 .. :try_end_31} :catchall_b5

    .line 22
    if-nez v6, :cond_37

    .line 37
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 22
    return v1

    .line 24
    :cond_37
    :try_start_37
    invoke-virtual {v6, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_ab

    const/4 v8, 0x1

    if-eqz v7, :cond_43

    .line 32
    :try_start_3e
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_ba
    .catchall {:try_start_3e .. :try_end_41} :catchall_b5

    .line 24
    move v5, v8

    goto :goto_a1

    .line 25
    :cond_43
    :try_start_43
    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 26
    if-lez v7, :cond_a4

    if-ne v7, v3, :cond_54

    goto :goto_a4

    .line 27
    :cond_54
    if-lt v7, v3, :cond_9d

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v7

    if-nez v7, :cond_5d

    goto :goto_9d

    .line 28
    :cond_5d
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 30
    aget v9, p1, v1

    iget v10, v7, Landroid/graphics/Rect;->left:I

    add-int/lit8 v10, v10, -0x10

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_99

    aget v9, p1, v1

    iget v10, v7, Landroid/graphics/Rect;->right:I

    add-int/lit8 v10, v10, 0x10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_99

    aget v9, p1, v8

    iget v10, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v10, v10, -0x10

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_99

    aget v8, p1, v8

    iget v7, v7, Landroid/graphics/Rect;->bottom:I
    :try_end_8a
    .catchall {:try_start_43 .. :try_end_8a} :catchall_ab

    add-int/lit8 v7, v7, 0x10

    int-to-float v7, v7

    cmpg-float v7, v8, v7

    if-gtz v7, :cond_99

    .line 31
    nop

    .line 32
    :try_start_92
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_95} :catch_ba
    .catchall {:try_start_92 .. :try_end_95} :catchall_b5

    .line 37
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 31
    return v1

    .line 32
    :cond_99
    :try_start_99
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_a1

    :cond_9d
    :goto_9d
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 27
    nop

    .line 20
    :goto_a1
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 32
    :cond_a4
    :goto_a4
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a7} :catch_ba
    .catchall {:try_start_99 .. :try_end_a7} :catchall_b5

    .line 37
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 26
    return v1

    .line 32
    :catchall_ab
    move-exception p0

    :try_start_ac
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    throw p0
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b0} :catch_ba
    .catchall {:try_start_ac .. :try_end_b0} :catchall_b5

    .line 34
    :cond_b0
    nop

    .line 37
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 34
    return v5

    .line 37
    :catchall_b5
    move-exception p0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    throw p0

    .line 35
    :catch_ba
    move-exception p0

    .line 36
    nop

    .line 37
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 36
    return v1
.end method
