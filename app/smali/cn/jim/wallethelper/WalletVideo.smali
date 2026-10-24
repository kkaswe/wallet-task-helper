.class public final Lcn/jim/wallethelper/WalletVideo;
.super Ljava/lang/Object;
.source "WalletVideo.java"


# static fields
.field private static viewId:Ljava/lang/reflect/Method;


# instance fields
.field private final flow:Lcn/jim/wallethelper/WalletVideoFlow;

.field public index:I

.field public message:Ljava/lang/String;

.field private networkRetry:Z

.field public summary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    :try_start_0
    const-class v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v1, "getViewIdResourceName"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcn/jim/wallethelper/WalletVideo;->viewId:Ljava/lang/reflect/Method;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_f

    :catch_e
    move-exception v0

    :goto_f
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcn/jim/wallethelper/WalletVideoFlow;

    invoke-direct {v0}, Lcn/jim/wallethelper/WalletVideoFlow;-><init>()V

    iput-object v0, p0, Lcn/jim/wallethelper/WalletVideo;->flow:Lcn/jim/wallethelper/WalletVideoFlow;

    return-void
.end method


# virtual methods
.method public step(Ljava/util/List;Ljava/lang/String;II)I
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Ljava/lang/String;",
            "II)I"
        }
    .end annotation

    .line 18
    move-object/from16 v1, p0

    const-string v2, ""

    iget-boolean v0, v1, Lcn/jim/wallethelper/WalletVideo;->networkRetry:Z

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_38

    .line 19
    sget-object v0, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;

    if-nez v0, :cond_15

    const-string v0, "\u65e0\u969c\u788d\u670d\u52a1\u5df2\u65ad\u5f00\uff0c\u505c\u6b62\u7f51\u7edc\u91cd\u8bd5"

    iput-object v0, v1, Lcn/jim/wallethelper/WalletVideo;->message:Ljava/lang/String;

    iput-object v0, v1, Lcn/jim/wallethelper/WalletVideo;->summary:Ljava/lang/String;

    return v3

    .line 20
    :cond_15
    sget-object v0, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;

    invoke-static {v0}, Lcn/jim/wallethelper/WifiRetry;->advance(Landroid/accessibilityservice/AccessibilityService;)I

    move-result v0

    .line 21
    if-nez v0, :cond_1e

    return v4

    .line 22
    :cond_1e
    iput-boolean v4, v1, Lcn/jim/wallethelper/WalletVideo;->networkRetry:Z

    .line 23
    if-gez v0, :cond_29

    sget-object v0, Lcn/jim/wallethelper/WifiRetry;->error:Ljava/lang/String;

    iput-object v0, v1, Lcn/jim/wallethelper/WalletVideo;->message:Ljava/lang/String;

    iput-object v0, v1, Lcn/jim/wallethelper/WalletVideo;->summary:Ljava/lang/String;

    return v3

    .line 24
    :cond_29
    iget-object v0, v1, Lcn/jim/wallethelper/WalletVideo;->flow:Lcn/jim/wallethelper/WalletVideoFlow;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/jim/wallethelper/WalletVideoFlow;->retryNetwork(J)V

    .line 25
    const-string v0, "\u5173\u95ed Wi-Fi \u540e\u91cd\u65b0\u8fdb\u5165\u94b1\u5305\uff0c\u6838\u5bf9\u6b21\u6570\u518d\u91cd\u8bd5"

    iput-object v0, v1, Lcn/jim/wallethelper/WalletVideo;->message:Ljava/lang/String;

    const/4 v0, 0x4

    return v0

    .line 27
    :cond_38
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 28
    move v9, v4

    :goto_3e
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_b0

    .line 29
    move-object/from16 v15, p1

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 30
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5a

    goto :goto_ad

    .line 31
    :cond_5a
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 32
    nop

    .line 33
    :try_start_63
    sget-object v0, Lcn/jim/wallethelper/WalletVideo;->viewId:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_76

    sget-object v0, Lcn/jim/wallethelper/WalletVideo;->viewId:Ljava/lang/reflect/Method;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_76

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_75} :catch_79

    goto :goto_77

    :cond_76
    move-object v0, v2

    :goto_77
    move-object v8, v0

    goto :goto_7b

    :catch_79
    move-exception v0

    move-object v8, v2

    .line 34
    :goto_7b
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_87

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-nez v10, :cond_8b

    :cond_87
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 35
    :cond_8b
    move-object v10, v6

    new-instance v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;

    if-nez v0, :cond_92

    move-object v0, v2

    goto :goto_96

    :cond_92
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_96
    move-object v11, v10

    iget v10, v7, Landroid/graphics/Rect;->left:I

    move-object v12, v11

    iget v11, v7, Landroid/graphics/Rect;->top:I

    move-object v13, v12

    iget v12, v7, Landroid/graphics/Rect;->right:I

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v14

    move v13, v7

    move-object v7, v0

    invoke-direct/range {v6 .. v14}, Lcn/jim/wallethelper/WalletVideoFlow$Node;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_ad
    :goto_ad
    add-int/lit8 v9, v9, 0x1

    goto :goto_3e

    .line 37
    :cond_b0
    iget-object v0, v1, Lcn/jim/wallethelper/WalletVideo;->flow:Lcn/jim/wallethelper/WalletVideoFlow;

    move-object/from16 v2, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-static {v5, v2, v6, v7}, Lcn/jim/wallethelper/WalletVideoFlow;->read(Ljava/util/List;Ljava/lang/String;II)Lcn/jim/wallethelper/WalletVideoFlow$Frame;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v2, v5, v6}, Lcn/jim/wallethelper/WalletVideoFlow;->step(Lcn/jim/wallethelper/WalletVideoFlow$Frame;J)I

    move-result v0

    .line 38
    iget-object v2, v1, Lcn/jim/wallethelper/WalletVideo;->flow:Lcn/jim/wallethelper/WalletVideoFlow;

    iget-object v2, v2, Lcn/jim/wallethelper/WalletVideoFlow;->message:Ljava/lang/String;

    iput-object v2, v1, Lcn/jim/wallethelper/WalletVideo;->message:Ljava/lang/String;

    iget-object v2, v1, Lcn/jim/wallethelper/WalletVideo;->flow:Lcn/jim/wallethelper/WalletVideoFlow;

    iget-object v2, v2, Lcn/jim/wallethelper/WalletVideoFlow;->summary:Ljava/lang/String;

    iput-object v2, v1, Lcn/jim/wallethelper/WalletVideo;->summary:Ljava/lang/String;

    iget-object v2, v1, Lcn/jim/wallethelper/WalletVideo;->flow:Lcn/jim/wallethelper/WalletVideoFlow;

    iget v2, v2, Lcn/jim/wallethelper/WalletVideoFlow;->index:I

    iput v2, v1, Lcn/jim/wallethelper/WalletVideo;->index:I

    .line 39
    const/4 v2, 0x6

    if-ne v0, v2, :cond_104

    .line 40
    sget-object v0, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;

    if-eqz v0, :cond_ea

    sget-object v0, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;

    invoke-static {v0}, Lcn/jim/wallethelper/WifiRetry;->begin(Landroid/accessibilityservice/AccessibilityService;)Z

    move-result v0

    if-nez v0, :cond_e6

    goto :goto_ea

    .line 41
    :cond_e6
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcn/jim/wallethelper/WalletVideo;->networkRetry:Z

    return v4

    .line 40
    :cond_ea
    :goto_ea
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7f51\u7edc\u91cd\u8bd5\u65e0\u6cd5\u5f00\u59cb\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcn/jim/wallethelper/WifiRetry;->error:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcn/jim/wallethelper/WalletVideo;->message:Ljava/lang/String;

    iput-object v0, v1, Lcn/jim/wallethelper/WalletVideo;->summary:Ljava/lang/String;

    return v3

    .line 43
    :cond_104
    return v0
.end method
