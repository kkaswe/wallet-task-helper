.class public final Lcn/jim/wallethelper/RewardDismissRules;
.super Ljava/lang/Object;
.source "RewardDismissRules.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static describe([F)Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f39\u7a97\u5916\u7f51\u9875\u70b9\u6309\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    aget v1, p0, v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    aget p0, p0, v1

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static point(Ljava/util/List;III)[F
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/jim/wallethelper/TaskRules$Item;",
            ">;III)[F"
        }
    .end annotation

    .line 7
    const/4 v0, 0x0

    if-ltz p3, :cond_b

    const/4 v1, 0x6

    if-ge p3, v1, :cond_b

    if-lez p1, :cond_b

    if-gtz p2, :cond_0

    goto/16 :goto_4

    .line 8
    :cond_0
    nop

    .line 9
    nop

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v4, p2

    move v5, v4

    move v3, v1

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_8

    .line 17
    if-ltz v2, :cond_7

    if-nez v3, :cond_2

    goto :goto_3

    .line 18
    :cond_2
    div-int/lit8 p0, p1, 0x64

    const/16 p2, 0x8

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr v2, p0

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int/2addr p2, p0

    .line 19
    sub-int/2addr p2, v2

    const/4 v3, 0x2

    mul-int/2addr p0, v3

    if-ge p2, p0, :cond_3

    return-object v0

    .line 20
    :cond_3
    int-to-float p0, p1

    rem-int/lit8 p1, p3, 0x3

    const/high16 v0, 0x3f000000    # 0.5f

    if-nez p1, :cond_4

    const p1, 0x3f666666    # 0.9f

    goto :goto_1

    :cond_4
    if-ne p1, v7, :cond_5

    const p1, 0x3dcccccd    # 0.1f

    goto :goto_1

    :cond_5
    move p1, v0

    :goto_1
    mul-float/2addr p0, p1

    .line 21
    int-to-float p1, v2

    int-to-float p2, p2

    const/4 v2, 0x3

    if-ge p3, v2, :cond_6

    goto :goto_2

    :cond_6
    const v0, 0x3f3851ec    # 0.72f

    :goto_2
    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    .line 24
    new-array p2, v3, [F

    aput p0, p2, v1

    aput p1, p2, v7

    return-object p2

    .line 17
    :cond_7
    :goto_3
    return-object v0

    .line 10
    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/jim/wallethelper/TaskRules$Item;

    .line 11
    const-string v8, "com.hihonor.wallet:id/tv_title"

    iget-object v9, v6, Lcn/jim/wallethelper/TaskRules$Item;->viewId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget v8, v6, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    iget v9, v6, Lcn/jim/wallethelper/TaskRules$Item;->h:I

    add-int/2addr v8, v9

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 12
    :cond_9
    const-string v8, "com.hihonor.wallet:id/content"

    iget-object v9, v6, Lcn/jim/wallethelper/TaskRules$Item;->viewId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget v8, v6, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 13
    :cond_a
    const-string v8, "\u9886\u5956\u6210\u529f\u5f39\u7a97\u80cc\u666f"

    iget-object v9, v6, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget v8, v6, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    if-lez v8, :cond_1

    iget v8, v6, Lcn/jim/wallethelper/TaskRules$Item;->w:I

    div-int/lit8 v9, p1, 0x2

    if-le v8, v9, :cond_1

    iget v8, v6, Lcn/jim/wallethelper/TaskRules$Item;->h:I

    div-int/lit8 v9, p2, 0x4

    if-le v8, v9, :cond_1

    .line 14
    iget v3, v6, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v3, v7

    goto/16 :goto_0

    .line 7
    :cond_b
    :goto_4
    return-object v0
.end method
