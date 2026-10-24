.class public final Lcn/jim/wallethelper/WalletRestart;
.super Ljava/lang/Object;
.source "WalletRestart.java"


# instance fields
.field private final height:I

.field private final homePackage:Ljava/lang/String;

.field private lastMove:J

.field private lastTrace:J

.field public message:Ljava/lang/String;

.field private moves:I

.field private relaunched:Z

.field private stableCard:[F

.field private stableSince:J

.field private stage:I

.field private started:J

.field public swipePath:[F

.field private final walletLabel:Ljava/lang/String;

.field private final walletPackage:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcn/jim/wallethelper/WalletRestart;->walletPackage:Ljava/lang/String;

    iput-object p2, p0, Lcn/jim/wallethelper/WalletRestart;->walletLabel:Ljava/lang/String;

    iput-object p3, p0, Lcn/jim/wallethelper/WalletRestart;->homePackage:Ljava/lang/String;

    .line 27
    iput p4, p0, Lcn/jim/wallethelper/WalletRestart;->width:I

    iput p5, p0, Lcn/jim/wallethelper/WalletRestart;->height:I

    .line 28
    return-void
.end method

.method public static clickSavings(Ljava/util/List;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 157
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_70

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 158
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 159
    if-eqz v2, :cond_4

    const-string v3, "\u7701\u94b1"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_4

    .line 160
    :cond_24
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 161
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p1

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3a

    goto :goto_4

    .line 162
    :cond_3a
    nop

    .line 163
    move-object v2, v0

    move v3, v1

    :goto_3d
    if-eqz v2, :cond_6f

    const/4 v4, 0x4

    if-ge v3, v4, :cond_6f

    .line 164
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_59

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v4

    if-eqz v4, :cond_59

    .line 165
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v4

    if-eqz v4, :cond_59

    move v4, v5

    goto :goto_5a

    :cond_59
    move v4, v1

    .line 166
    :goto_5a
    if-eqz v4, :cond_5e

    const/4 v6, 0x0

    goto :goto_62

    :cond_5e
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    .line 167
    :goto_62
    if-eq v2, v0, :cond_67

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 168
    :cond_67
    if-eqz v4, :cond_6a

    return v5

    .line 169
    :cond_6a
    nop

    .line 163
    add-int/lit8 v3, v3, 0x1

    move-object v2, v6

    goto :goto_3d

    .line 171
    :cond_6f
    goto :goto_4

    .line 172
    :cond_70
    return v1
.end method

.method private launchViaTool(Landroid/accessibilityservice/AccessibilityService;)Z
    .locals 0

    .line 136
    invoke-static {p1}, Lcn/jim/wallethelper/WalletEntry;->open(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 137
    if-nez p1, :cond_8

    const/4 p1, 0x1

    return p1

    .line 138
    :cond_8
    iput-object p1, p0, Lcn/jim/wallethelper/WalletRestart;->message:Ljava/lang/String;

    const/4 p1, 0x0

    return p1
.end method

.method private static moved([F[F)Z
    .locals 4

    .line 205
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_19

    aget v2, p0, v1

    aget v3, p1, v1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41000000    # 8.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 206
    :cond_19
    return v0
.end method

.method public static taskPage(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)Z"
        }
    .end annotation

    .line 147
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 148
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 149
    if-nez v0, :cond_17

    goto :goto_4

    .line 150
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "\u8fde\u7eed2\u5929\u4f53\u9a8c\u5e94\u7528"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "\u4e0b\u8f7d\u5e76\u4f53\u9a8c\u5e94\u752815\u79d2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "\u6d4f\u89c8\u5e94\u752810\u79d2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_35

    .line 152
    :cond_34
    goto :goto_4

    .line 151
    :cond_35
    :goto_35
    const/4 p0, 0x1

    return p0

    .line 153
    :cond_37
    const/4 p0, 0x0

    return p0
.end method

.method private timedOut(JJLjava/lang/String;)I
    .locals 2

    .line 142
    iget-wide v0, p0, Lcn/jim/wallethelper/WalletRestart;->started:J

    sub-long/2addr p1, v0

    cmp-long p1, p1, p3

    if-gez p1, :cond_9

    const/4 p1, 0x0

    return p1

    .line 143
    :cond_9
    iput-object p5, p0, Lcn/jim/wallethelper/WalletRestart;->message:Ljava/lang/String;

    const/4 p1, -0x1

    return p1
.end method

.method public static walletCard(Ljava/util/List;Ljava/lang/String;II)[F
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

    .line 177
    move-object/from16 v0, p1

    .line 178
    const/4 v1, 0x0

    if-eqz p0, :cond_d7

    if-nez v0, :cond_9

    goto/16 :goto_d7

    .line 179
    :cond_9
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v1

    :cond_e
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 180
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v5

    if-nez v5, :cond_21

    goto :goto_e

    .line 181
    :cond_21
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 182
    if-eqz v5, :cond_2d

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_31

    :cond_2d
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    .line 183
    :cond_31
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_42

    goto :goto_e

    .line 184
    :cond_42
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 185
    iget v6, v5, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    move/from16 v7, p3

    int-to-float v8, v7

    const v9, 0x3cf5c28f    # 0.03f

    mul-float/2addr v9, v8

    cmpg-float v6, v6, v9

    if-ltz v6, :cond_e

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    const/high16 v9, 0x3e800000    # 0.25f

    mul-float/2addr v8, v9

    cmpl-float v6, v6, v8

    if-gtz v6, :cond_e

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-gtz v6, :cond_69

    goto :goto_e

    .line 186
    :cond_69
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 187
    const/4 v6, 0x0

    :goto_6e
    if-eqz v4, :cond_cf

    const/4 v8, 0x7

    if-ge v6, v8, :cond_cf

    .line 188
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 189
    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v9, v5, Landroid/graphics/Rect;->top:I

    move v10, v9

    iget v9, v5, Landroid/graphics/Rect;->right:I

    move v11, v10

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

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

    .line 191
    if-eqz v7, :cond_a4

    invoke-static {v4, v7}, Lcn/jim/wallethelper/RecentCardGuard;->exposed(Landroid/view/accessibility/AccessibilityNodeInfo;[F)Z

    move-result v8

    if-nez v8, :cond_a4

    move-object v7, v1

    .line 192
    :cond_a4
    if-nez v7, :cond_ab

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    goto :goto_ac

    :cond_ab
    move-object v8, v1

    .line 193
    :goto_ac
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 194
    if-eqz v7, :cond_c9

    .line 195
    if-eqz v3, :cond_c6

    const/4 v4, 0x4

    aget v5, v3, v4

    aget v4, v7, v4

    cmpl-float v4, v5, v4

    if-nez v4, :cond_c5

    const/4 v4, 0x5

    aget v3, v3, v4

    aget v4, v7, v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_c6

    :cond_c5
    return-object v1

    .line 196
    :cond_c6
    move-object v3, v7

    move-object v4, v8

    goto :goto_cf

    .line 187
    :cond_c9
    add-int/lit8 v6, v6, 0x1

    move/from16 v7, p3

    move-object v4, v8

    goto :goto_6e

    .line 199
    :cond_cf
    :goto_cf
    if-eqz v4, :cond_d4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 200
    :cond_d4
    goto/16 :goto_e

    .line 201
    :cond_d6
    return-object v3

    .line 178
    :cond_d7
    :goto_d7
    return-object v1
.end method

.method private static walletTitleX(Ljava/util/List;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 210
    const/4 v0, -0x1

    if-eqz p0, :cond_53

    if-nez p1, :cond_6

    goto :goto_53

    .line 211
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 212
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_a

    .line 213
    :cond_1d
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 214
    if-eqz v2, :cond_29

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2d

    :cond_29
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 215
    :cond_2d
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    goto :goto_a

    .line 216
    :cond_3e
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 217
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_51

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    return p0

    .line 218
    :cond_51
    goto :goto_a

    .line 219
    :cond_52
    return v0

    .line 210
    :cond_53
    :goto_53
    return v0
.end method


# virtual methods
.method public begin(Landroid/accessibilityservice/AccessibilityService;)Z
    .locals 2

    .line 31
    iget-object v0, p0, Lcn/jim/wallethelper/WalletRestart;->walletPackage:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcn/jim/wallethelper/WalletRestart;->walletLabel:Ljava/lang/String;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcn/jim/wallethelper/WalletRestart;->homePackage:Ljava/lang/String;

    if-eqz v0, :cond_30

    iget v0, p0, Lcn/jim/wallethelper/WalletRestart;->width:I

    if-lez v0, :cond_30

    iget v0, p0, Lcn/jim/wallethelper/WalletRestart;->height:I

    if-gtz v0, :cond_16

    goto :goto_30

    .line 34
    :cond_16
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    move-result p1

    if-nez p1, :cond_22

    .line 35
    const-string p1, "\u65e0\u6cd5\u6253\u5f00\u6700\u8fd1\u4efb\u52a1\uff0c\u672a\u6267\u884c\u81ea\u52a8\u91cd\u5f00"

    iput-object p1, p0, Lcn/jim/wallethelper/WalletRestart;->message:Ljava/lang/String;

    return v1

    .line 37
    :cond_22
    const/4 p1, 0x1

    iput p1, p0, Lcn/jim/wallethelper/WalletRestart;->stage:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jim/wallethelper/WalletRestart;->started:J

    .line 38
    const-string v0, "\u7b2c\u4e00\u8f6e\u7ed3\u675f\uff0c\u6253\u5f00\u6700\u8fd1\u4efb\u52a1\u5b9a\u4f4d\u8363\u8000\u94b1\u5305\u5361\u7247"

    iput-object v0, p0, Lcn/jim/wallethelper/WalletRestart;->message:Ljava/lang/String;

    .line 39
    return p1

    .line 32
    :cond_30
    :goto_30
    const-string p1, "\u65e0\u6cd5\u786e\u8ba4\u94b1\u5305\u8eab\u4efd\uff0c\u672a\u6267\u884c\u81ea\u52a8\u91cd\u5f00"

    iput-object p1, p0, Lcn/jim/wallethelper/WalletRestart;->message:Ljava/lang/String;

    return v1
.end method

.method public step(Landroid/accessibilityservice/AccessibilityService;Ljava/util/List;Ljava/lang/String;Landroid/view/View;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accessibilityservice/AccessibilityService;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ")I"
        }
    .end annotation

    .line 51
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    iput-object v4, v0, Lcn/jim/wallethelper/WalletRestart;->message:Ljava/lang/String;

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 53
    iget v7, v0, Lcn/jim/wallethelper/WalletRestart;->stage:I

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, -0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-ne v7, v13, :cond_166

    .line 54
    iget-object v7, v0, Lcn/jim/wallethelper/WalletRestart;->homePackage:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-wide/16 v3, 0x2ee0

    move-wide v1, v5

    const-string v5, "\u672a\u8fdb\u5165\u6700\u8fd1\u4efb\u52a1\u754c\u9762\uff0c\u81ea\u52a8\u91cd\u5f00\u5df2\u6682\u505c"

    invoke-direct/range {v0 .. v5}, Lcn/jim/wallethelper/WalletRestart;->timedOut(JJLjava/lang/String;)I

    move-result v1

    return v1

    .line 55
    :cond_2b
    iget-wide v14, v0, Lcn/jim/wallethelper/WalletRestart;->started:J

    sub-long v14, v5, v14

    const-wide/16 v16, 0x578

    cmp-long v2, v14, v16

    if-gez v2, :cond_36

    return v12

    .line 56
    :cond_36
    iget-wide v14, v0, Lcn/jim/wallethelper/WalletRestart;->lastMove:J

    sub-long v14, v5, v14

    const-wide/16 v16, 0x2bc

    cmp-long v2, v14, v16

    if-gez v2, :cond_41

    return v12

    .line 57
    :cond_41
    iget-object v2, v0, Lcn/jim/wallethelper/WalletRestart;->walletLabel:Ljava/lang/String;

    iget v7, v0, Lcn/jim/wallethelper/WalletRestart;->width:I

    iget v14, v0, Lcn/jim/wallethelper/WalletRestart;->height:I

    invoke-static {v1, v2, v7, v14}, Lcn/jim/wallethelper/WalletRestart;->walletCard(Ljava/util/List;Ljava/lang/String;II)[F

    move-result-object v2

    .line 58
    if-nez v2, :cond_fd

    .line 59
    iput-object v4, v0, Lcn/jim/wallethelper/WalletRestart;->stableCard:[F

    .line 60
    iget v2, v0, Lcn/jim/wallethelper/WalletRestart;->moves:I

    if-ge v2, v8, :cond_f8

    iget-wide v14, v0, Lcn/jim/wallethelper/WalletRestart;->started:J

    sub-long v14, v5, v14

    const-wide/16 v16, 0x2ee0

    cmp-long v2, v14, v16

    if-ltz v2, :cond_5f

    goto/16 :goto_f8

    .line 65
    :cond_5f
    iget-object v2, v0, Lcn/jim/wallethelper/WalletRestart;->walletLabel:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/jim/wallethelper/WalletRestart;->walletTitleX(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    .line 66
    if-ltz v1, :cond_6f

    iget v2, v0, Lcn/jim/wallethelper/WalletRestart;->width:I

    div-int/2addr v2, v11

    if-le v1, v2, :cond_6d

    goto :goto_6f

    :cond_6d
    move v2, v12

    goto :goto_70

    :cond_6f
    :goto_6f
    move v2, v13

    .line 67
    :goto_70
    if-gez v1, :cond_78

    iget v1, v0, Lcn/jim/wallethelper/WalletRestart;->moves:I

    and-int/2addr v1, v13

    if-ne v1, v13, :cond_78

    move v2, v12

    .line 68
    :cond_78
    iget v1, v0, Lcn/jim/wallethelper/WalletRestart;->height:I

    int-to-float v1, v1

    const v4, 0x3f0ccccd    # 0.55f

    mul-float/2addr v1, v4

    .line 69
    nop

    .line 70
    iget v4, v0, Lcn/jim/wallethelper/WalletRestart;->width:I

    .line 69
    const v7, 0x3f428f5c    # 0.76f

    const v14, 0x3e8f5c29    # 0.28f

    if-eqz v2, :cond_9b

    new-array v2, v8, [F

    int-to-float v4, v4

    mul-float/2addr v4, v7

    aput v4, v2, v12

    aput v1, v2, v13

    iget v4, v0, Lcn/jim/wallethelper/WalletRestart;->width:I

    int-to-float v4, v4

    mul-float/2addr v4, v14

    aput v4, v2, v11

    aput v1, v2, v9

    goto :goto_ab

    .line 70
    :cond_9b
    new-array v2, v8, [F

    int-to-float v4, v4

    mul-float/2addr v4, v14

    aput v4, v2, v12

    aput v1, v2, v13

    iget v4, v0, Lcn/jim/wallethelper/WalletRestart;->width:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    aput v4, v2, v11

    aput v1, v2, v9

    :goto_ab
    iput-object v2, v0, Lcn/jim/wallethelper/WalletRestart;->swipePath:[F

    .line 71
    if-eqz v3, :cond_d3

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 72
    new-array v1, v11, [I

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 73
    iget-object v2, v0, Lcn/jim/wallethelper/WalletRestart;->swipePath:[F

    aget v4, v1, v12

    aget v1, v1, v13

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v2, v4, v1, v7, v3}, Lcn/jim/wallethelper/ReturnRecovery;->blocked([FIIII)Z

    move-result v1

    if-eqz v1, :cond_d3

    .line 74
    const-string v1, "\u63a7\u5236\u6761\u6321\u4f4f\u6700\u8fd1\u4efb\u52a1\u6a2a\u5411\u5b9a\u4f4d\u624b\u52bf"

    iput-object v1, v0, Lcn/jim/wallethelper/WalletRestart;->message:Ljava/lang/String;

    return v10

    .line 77
    :cond_d3
    iget v1, v0, Lcn/jim/wallethelper/WalletRestart;->moves:I

    add-int/2addr v1, v13

    iput v1, v0, Lcn/jim/wallethelper/WalletRestart;->moves:I

    iput-wide v5, v0, Lcn/jim/wallethelper/WalletRestart;->lastMove:J

    .line 78
    iget v1, v0, Lcn/jim/wallethelper/WalletRestart;->moves:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6a2a\u5411\u5b9a\u4f4d\u8363\u8000\u94b1\u5305\u5361\u7247\uff08"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/4\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/jim/wallethelper/WalletRestart;->message:Ljava/lang/String;

    .line 79
    return v9

    .line 61
    :cond_f8
    :goto_f8
    const-string v1, "\u65e0\u6cd5\u552f\u4e00\u8bc6\u522b\u8363\u8000\u94b1\u5305\u5361\u7247\uff0c\u672a\u5212\u52a8\u5176\u4ed6\u5e94\u7528"

    iput-object v1, v0, Lcn/jim/wallethelper/WalletRestart;->message:Ljava/lang/String;

    return v10

    .line 81
    :cond_fd
    iget-object v1, v0, Lcn/jim/wallethelper/WalletRestart;->stableCard:[F

    if-eqz v1, :cond_161

    iget-object v1, v0, Lcn/jim/wallethelper/WalletRestart;->stableCard:[F

    invoke-static {v1, v2}, Lcn/jim/wallethelper/WalletRestart;->moved([F[F)Z

    move-result v1

    if-eqz v1, :cond_10a

    goto :goto_161

    .line 84
    :cond_10a
    iget-wide v7, v0, Lcn/jim/wallethelper/WalletRestart;->stableSince:J

    sub-long v7, v5, v7

    cmp-long v1, v7, v16

    if-gez v1, :cond_113

    return v12

    .line 85
    :cond_113
    if-eqz v3, :cond_137

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_137

    .line 86
    new-array v1, v11, [I

    invoke-virtual {v3, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 87
    aget v4, v1, v12

    aget v1, v1, v13

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-static {v2, v4, v1, v7, v3}, Lcn/jim/wallethelper/ReturnRecovery;->blocked([FIIII)Z

    move-result v1

    if-eqz v1, :cond_137

    .line 88
    const-string v1, "\u63a7\u5236\u6761\u6321\u4f4f\u94b1\u5305\u5361\u7247\uff0c\u81ea\u52a8\u91cd\u5f00\u5df2\u6682\u505c"

    iput-object v1, v0, Lcn/jim/wallethelper/WalletRestart;->message:Ljava/lang/String;

    return v10

    .line 91
    :cond_137
    iput-object v2, v0, Lcn/jim/wallethelper/WalletRestart;->swipePath:[F

    iput v11, v0, Lcn/jim/wallethelper/WalletRestart;->stage:I

    iput-wide v5, v0, Lcn/jim/wallethelper/WalletRestart;->started:J

    .line 92
    aget v1, v2, v12

    aget v2, v2, v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5df2\u786e\u8ba4\u94b1\u5305\u5361\u7247\u65e0\u906e\u6321\u4e14\u4f4d\u7f6e\u7a33\u5b9a\uff0c\u79fb\u9664\u76ee\u6807 @ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/jim/wallethelper/WalletRestart;->message:Ljava/lang/String;

    return v11

    .line 82
    :cond_161
    :goto_161
    iput-object v2, v0, Lcn/jim/wallethelper/WalletRestart;->stableCard:[F

    iput-wide v5, v0, Lcn/jim/wallethelper/WalletRestart;->stableSince:J

    return v12

    .line 94
    :cond_166
    iget v3, v0, Lcn/jim/wallethelper/WalletRestart;->stage:I

    if-ne v3, v11, :cond_1bd

    .line 95
    iget-wide v3, v0, Lcn/jim/wallethelper/WalletRestart;->started:J

    sub-long v3, v5, v3

    const-wide/16 v7, 0x384

    cmp-long v3, v3, v7

    if-gez v3, :cond_175

    return v12

    .line 96
    :cond_175
    iget-object v3, v0, Lcn/jim/wallethelper/WalletRestart;->homePackage:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_187

    const-wide/16 v3, 0x1388

    move-wide v1, v5

    const-string v5, "\u6700\u8fd1\u4efb\u52a1\u754c\u9762\u5df2\u53d8\u5316\uff0c\u65e0\u6cd5\u786e\u8ba4\u94b1\u5305\u5361\u7247\u79fb\u9664"

    invoke-direct/range {v0 .. v5}, Lcn/jim/wallethelper/WalletRestart;->timedOut(JJLjava/lang/String;)I

    move-result v1

    return v1

    .line 97
    :cond_187
    iget-object v2, v0, Lcn/jim/wallethelper/WalletRestart;->walletLabel:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/jim/wallethelper/WalletRestart;->walletTitleX(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_194

    .line 98
    const-string v1, "\u8363\u8000\u94b1\u5305\u5361\u7247\u4ecd\u5728\uff0c\u81ea\u52a8\u91cd\u5f00\u5df2\u6682\u505c"

    iput-object v1, v0, Lcn/jim/wallethelper/WalletRestart;->message:Ljava/lang/String;

    return v10

    .line 100
    :cond_194
    invoke-direct/range {p0 .. p1}, Lcn/jim/wallethelper/WalletRestart;->launchViaTool(Landroid/accessibilityservice/AccessibilityService;)Z

    move-result v1

    if-nez v1, :cond_19b

    return v10

    .line 101
    :cond_19b
    iput v9, v0, Lcn/jim/wallethelper/WalletRestart;->stage:I

    iput-wide v5, v0, Lcn/jim/wallethelper/WalletRestart;->started:J

    sget-object v1, Lcn/jim/wallethelper/WalletEntry;->lastRoute:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u79fb\u9664\u94b1\u5305\u5361\u7247\uff0c\u76f4\u63a5\u8c03\u7528\u52a9\u624b\u7684\u94b1\u5305\u5165\u53e3\uff08"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/jim/wallethelper/WalletRestart;->message:Ljava/lang/String;

    return v12

    .line 103
    :cond_1bd
    iget v3, v0, Lcn/jim/wallethelper/WalletRestart;->stage:I

    const-string v4, "\u94b1\u5305\u4efb\u52a1\u9875\u5df2\u91cd\u65b0\u6253\u5f00\uff0c\u5f00\u59cb\u7b2c\u4e8c\u8f6e"

    const/4 v7, 0x5

    const/4 v14, 0x6

    if-ne v3, v9, :cond_223

    .line 104
    iget-object v3, v0, Lcn/jim/wallethelper/WalletRestart;->walletPackage:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1fd

    .line 105
    iget-boolean v1, v0, Lcn/jim/wallethelper/WalletRestart;->relaunched:Z

    if-nez v1, :cond_1f3

    iget-wide v1, v0, Lcn/jim/wallethelper/WalletRestart;->started:J

    sub-long v1, v5, v1

    const-wide/16 v3, 0xbb8

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1f3

    .line 106
    iput-boolean v13, v0, Lcn/jim/wallethelper/WalletRestart;->relaunched:Z

    .line 107
    move-object/from16 v3, p1

    invoke-virtual {v3, v11}, Landroid/accessibilityservice/AccessibilityService;->performGlobalAction(I)Z

    move-result v1

    if-nez v1, :cond_1ea

    .line 108
    const-string v1, "\u65e0\u6cd5\u79bb\u5f00\u6700\u8fd1\u4efb\u52a1\u754c\u9762\uff0c\u81ea\u52a8\u91cd\u5f00\u5df2\u6682\u505c"

    iput-object v1, v0, Lcn/jim/wallethelper/WalletRestart;->message:Ljava/lang/String;

    return v10

    .line 110
    :cond_1ea
    iput v14, v0, Lcn/jim/wallethelper/WalletRestart;->stage:I

    iput-wide v5, v0, Lcn/jim/wallethelper/WalletRestart;->started:J

    const-string v1, "\u94b1\u5305\u672a\u5230\u524d\u53f0\uff0c\u8fd4\u56de\u684c\u9762\u51c6\u5907\u91cd\u8bd5\u52a9\u624b\u5165\u53e3"

    iput-object v1, v0, Lcn/jim/wallethelper/WalletRestart;->message:Ljava/lang/String;

    return v12

    .line 112
    :cond_1f3
    const-wide/16 v3, 0x2ee0

    move-wide v1, v5

    const-string v5, "\u901a\u8fc7\u52a9\u624b\u5165\u53e3\u91cd\u5f00\u540e\u672a\u56de\u5230\u8363\u8000\u94b1\u5305"

    invoke-direct/range {v0 .. v5}, Lcn/jim/wallethelper/WalletRestart;->timedOut(JJLjava/lang/String;)I

    move-result v1

    return v1

    .line 114
    :cond_1fd
    invoke-static {v1}, Lcn/jim/wallethelper/WalletRestart;->taskPage(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_208

    iput v7, v0, Lcn/jim/wallethelper/WalletRestart;->stage:I

    iput-object v4, v0, Lcn/jim/wallethelper/WalletRestart;->message:Ljava/lang/String;

    return v13

    .line 115
    :cond_208
    iget v2, v0, Lcn/jim/wallethelper/WalletRestart;->height:I

    invoke-static {v1, v2}, Lcn/jim/wallethelper/WalletRestart;->clickSavings(Ljava/util/List;I)Z

    move-result v1

    if-eqz v1, :cond_219

    .line 116
    iput v8, v0, Lcn/jim/wallethelper/WalletRestart;->stage:I

    iput-wide v5, v0, Lcn/jim/wallethelper/WalletRestart;->started:J

    const-string v1, "\u5df2\u8fdb\u5165\u7701\u94b1\u9875\uff0c\u7b49\u5f85\u4efb\u52a1\u5217\u8868"

    iput-object v1, v0, Lcn/jim/wallethelper/WalletRestart;->message:Ljava/lang/String;

    return v12

    .line 118
    :cond_219
    const-wide/16 v3, 0x2ee0

    move-wide v1, v5

    const-string v5, "\u91cd\u65b0\u542f\u52a8\u540e\u672a\u627e\u5230\u7701\u94b1\u5165\u53e3"

    invoke-direct/range {v0 .. v5}, Lcn/jim/wallethelper/WalletRestart;->timedOut(JJLjava/lang/String;)I

    move-result v1

    return v1

    .line 120
    :cond_223
    move-object/from16 v3, p1

    iget v11, v0, Lcn/jim/wallethelper/WalletRestart;->stage:I

    if-ne v11, v8, :cond_246

    .line 121
    iget-object v3, v0, Lcn/jim/wallethelper/WalletRestart;->walletPackage:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23c

    invoke-static {v1}, Lcn/jim/wallethelper/WalletRestart;->taskPage(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_23c

    .line 122
    iput v7, v0, Lcn/jim/wallethelper/WalletRestart;->stage:I

    iput-object v4, v0, Lcn/jim/wallethelper/WalletRestart;->message:Ljava/lang/String;

    return v13

    .line 124
    :cond_23c
    const-wide/16 v3, 0x2710

    move-wide v1, v5

    const-string v5, "\u7701\u94b1\u4efb\u52a1\u5217\u8868\u672a\u51fa\u73b0\uff0c\u81ea\u52a8\u590d\u8dd1\u5df2\u6682\u505c"

    invoke-direct/range {v0 .. v5}, Lcn/jim/wallethelper/WalletRestart;->timedOut(JJLjava/lang/String;)I

    move-result v1

    return v1

    .line 126
    :cond_246
    iget v1, v0, Lcn/jim/wallethelper/WalletRestart;->stage:I

    if-ne v1, v14, :cond_272

    .line 127
    iget-object v1, v0, Lcn/jim/wallethelper/WalletRestart;->walletPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_257

    iput v9, v0, Lcn/jim/wallethelper/WalletRestart;->stage:I

    iput-wide v5, v0, Lcn/jim/wallethelper/WalletRestart;->started:J

    return v12

    .line 128
    :cond_257
    iget-wide v1, v0, Lcn/jim/wallethelper/WalletRestart;->started:J

    sub-long v1, v5, v1

    const-wide/16 v7, 0x3e8

    cmp-long v1, v1, v7

    if-gez v1, :cond_262

    return v12

    .line 129
    :cond_262
    invoke-direct/range {p0 .. p1}, Lcn/jim/wallethelper/WalletRestart;->launchViaTool(Landroid/accessibilityservice/AccessibilityService;)Z

    move-result v1

    if-nez v1, :cond_269

    return v10

    .line 130
    :cond_269
    iput v9, v0, Lcn/jim/wallethelper/WalletRestart;->stage:I

    iput-wide v5, v0, Lcn/jim/wallethelper/WalletRestart;->started:J

    const-string v1, "\u5df2\u4ece\u684c\u9762\u91cd\u8bd5\u8c03\u7528\u52a9\u624b\u7684\u94b1\u5305\u5165\u53e3"

    iput-object v1, v0, Lcn/jim/wallethelper/WalletRestart;->message:Ljava/lang/String;

    return v12

    .line 132
    :cond_272
    const-string v1, "\u81ea\u52a8\u91cd\u5f00\u72b6\u6001\u5f02\u5e38"

    iput-object v1, v0, Lcn/jim/wallethelper/WalletRestart;->message:Ljava/lang/String;

    return v10
.end method

.method public trace(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 44
    iget-wide v2, p0, Lcn/jim/wallethelper/WalletRestart;->lastTrace:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_10

    const/4 p1, 0x0

    return-object p1

    .line 45
    :cond_10
    iput-wide v0, p0, Lcn/jim/wallethelper/WalletRestart;->lastTrace:J

    .line 46
    iget v2, p0, Lcn/jim/wallethelper/WalletRestart;->stage:I

    iget-wide v3, p0, Lcn/jim/wallethelper/WalletRestart;->started:J

    sub-long/2addr v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u91cd\u5f00\u68c0\u67e5\u9636\u6bb5="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff0c\u524d\u53f0="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\uff0c\u9636\u6bb5\u7b49\u5f85="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
