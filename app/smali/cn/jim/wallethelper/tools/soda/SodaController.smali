.class public final Lcn/jim/wallethelper/tools/soda/SodaController;
.super Ljava/lang/Object;
.source "SodaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jim/wallethelper/tools/soda/SodaController$Screen;
    }
.end annotation


# static fields
.field private static current:Lcn/jim/wallethelper/tools/soda/SodaController;


# instance fields
.field private adContext:Z

.field private benefitTries:I

.field private closePage:Ljava/lang/String;

.field private closeTries:I

.field private continuousAdSince:J

.field private disposed:Z

.field private final handler:Landroid/os/Handler;

.field private lastAd:J

.field private lastNote:Ljava/lang/String;

.field private lastReadable:J

.field private lastVisualRequest:J

.field private final log:Ljava/lang/StringBuilder;

.field private panel:Landroid/widget/LinearLayout;

.field private params:Landroid/view/WindowManager$LayoutParams;

.field private pause:Landroid/widget/Button;

.field private paused:Z

.field private final pkg:Ljava/lang/String;

.field private final service:Lcn/jim/wallethelper/WalletService;

.field private final session:Lcn/jim/wallethelper/tools/soda/AdSession;

.field private started:J

.field private status:Landroid/widget/TextView;

.field private final ticker:Ljava/lang/Runnable;

.field private vision:Lcn/jim/wallethelper/tools/soda/SodaVision;

.field private visionEpoch:I

.field private visual:Lcn/jim/wallethelper/tools/soda/SodaVision$Result;

.field private visualBusy:Z

.field private visualDescription:Ljava/lang/String;

.field private visualError:Ljava/lang/String;

.field private visualKey:Ljava/lang/String;

.field private wm:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Lcn/jim/wallethelper/WalletService;Ljava/lang/String;I)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->handler:Landroid/os/Handler;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->log:Ljava/lang/StringBuilder;

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->started:J

    iget-wide v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->started:J

    iput-wide v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->lastReadable:J

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->closePage:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visualKey:Ljava/lang/String;

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visualError:Ljava/lang/String;

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visualDescription:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->lastNote:Ljava/lang/String;

    .line 40
    new-instance v0, Lcn/jim/wallethelper/tools/soda/SodaController$1;

    invoke-direct {v0, p0}, Lcn/jim/wallethelper/tools/soda/SodaController$1;-><init>(Lcn/jim/wallethelper/tools/soda/SodaController;)V

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->ticker:Ljava/lang/Runnable;

    .line 45
    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->service:Lcn/jim/wallethelper/WalletService;

    iput-object p2, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->pkg:Ljava/lang/String;

    new-instance p1, Lcn/jim/wallethelper/tools/soda/AdSession;

    iget-wide v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->started:J

    invoke-direct {p1, p3, v0, v1}, Lcn/jim/wallethelper/tools/soda/AdSession;-><init>(IJ)V

    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    return-void
.end method

.method static synthetic access$0(Lcn/jim/wallethelper/tools/soda/SodaController;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->disposed:Z

    return p0
.end method

.method static synthetic access$1(Lcn/jim/wallethelper/tools/soda/SodaController;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->paused:Z

    return p0
.end method

.method static synthetic access$10(Lcn/jim/wallethelper/tools/soda/SodaController;)Landroid/widget/Button;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->pause:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$11(Lcn/jim/wallethelper/tools/soda/SodaController;Z)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/tools/soda/SodaController;->keepAwake(Z)V

    return-void
.end method

.method static synthetic access$12(Lcn/jim/wallethelper/tools/soda/SodaController;)Lcn/jim/wallethelper/tools/soda/AdSession;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    return-object p0
.end method

.method static synthetic access$13(Lcn/jim/wallethelper/tools/soda/SodaController;J)V
    .locals 0

    .line 27
    iput-wide p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->lastReadable:J

    return-void
.end method

.method static synthetic access$14(Lcn/jim/wallethelper/tools/soda/SodaController;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$15(Lcn/jim/wallethelper/tools/soda/SodaController;)V
    .locals 0

    .line 281
    invoke-direct {p0}, Lcn/jim/wallethelper/tools/soda/SodaController;->diagnostic()V

    return-void
.end method

.method static synthetic access$16(Lcn/jim/wallethelper/tools/soda/SodaController;)Lcn/jim/wallethelper/WalletService;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->service:Lcn/jim/wallethelper/WalletService;

    return-object p0
.end method

.method static synthetic access$17(Lcn/jim/wallethelper/tools/soda/SodaController;Z)V
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visualBusy:Z

    return-void
.end method

.method static synthetic access$18(Lcn/jim/wallethelper/tools/soda/SodaController;)I
    .locals 0

    .line 37
    iget p0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visionEpoch:I

    return p0
.end method

.method static synthetic access$19(Lcn/jim/wallethelper/tools/soda/SodaController;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visualKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2(Lcn/jim/wallethelper/tools/soda/SodaController;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcn/jim/wallethelper/tools/soda/SodaController;->step()V

    return-void
.end method

.method static synthetic access$20(Lcn/jim/wallethelper/tools/soda/SodaController;Lcn/jim/wallethelper/tools/soda/SodaVision$Result;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visual:Lcn/jim/wallethelper/tools/soda/SodaVision$Result;

    return-void
.end method

.method static synthetic access$21(Lcn/jim/wallethelper/tools/soda/SodaController;Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visualError:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$22(Lcn/jim/wallethelper/tools/soda/SodaController;Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visualDescription:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$23(Lcn/jim/wallethelper/tools/soda/SodaController;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visualError:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3(Lcn/jim/wallethelper/tools/soda/SodaController;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/tools/soda/SodaController;->pauseWith(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcn/jim/wallethelper/tools/soda/SodaController;)Landroid/os/Handler;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5(Lcn/jim/wallethelper/tools/soda/SodaController;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->params:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$6(Lcn/jim/wallethelper/tools/soda/SodaController;)Landroid/view/WindowManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->wm:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$7(Lcn/jim/wallethelper/tools/soda/SodaController;)Landroid/widget/LinearLayout;
    .locals 0

    .line 21
    iget-object p0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->panel:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$8(Lcn/jim/wallethelper/tools/soda/SodaController;Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->paused:Z

    return-void
.end method

.method static synthetic access$9(Lcn/jim/wallethelper/tools/soda/SodaController;)V
    .locals 0

    .line 192
    invoke-direct {p0}, Lcn/jim/wallethelper/tools/soda/SodaController;->invalidateVision()V

    return-void
.end method

.method private beginNext(J)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    invoke-virtual {v0, p1, p2}, Lcn/jim/wallethelper/tools/soda/AdSession;->next(J)V

    const/4 v0, 0x0

    iput v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->closeTries:I

    iput v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->benefitTries:I

    const-string v0, ""

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->closePage:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->adContext:Z

    iput-wide p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->lastAd:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->continuousAdSince:J

    return-void
.end method

.method private button(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;
    .locals 4

    .line 74
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->service:Lcn/jim/wallethelper/WalletService;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41600000    # 14.0f

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextSize(F)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, p1, p1, p1}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->panel:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x2c

    invoke-direct {p0, v2}, Lcn/jim/wallethelper/tools/soda/SodaController;->dp(I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcn/jim/wallethelper/tools/soda/SodaController$7;

    invoke-direct {p1, p0, p2}, Lcn/jim/wallethelper/tools/soda/SodaController$7;-><init>(Lcn/jim/wallethelper/tools/soda/SodaController;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private click(Landroid/view/accessibility/AccessibilityNodeInfo;Lcn/jim/wallethelper/tools/soda/SodaController$Screen;)Z
    .locals 8

    .line 249
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 250
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget v2, v0, Landroid/graphics/Rect;->left:I

    if-ltz v2, :cond_5

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ltz v2, :cond_5

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v3, p2, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->width:I

    if-gt v2, v3, :cond_5

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p2, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->height:I

    if-gt v2, v3, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v2, v2

    iget v4, p2, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->height:I

    int-to-double v4, v4

    const-wide v6, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-double v2, v2

    iget p2, p2, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->width:I

    int-to-double v4, p2

    const-wide v6, 0x3fee666666666666L    # 0.95

    mul-double/2addr v4, v6

    cmpl-double p2, v2, v4

    if-lez p2, :cond_1

    goto :goto_0

    .line 251
    :cond_1
    const/4 p2, 0x2

    new-array p2, p2, [I

    iget-object v2, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    new-instance v2, Landroid/graphics/Rect;

    aget v3, p2, v1

    const/4 v4, 0x1

    aget v5, p2, v4

    aget v6, p2, v1

    iget-object v7, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget p2, p2, v4

    iget-object v7, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    add-int/2addr p2, v7

    invoke-direct {v2, v3, v5, v6, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {v2, p2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2

    if-eqz p2, :cond_2

    return v1

    .line 252
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcn/jim/wallethelper/tools/soda/SodaController;->invalidateVision()V

    return v4

    .line 253
    :cond_3
    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->service:Lcn/jim/wallethelper/WalletService;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p2, v0}, Lcn/jim/wallethelper/WalletService;->extraTap(FF)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcn/jim/wallethelper/tools/soda/SodaController;->invalidateVision()V

    :cond_4
    return p1

    .line 250
    :cond_5
    :goto_0
    return v1

    .line 249
    :cond_6
    :goto_1
    return v1
.end method

.method private clickBenefit(Lcn/jim/wallethelper/tools/soda/SodaController$Screen;)Z
    .locals 6

    .line 256
    nop

    .line 257
    iget-object v0, p1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 263
    if-eqz v1, :cond_1

    invoke-direct {p0, v1, p1}, Lcn/jim/wallethelper/tools/soda/SodaController;->click(Landroid/view/accessibility/AccessibilityNodeInfo;Lcn/jim/wallethelper/tools/soda/SodaController$Screen;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v3

    :cond_1
    return v4

    .line 257
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 258
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lcn/jim/wallethelper/tools/soda/SodaController;->string(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/jim/wallethelper/tools/soda/AdPageRules;->claimLabel(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lcn/jim/wallethelper/tools/soda/SodaController;->string(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/jim/wallethelper/tools/soda/AdPageRules;->claimLabel(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_3
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v2, p1, v3}, Lcn/jim/wallethelper/tools/soda/SodaController;->insideOffer(Landroid/view/accessibility/AccessibilityNodeInfo;Lcn/jim/wallethelper/tools/soda/SodaController$Screen;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    if-eqz v1, :cond_4

    return v4

    .line 260
    :cond_4
    move-object v1, v2

    goto :goto_0
.end method

.method private clickEntry(Lcn/jim/wallethelper/tools/soda/SodaController$Screen;)Z
    .locals 3

    .line 247
    iget-object v0, p1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcn/jim/wallethelper/tools/soda/SodaController;->string(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/jim/wallethelper/tools/soda/AdSession;->entry(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcn/jim/wallethelper/tools/soda/SodaController;->string(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/jim/wallethelper/tools/soda/AdSession;->entry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-direct {p0, v1, p1}, Lcn/jim/wallethelper/tools/soda/SodaController;->click(Landroid/view/accessibility/AccessibilityNodeInfo;Lcn/jim/wallethelper/tools/soda/SodaController$Screen;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method private clickExact(Lcn/jim/wallethelper/tools/soda/SodaController$Screen;Ljava/lang/String;)Z
    .locals 5

    .line 225
    nop

    .line 226
    iget-object v0, p1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 232
    if-eqz v1, :cond_1

    invoke-direct {p0, v1, p1}, Lcn/jim/wallethelper/tools/soda/SodaController;->click(Landroid/view/accessibility/AccessibilityNodeInfo;Lcn/jim/wallethelper/tools/soda/SodaController$Screen;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v3

    .line 226
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 227
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lcn/jim/wallethelper/tools/soda/SodaController;->string(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/jim/wallethelper/tools/soda/AdSession;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lcn/jim/wallethelper/tools/soda/SodaController;->string(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/jim/wallethelper/tools/soda/AdSession;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v2, p1, v3}, Lcn/jim/wallethelper/tools/soda/SodaController;->insideOffer(Landroid/view/accessibility/AccessibilityNodeInfo;Lcn/jim/wallethelper/tools/soda/SodaController$Screen;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    if-eqz v1, :cond_4

    return v3

    .line 229
    :cond_4
    move-object v1, v2

    goto :goto_0
.end method

.method private diagnostic()V
    .locals 14

    .line 281
    const-string v0, "\n"

    invoke-direct {p0}, Lcn/jim/wallethelper/tools/soda/SodaController;->screen()Lcn/jim/wallethelper/tools/soda/SodaController$Screen;

    move-result-object v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6c7d\u6c34\u97f3\u4e50\u5de5\u5177 0.1.24\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nodeWindow="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->windowId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nodeAtMs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nprogress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    iget v4, v4, Lcn/jim/wallethelper/tools/soda/AdSession;->completed:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    iget v4, v4, Lcn/jim/wallethelper/tools/soda/AdSession;->target:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " credited="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    iget-boolean v4, v4, Lcn/jim/wallethelper/tools/soda/AdSession;->credited:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " awaitingNew="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    iget-boolean v4, v4, Lcn/jim/wallethelper/tools/soda/AdSession;->awaitingNew:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->log:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\u56fe\u50cf\u8bca\u65ad\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visualDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\u5f53\u524d\u56fe\u50cf\u53ef\u7528="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visual:Lcn/jim/wallethelper/tools/soda/SodaVision$Result;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visual:Lcn/jim/wallethelper/tools/soda/SodaVision$Result;

    iget-object v6, v6, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->windowId:I

    iget-object v6, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visual:Lcn/jim/wallethelper/tools/soda/SodaVision$Result;

    iget v6, v6, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->sourceWindow:I

    if-ne v4, v6, :cond_0

    iget-object v4, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visual:Lcn/jim/wallethelper/tools/soda/SodaVision$Result;

    iget-wide v6, v4, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->captured:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v4, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visual:Lcn/jim/wallethelper/tools/soda/SodaVision$Result;

    iget v10, v4, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->width:I

    iget-object v4, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visual:Lcn/jim/wallethelper/tools/soda/SodaVision$Result;

    iget v11, v4, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->height:I

    iget v12, v1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->width:I

    iget v13, v1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->height:I

    invoke-static/range {v6 .. v13}, Lcn/jim/wallethelper/tools/soda/VisualContext;->usable(JJIIII)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff08false\u8868\u793a\u5386\u53f2\u56fe\u50cf\u7ed3\u679c\uff0c\u4e0d\u4ee3\u8868\u5f53\u524d\u8282\u70b9\u9875\u9762\uff09\n\u5f53\u524d\u53ef\u89c1\u8282\u70b9\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, v1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    :goto_2
    goto :goto_3

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v6, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " text="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Lcn/jim/wallethelper/tools/soda/SodaController;->string(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " desc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Lcn/jim/wallethelper/tools/soda/SodaController;->string(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Lcn/jim/wallethelper/tools/soda/SodaController;->viewId(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    const v7, 0xfde8

    if-le v6, v7, :cond_1

    goto :goto_2

    :goto_3
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->service:Lcn/jim/wallethelper/WalletService;

    const-string v3, "soda_tool"

    invoke-virtual {v0, v3, v5}, Lcn/jim/wallethelper/WalletService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "diagnostic"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, "\u8bca\u65ad\u5df2\u4fdd\u5b58\uff0c\u5de5\u5177\u9875\u53ef\u5bfc\u51fa"

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    throw v0
.end method

.method private dp(I)I
    .locals 1

    .line 57
    int-to-float p1, p1

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->service:Lcn/jim/wallethelper/WalletService;

    invoke-virtual {v0}, Lcn/jim/wallethelper/WalletService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private findTopClose(Lcn/jim/wallethelper/tools/soda/SodaController$Screen;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 11

    .line 270
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 271
    iget-object v1, p1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 279
    return-object v3

    .line 271
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 272
    invoke-virtual {v4, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 273
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-double v5, v5

    iget v7, p1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->width:I

    int-to-double v7, v7

    const-wide v9, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v7, v9

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    iget v5, v0, Landroid/graphics/Rect;->top:I

    if-ltz v5, :cond_0

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    int-to-double v5, v5

    iget v7, p1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->height:I

    int-to-double v7, v7

    const-wide v9, 0x3fc70a3d70a3d70aL    # 0.18

    mul-double/2addr v7, v9

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-double v5, v5

    iget v7, p1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->width:I

    int-to-double v7, v7

    const-wide/high16 v9, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v7, v9

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-double v5, v5

    iget v7, p1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->height:I

    int-to-double v7, v7

    const-wide v9, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v7, v9

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    .line 274
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lcn/jim/wallethelper/tools/soda/SodaController;->string(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/jim/wallethelper/tools/soda/AdPageRules;->closeLabel(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lcn/jim/wallethelper/tools/soda/SodaController;->string(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/jim/wallethelper/tools/soda/AdPageRules;->closeLabel(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Lcn/jim/wallethelper/tools/soda/SodaController;->viewId(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/jim/wallethelper/tools/soda/AdPageRules;->closeId(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 275
    :cond_2
    if-nez v3, :cond_3

    move-object v3, v4

    goto/16 :goto_0

    .line 276
    :cond_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v2
.end method

.method private insideOffer(Landroid/view/accessibility/AccessibilityNodeInfo;Lcn/jim/wallethelper/tools/soda/SodaController$Screen;Z)Z
    .locals 11

    .line 235
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    .line 236
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz p1, :cond_6

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    goto/16 :goto_4

    .line 237
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 238
    new-instance v3, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;-><init>(Lcn/jim/wallethelper/tools/soda/SodaController$Screen;)V

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    invoke-direct {p0, v4, v3, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->walk(Landroid/view/accessibility/AccessibilityNodeInfo;Lcn/jim/wallethelper/tools/soda/SodaController$Screen;I)V

    .line 239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 240
    invoke-virtual {v3}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 241
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-double v5, v3

    iget v3, p2, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->height:I

    int-to-double v7, v3

    const-wide v9, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v7, v9

    cmpg-double v3, v5, v7

    const/4 v5, 0x1

    if-gez v3, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-double v2, v2

    iget v6, p2, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->width:I

    int-to-double v6, v6

    const-wide v8, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v6, v8

    cmpl-double v2, v2, v6

    if-lez v2, :cond_3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_2

    invoke-static {v2}, Lcn/jim/wallethelper/tools/soda/AdPageRules;->dayBenefit(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_2
    invoke-static {v2}, Lcn/jim/wallethelper/tools/soda/AdSession;->upsell(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    move v2, v5

    goto :goto_3

    :cond_3
    move v2, v0

    .line 242
    :goto_3
    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    return v5

    .line 243
    :cond_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 236
    add-int/lit8 v1, v1, 0x1

    move-object p1, v2

    goto :goto_0

    .line 239
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Lcn/jim/wallethelper/tools/soda/SodaController;->string(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Lcn/jim/wallethelper/tools/soda/SodaController;->string(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 245
    :cond_6
    :goto_4
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_7
    return v0
.end method

.method private invalidateVision()V
    .locals 1

    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visual:Lcn/jim/wallethelper/tools/soda/SodaVision$Result;

    iget v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visionEpoch:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visionEpoch:I

    return-void
.end method

.method private keepAwake(Z)V
    .locals 2

    .line 75
    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->params:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->params:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x81

    :goto_0
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->wm:Landroid/view/WindowManager;

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->panel:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private note(Ljava/lang/String;)V
    .locals 5

    .line 76
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->status:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6c7d\u6c34 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    iget v2, v2, Lcn/jim/wallethelper/tools/soda/AdSession;->completed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    iget v2, v2, Lcn/jim/wallethelper/tools/soda/AdSession;->target:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->lastNote:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->lastNote:Ljava/lang/String;

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->log:Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->started:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->log:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/16 v0, 0x4650

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->log:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/16 v1, 0x1770

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private overlay()V
    .locals 11

    .line 59
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->service:Lcn/jim/wallethelper/WalletService;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Lcn/jim/wallethelper/WalletService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->wm:Landroid/view/WindowManager;

    .line 60
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->service:Lcn/jim/wallethelper/WalletService;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->panel:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->panel:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->panel:Landroid/widget/LinearLayout;

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->dp(I)I

    move-result v2

    invoke-direct {p0, v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->dp(I)I

    move-result v3

    invoke-direct {p0, v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->panel:Landroid/widget/LinearLayout;

    const v1, -0x11dbccbe

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 61
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->service:Lcn/jim/wallethelper/WalletService;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->status:Landroid/widget/TextView;

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->status:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->status:Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->status:Landroid/widget/TextView;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->panel:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->status:Landroid/widget/TextView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x74

    invoke-direct {p0, v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->dp(I)I

    move-result v6

    const/16 v9, 0xa8

    const/4 v10, -0x3

    const/4 v7, -0x2

    const/16 v8, 0x7f0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->params:Landroid/view/WindowManager$LayoutParams;

    .line 63
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->params:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x78

    invoke-direct {p0, v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 64
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->status:Landroid/widget/TextView;

    new-instance v1, Lcn/jim/wallethelper/tools/soda/SodaController$2;

    invoke-direct {v1, p0}, Lcn/jim/wallethelper/tools/soda/SodaController$2;-><init>(Lcn/jim/wallethelper/tools/soda/SodaController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 68
    new-instance v0, Lcn/jim/wallethelper/tools/soda/SodaController$3;

    invoke-direct {v0, p0}, Lcn/jim/wallethelper/tools/soda/SodaController$3;-><init>(Lcn/jim/wallethelper/tools/soda/SodaController;)V

    const-string v1, "\u6682\u505c"

    invoke-direct {p0, v1, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->button(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->pause:Landroid/widget/Button;

    .line 69
    new-instance v0, Lcn/jim/wallethelper/tools/soda/SodaController$4;

    invoke-direct {v0, p0}, Lcn/jim/wallethelper/tools/soda/SodaController$4;-><init>(Lcn/jim/wallethelper/tools/soda/SodaController;)V

    const-string v1, "\u505c\u6b62"

    invoke-direct {p0, v1, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->button(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    .line 70
    new-instance v0, Lcn/jim/wallethelper/tools/soda/SodaController$5;

    invoke-direct {v0, p0}, Lcn/jim/wallethelper/tools/soda/SodaController$5;-><init>(Lcn/jim/wallethelper/tools/soda/SodaController;)V

    const-string v1, "\u8bca\u65ad"

    invoke-direct {p0, v1, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->button(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    .line 71
    new-instance v0, Lcn/jim/wallethelper/tools/soda/SodaController$6;

    invoke-direct {v0, p0}, Lcn/jim/wallethelper/tools/soda/SodaController$6;-><init>(Lcn/jim/wallethelper/tools/soda/SodaController;)V

    const-string v1, "\u5de5\u5177\u9875"

    invoke-direct {p0, v1, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->button(Ljava/lang/String;Ljava/lang/Runnable;)Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->panel:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    return-void
.end method

.method private pauseWith(Ljava/lang/String;)V
    .locals 2

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->paused:Z

    invoke-direct {p0}, Lcn/jim/wallethelper/tools/soda/SodaController;->invalidateVision()V

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->pause:Landroid/widget/Button;

    const-string v1, "\u7ee7\u7eed"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->keepAwake(Z)V

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V

    return-void
.end method

.method private readVision(Lcn/jim/wallethelper/tools/soda/SodaController$Screen;J)Lcn/jim/wallethelper/tools/soda/SodaVision$Result;
    .locals 9

    .line 194
    iget-object v0, p1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->packageName:Ljava/lang/String;

    iget v1, p1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->windowId:I

    iget v2, p1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->width:I

    iget v3, p1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->height:I

    iget-object v4, p1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->text:Ljava/lang/String;

    invoke-static {v4}, Lcn/jim/wallethelper/tools/soda/AdSession;->upsell(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, p1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->text:Ljava/lang/String;

    invoke-static {v5}, Lcn/jim/wallethelper/tools/soda/AdPageRules;->dayBenefitHint(Ljava/lang/String;)Z

    move-result v5

    invoke-static/range {v0 .. v5}, Lcn/jim/wallethelper/tools/soda/VisualContext;->key(Ljava/lang/String;IIIZZ)Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visualKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visualKey:Ljava/lang/String;

    invoke-direct {p0}, Lcn/jim/wallethelper/tools/soda/SodaController;->invalidateVision()V

    .line 196
    :cond_0
    iget-boolean v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visualBusy:Z

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->lastVisualRequest:J

    sub-long v1, p2, v1

    const-wide/16 v3, 0x640

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->vision:Lcn/jim/wallethelper/tools/soda/SodaVision;

    if-eqz v1, :cond_1

    .line 197
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visualBusy:Z

    iput-wide p2, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->lastVisualRequest:J

    iget v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visionEpoch:I

    .line 198
    iget-object v2, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->vision:Lcn/jim/wallethelper/tools/soda/SodaVision;

    iget-object v3, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->service:Lcn/jim/wallethelper/WalletService;

    new-instance v4, Lcn/jim/wallethelper/tools/soda/SodaController$8;

    invoke-direct {v4, p0, v1, v0, p1}, Lcn/jim/wallethelper/tools/soda/SodaController$8;-><init>(Lcn/jim/wallethelper/tools/soda/SodaController;ILjava/lang/String;Lcn/jim/wallethelper/tools/soda/SodaController$Screen;)V

    invoke-virtual {v2, v3, v4}, Lcn/jim/wallethelper/tools/soda/SodaVision;->request(Landroid/accessibilityservice/AccessibilityService;Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visual:Lcn/jim/wallethelper/tools/soda/SodaVision$Result;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visual:Lcn/jim/wallethelper/tools/soda/SodaVision$Result;

    iget-object v1, v1, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->windowId:I

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visual:Lcn/jim/wallethelper/tools/soda/SodaVision$Result;

    iget v1, v1, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->sourceWindow:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visual:Lcn/jim/wallethelper/tools/soda/SodaVision$Result;

    iget-wide v1, v0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->captured:J

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visual:Lcn/jim/wallethelper/tools/soda/SodaVision$Result;

    iget v5, v0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->width:I

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visual:Lcn/jim/wallethelper/tools/soda/SodaVision$Result;

    iget v6, v0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->height:I

    iget v7, p1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->width:I

    iget v8, p1, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->height:I

    move-wide v3, p2

    invoke-static/range {v1 .. v8}, Lcn/jim/wallethelper/tools/soda/VisualContext;->usable(JJIIII)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->visual:Lcn/jim/wallethelper/tools/soda/SodaVision$Result;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private screen()Lcn/jim/wallethelper/tools/soda/SodaController$Screen;
    .locals 15

    .line 85
    new-instance v0, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;-><init>(Lcn/jim/wallethelper/tools/soda/SodaController$Screen;)V

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->service:Lcn/jim/wallethelper/WalletService;

    invoke-virtual {v1}, Lcn/jim/wallethelper/WalletService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 86
    :cond_0
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcn/jim/wallethelper/tools/soda/SodaController;->string(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->packageName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v2

    iput v2, v0, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->windowId:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->service:Lcn/jim/wallethelper/WalletService;

    invoke-virtual {v4}, Lcn/jim/wallethelper/WalletService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->width:I

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->service:Lcn/jim/wallethelper/WalletService;

    invoke-virtual {v4}, Lcn/jim/wallethelper/WalletService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->height:I

    .line 87
    const/4 v3, 0x0

    invoke-direct {p0, v1, v0, v3}, Lcn/jim/wallethelper/tools/soda/SodaController;->walk(Landroid/view/accessibility/AccessibilityNodeInfo;Lcn/jim/wallethelper/tools/soda/SodaController$Screen;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    iget-object v4, v0, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->header:Ljava/lang/String;

    return-object v0

    .line 88
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Lcn/jim/wallethelper/tools/soda/SodaController;->string(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Lcn/jim/wallethelper/tools/soda/SodaController;->string(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, ""

    goto :goto_2

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xfa0

    if-le v7, v8, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    iget v5, v2, Landroid/graphics/Rect;->top:I

    if-ltz v5, :cond_2

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    int-to-double v9, v5

    iget v5, v0, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->height:I

    int-to-double v11, v5

    const-wide v13, 0x3fc47ae147ae147bL    # 0.16

    mul-double/2addr v11, v13

    cmpg-double v5, v9, v11

    if-gtz v5, :cond_2

    iget v5, v2, Landroid/graphics/Rect;->left:I

    int-to-double v9, v5

    iget v5, v0, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->width:I

    int-to-double v11, v5

    const-wide v13, 0x3fdccccccccccccdL    # 0.45

    mul-double/2addr v11, v13

    cmpl-double v5, v9, v11

    if-ltz v5, :cond_2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public static start(Lcn/jim/wallethelper/WalletService;Ljava/lang/String;I)V
    .locals 2

    .line 47
    invoke-static {}, Lcn/jim/wallethelper/tools/soda/SodaController;->stop()V

    if-gtz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcn/jim/wallethelper/WalletService;->enterExtraTool()V

    .line 48
    new-instance v0, Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-direct {v0, p0, p1, p2}, Lcn/jim/wallethelper/tools/soda/SodaController;-><init>(Lcn/jim/wallethelper/WalletService;Ljava/lang/String;I)V

    sput-object v0, Lcn/jim/wallethelper/tools/soda/SodaController;->current:Lcn/jim/wallethelper/tools/soda/SodaController;

    .line 49
    :try_start_0
    invoke-direct {v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->overlay()V

    new-instance p1, Lcn/jim/wallethelper/tools/soda/SodaVision;

    invoke-direct {p1, p0}, Lcn/jim/wallethelper/tools/soda/SodaVision;-><init>(Landroid/content/Context;)V

    iput-object p1, v0, Lcn/jim/wallethelper/tools/soda/SodaController;->vision:Lcn/jim/wallethelper/tools/soda/SodaVision;

    const-string p0, "\u5df2\u542f\u52a8\uff1a\u8bf7\u8fdb\u5165\u514d\u8d39\u542c\u5e7f\u544a\u9875"

    invoke-direct {v0, p0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V

    iget-object p0, v0, Lcn/jim/wallethelper/tools/soda/SodaController;->handler:Landroid/os/Handler;

    iget-object p1, v0, Lcn/jim/wallethelper/tools/soda/SodaController;->ticker:Ljava/lang/Runnable;

    const-wide/16 v0, 0x708

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-void

    .line 49
    :catch_0
    move-exception p0

    invoke-static {}, Lcn/jim/wallethelper/tools/soda/SodaController;->stop()V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "\u65e0\u6cd5\u663e\u793a\u6c7d\u6c34\u6d6e\u7a97"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private step()V
    .locals 20

    .line 93
    move-object/from16 v7, p0

    const-string v0, "|"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    iget-wide v1, v1, Lcn/jim/wallethelper/tools/soda/AdSession;->nextAction:J

    cmp-long v1, v8, v1

    if-gez v1, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->service:Lcn/jim/wallethelper/WalletService;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Lcn/jim/wallethelper/WalletService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "\u5c4f\u5e55\u5df2\u9501\u5b9a\uff0c\u89e3\u9501\u540e\u7ee7\u7eed"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->pauseWith(Ljava/lang/String;)V

    return-void

    .line 95
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcn/jim/wallethelper/tools/soda/SodaController;->screen()Lcn/jim/wallethelper/tools/soda/SodaController$Screen;

    move-result-object v10

    .line 96
    :try_start_0
    iget-object v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->pkg:Ljava/lang/String;

    iget-object v2, v10, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 97
    if-nez v11, :cond_4

    .line 98
    iget-object v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->service:Lcn/jim/wallethelper/WalletService;

    invoke-virtual {v1}, Lcn/jim/wallethelper/WalletService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v10, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "\u7b49\u5f85\u56de\u5230\u6c7d\u6c34\u97f3\u4e50"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 98
    return-void

    .line 99
    :cond_2
    :try_start_1
    iget-boolean v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->adContext:Z

    iget-wide v2, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->lastAd:J

    iget-object v6, v10, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->text:Ljava/lang/String;

    move-wide v4, v8

    invoke-static/range {v1 .. v6}, Lcn/jim/wallethelper/tools/soda/AdPageRules;->externalLiveAllowed(ZJJLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 100
    iget-wide v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->started:J

    sub-long/2addr v8, v0

    const-wide/16 v0, 0x2710

    cmp-long v0, v8, v0

    if-gez v0, :cond_3

    const-string v0, "\u7b49\u5f85\u6c7d\u6c34\u97f3\u4e50\u6253\u5f00"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 100
    return-void

    .line 101
    :cond_3
    :try_start_2
    const-string v0, "\u5f53\u524d\u4e0d\u5728\u6c7d\u6c34\u5e7f\u544a\u6216\u5173\u8054\u76f4\u64ad\u9875\uff0c\u8bf7\u8fd4\u56de\u540e\u7ee7\u7eed"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->pauseWith(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 101
    return-void

    .line 104
    :cond_4
    nop

    .line 105
    if-eqz v11, :cond_5

    :try_start_3
    iget-object v1, v10, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->header:Ljava/lang/String;

    invoke-static {v1}, Lcn/jim/wallethelper/tools/soda/AdSession;->countdown(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_5

    invoke-direct {v7, v10, v8, v9}, Lcn/jim/wallethelper/tools/soda/SodaController;->readVision(Lcn/jim/wallethelper/tools/soda/SodaController$Screen;J)Lcn/jim/wallethelper/tools/soda/SodaVision$Result;

    move-result-object v1

    move-object v12, v1

    goto :goto_0

    .line 106
    :cond_5
    const/4 v1, 0x0

    move-object v12, v1

    :goto_0
    const-wide/32 v1, 0x927c0

    const-wide/16 v3, 0x0

    const/4 v13, 0x1

    if-eqz v12, :cond_8

    iget-object v5, v12, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->header:Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;

    iget-boolean v5, v5, Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;->waiting:Z

    if-eqz v5, :cond_8

    .line 107
    iput-boolean v13, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->adContext:Z

    iput-wide v8, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->lastAd:J

    .line 108
    iget-wide v5, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->continuousAdSince:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_6

    iput-wide v8, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->continuousAdSince:J

    .line 109
    :cond_6
    iget-wide v3, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->continuousAdSince:J

    sub-long v3, v8, v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_7

    const-string v0, "\u56fe\u50cf\u5012\u8ba1\u65f6\u957f\u65f6\u95f4\u672a\u7ed3\u675f\uff0c\u8bf7\u68c0\u67e5\u5e7f\u544a"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->pauseWith(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 109
    return-void

    .line 110
    :cond_7
    :try_start_4
    iget-object v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    invoke-virtual {v0, v13, v8, v9}, Lcn/jim/wallethelper/tools/soda/AdSession;->observeCountdown(IJ)V

    .line 111
    const-string v0, "\u56fe\u50cf\u8bc6\u522b\u5230\u5012\u8ba1\u65f6\uff0c\u7b49\u5f85\u7ed3\u675f"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 111
    return-void

    .line 113
    :cond_8
    if-eqz v12, :cond_9

    :try_start_5
    iget-object v5, v12, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->header:Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;

    iget-boolean v5, v5, Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;->success:Z

    if-eqz v5, :cond_9

    iget-object v5, v10, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->header:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n\u9886\u53d6\u6210\u529f"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v10, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->header:Ljava/lang/String;

    .line 114
    :cond_9
    if-eqz v12, :cond_a

    iget-object v5, v12, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->popup:Lcn/jim/wallethelper/tools/soda/PopupVision$Result;

    iget-boolean v5, v5, Lcn/jim/wallethelper/tools/soda/PopupVision$Result;->continuation:Z

    if-eqz v5, :cond_a

    move v5, v13

    goto :goto_1

    :cond_a
    const/4 v5, 0x0

    .line 115
    :goto_1
    invoke-direct {v7, v10}, Lcn/jim/wallethelper/tools/soda/SodaController;->findTopClose(Lcn/jim/wallethelper/tools/soda/SodaController$Screen;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v15

    .line 116
    iget-object v6, v10, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_d

    if-nez v15, :cond_d

    if-nez v5, :cond_d

    if-eqz v12, :cond_b

    iget-object v6, v12, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->header:Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;

    iget-boolean v6, v6, Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;->success:Z

    if-nez v6, :cond_d

    iget-object v6, v12, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->live:Lcn/jim/wallethelper/tools/soda/LiveVision$Result;

    iget-boolean v6, v6, Lcn/jim/wallethelper/tools/soda/LiveVision$Result;->recognized:Z

    if-nez v6, :cond_d

    :cond_b
    iget-wide v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->lastReadable:J

    sub-long/2addr v8, v0

    const-wide/16 v0, 0x7530

    cmp-long v0, v8, v0

    if-lez v0, :cond_c

    const-string v0, "\u9875\u9762\u6587\u5b57\u4e0d\u53ef\u8bfb\uff0c\u8bf7\u70b9\u8bca\u65ad"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->pauseWith(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const-string v0, "\u7b49\u5f85\u5e7f\u544a\u6587\u5b57\u52a0\u8f7d"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 190
    :goto_2
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 116
    return-void

    .line 117
    :cond_d
    :try_start_6
    iput-wide v8, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->lastReadable:J

    .line 118
    iget-object v6, v10, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->header:Ljava/lang/String;

    invoke-static {v6}, Lcn/jim/wallethelper/tools/soda/AdSession;->countdown(Ljava/lang/String;)I

    move-result v6

    .line 119
    if-ltz v6, :cond_11

    .line 120
    iput-boolean v13, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->adContext:Z

    iput-wide v8, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->lastAd:J

    .line 121
    iget-wide v13, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->continuousAdSince:J

    cmp-long v13, v13, v3

    if-nez v13, :cond_e

    iput-wide v8, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->continuousAdSince:J

    .line 122
    :cond_e
    iget-wide v13, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->continuousAdSince:J

    sub-long v13, v8, v13

    cmp-long v1, v13, v1

    if-lez v1, :cond_f

    const-string v0, "\u5e7f\u544a\u5012\u8ba1\u65f6\u957f\u65f6\u95f4\u672a\u7ed3\u675f\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->pauseWith(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 122
    return-void

    .line 123
    :cond_f
    :try_start_7
    iget-object v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    iget-boolean v1, v1, Lcn/jim/wallethelper/tools/soda/AdSession;->awaitingNew:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    iput v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->closeTries:I

    iput v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->benefitTries:I

    const-string v1, ""

    iput-object v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->closePage:Ljava/lang/String;

    .line 124
    :cond_10
    iget-object v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    invoke-virtual {v1, v6, v8, v9}, Lcn/jim/wallethelper/tools/soda/AdSession;->observeCountdown(IJ)V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5e7f\u544a\u5012\u8ba1\u65f6 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u79d2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-lez v6, :cond_11

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 125
    return-void

    .line 127
    :cond_11
    :try_start_8
    iget-object v1, v10, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->text:Ljava/lang/String;

    invoke-static {v1}, Lcn/jim/wallethelper/tools/soda/AdSession;->upsell(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    if-nez v5, :cond_12

    const/4 v13, 0x0

    goto :goto_3

    :cond_12
    const/4 v13, 0x1

    .line 128
    :goto_3
    if-eqz v15, :cond_13

    if-nez v13, :cond_13

    iget-object v1, v10, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->text:Ljava/lang/String;

    invoke-static {v1}, Lcn/jim/wallethelper/tools/soda/AdPageRules;->dayBenefitHint(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v10, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->header:Ljava/lang/String;

    invoke-static {v1}, Lcn/jim/wallethelper/tools/soda/AdSession;->success(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 129
    iget-object v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    invoke-virtual {v1, v8, v9}, Lcn/jim/wallethelper/tools/soda/AdSession;->observeTimerFreePage(J)V

    const/4 v1, 0x1

    iput-boolean v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->adContext:Z

    iput-wide v8, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->lastAd:J

    .line 131
    :cond_13
    iget-object v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    iget-object v2, v10, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->header:Ljava/lang/String;

    invoke-virtual {v1, v2, v8, v9}, Lcn/jim/wallethelper/tools/soda/AdSession;->credit(Ljava/lang/String;J)Z

    move-result v14

    .line 132
    if-eqz v14, :cond_14

    iput-wide v3, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->continuousAdSince:J

    const/4 v1, 0x1

    iput-boolean v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->adContext:Z

    iput-wide v8, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->lastAd:J

    .line 135
    :cond_14
    const-wide/16 v16, 0x708

    const/4 v4, 0x2

    if-eqz v11, :cond_17

    iget-object v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    iget-boolean v1, v1, Lcn/jim/wallethelper/tools/soda/AdSession;->credited:Z

    if-eqz v1, :cond_17

    iget-object v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    iget-boolean v1, v1, Lcn/jim/wallethelper/tools/soda/AdSession;->awaitingNew:Z

    if-nez v1, :cond_17

    iget-object v1, v10, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->text:Ljava/lang/String;

    invoke-static {v1}, Lcn/jim/wallethelper/tools/soda/AdPageRules;->dayBenefitHint(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 136
    iget v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->benefitTries:I

    if-lt v0, v4, :cond_15

    const-string v0, "\u798f\u5229\u9886\u53d6\u9875\u9762\u672a\u53d8\u5316\uff0c\u8bf7\u68c0\u67e5\u540e\u7ee7\u7eed"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->pauseWith(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 136
    return-void

    .line 137
    :cond_15
    :try_start_9
    invoke-direct {v7, v10}, Lcn/jim/wallethelper/tools/soda/SodaController;->clickBenefit(Lcn/jim/wallethelper/tools/soda/SodaController$Screen;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->benefitTries:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->benefitTries:I

    iget-object v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    add-long v1, v8, v16

    iput-wide v1, v0, Lcn/jim/wallethelper/tools/soda/AdSession;->nextAction:J

    iget-object v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    iput-wide v8, v0, Lcn/jim/wallethelper/tools/soda/AdSession;->lastProgress:J

    const-string v0, "\u9886\u53d6\u5929\u6570\u798f\u5229"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 137
    return-void

    .line 138
    :cond_16
    :try_start_a
    const-string v0, "\u672a\u8bc6\u522b\u5929\u6570\u798f\u5229\u9886\u53d6\u6309\u94ae\uff0c\u8bf7\u70b9\u8bca\u65ad"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V

    invoke-direct {v7, v8, v9}, Lcn/jim/wallethelper/tools/soda/SodaController;->timeout(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 138
    return-void

    .line 140
    :cond_17
    if-eqz v11, :cond_20

    if-eqz v13, :cond_20

    .line 141
    if-nez v14, :cond_18

    :try_start_b
    iget-object v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    iget-boolean v0, v0, Lcn/jim/wallethelper/tools/soda/AdSession;->credited:Z

    if-nez v0, :cond_18

    const-string v0, "\u672a\u786e\u8ba4\u672c\u6761\u5956\u52b1\uff0c\u7b49\u5f85\u9886\u53d6\u6210\u529f"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V

    invoke-direct {v7, v8, v9}, Lcn/jim/wallethelper/tools/soda/SodaController;->timeout(J)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 141
    return-void

    .line 142
    :cond_18
    :try_start_c
    iget-object v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    iget-boolean v0, v0, Lcn/jim/wallethelper/tools/soda/AdSession;->awaitingNew:Z

    if-eqz v0, :cond_19

    const-string v0, "\u7b49\u5f85\u4e0b\u4e00\u6761\u5e7f\u544a\u52a0\u8f7d"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V

    invoke-direct {v7, v8, v9}, Lcn/jim/wallethelper/tools/soda/SodaController;->timeout(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 142
    return-void

    .line 143
    :cond_19
    :try_start_d
    iget-object v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    invoke-virtual {v0}, Lcn/jim/wallethelper/tools/soda/AdSession;->finished()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 144
    iget v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->benefitTries:I

    if-lt v0, v4, :cond_1a

    const-string v0, "\u5df2\u8fbe\u5230\u6b21\u6570\uff0c\u8bf7\u624b\u52a8\u9000\u51fa\u5f39\u7a97\u5e76\u505c\u6b62"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->pauseWith(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 144
    return-void

    .line 145
    :cond_1a
    :try_start_e
    const-string v0, "\u575a\u6301\u9000\u51fa"

    invoke-direct {v7, v10, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->clickExact(Lcn/jim/wallethelper/tools/soda/SodaController$Screen;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    if-eqz v5, :cond_1b

    iget-object v0, v12, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->popup:Lcn/jim/wallethelper/tools/soda/PopupVision$Result;

    iget-object v3, v0, Lcn/jim/wallethelper/tools/soda/PopupVision$Result;->exit:Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v4, v10

    move-wide v5, v8

    invoke-direct/range {v1 .. v6}, Lcn/jim/wallethelper/tools/soda/SodaController;->tapVisual(Lcn/jim/wallethelper/tools/soda/SodaVision$Result;Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;Lcn/jim/wallethelper/tools/soda/SodaController$Screen;J)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_4

    .line 146
    :cond_1b
    const-string v0, "\u5956\u52b1\u5df2\u786e\u8ba4\uff0c\u8bf7\u624b\u52a8\u9000\u51fa\u5f39\u7a97\u5e76\u505c\u6b62"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->pauseWith(Ljava/lang/String;)V

    goto :goto_5

    .line 145
    :cond_1c
    :goto_4
    iget v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->benefitTries:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->benefitTries:I

    const-string v0, "\u5df2\u8fbe\u5230\u6b21\u6570\uff0c\u6b63\u5728\u9000\u51fa\u5f39\u7a97"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V

    iget-object v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    const-wide/16 v1, 0x5dc

    add-long/2addr v8, v1

    iput-wide v8, v0, Lcn/jim/wallethelper/tools/soda/AdSession;->nextAction:J
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 190
    :goto_5
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 146
    return-void

    .line 148
    :cond_1d
    :try_start_f
    const-string v0, "\u9886\u53d6\u5956\u52b1"

    invoke-direct {v7, v10, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->clickExact(Lcn/jim/wallethelper/tools/soda/SodaController$Screen;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    if-eqz v5, :cond_1e

    iget-object v0, v12, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->popup:Lcn/jim/wallethelper/tools/soda/PopupVision$Result;

    iget-object v3, v0, Lcn/jim/wallethelper/tools/soda/PopupVision$Result;->claim:Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v4, v10

    move-wide v5, v8

    invoke-direct/range {v1 .. v6}, Lcn/jim/wallethelper/tools/soda/SodaController;->tapVisual(Lcn/jim/wallethelper/tools/soda/SodaVision$Result;Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;Lcn/jim/wallethelper/tools/soda/SodaController$Screen;J)Z

    move-result v0

    if-eqz v0, :cond_1e

    goto :goto_6

    .line 149
    :cond_1e
    const-string v0, "\u672a\u8bc6\u522b\u5f39\u7a97\u9886\u53d6\u6309\u94ae\uff0c\u8bf7\u70b9\u8bca\u65ad"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V

    invoke-direct {v7, v8, v9}, Lcn/jim/wallethelper/tools/soda/SodaController;->timeout(J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 149
    return-void

    .line 148
    :cond_1f
    :goto_6
    :try_start_10
    invoke-direct {v7, v8, v9}, Lcn/jim/wallethelper/tools/soda/SodaController;->beginNext(J)V

    const-string v0, "\u9886\u53d6\u7eed\u770b\u798f\u5229\uff0c\u51c6\u5907\u4e0b\u4e00\u6761\u5e7f\u544a"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 148
    return-void

    .line 151
    :cond_20
    if-eqz v12, :cond_23

    :try_start_11
    iget-object v1, v12, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->live:Lcn/jim/wallethelper/tools/soda/LiveVision$Result;

    iget-boolean v1, v1, Lcn/jim/wallethelper/tools/soda/LiveVision$Result;->recognized:Z

    if-eqz v1, :cond_23

    if-nez v13, :cond_23

    iget-object v1, v12, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->header:Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;

    iget-boolean v1, v1, Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;->waiting:Z

    if-nez v1, :cond_23

    if-gtz v6, :cond_23

    if-eqz v11, :cond_23

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "visual-live:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v10, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    iget-object v2, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->closePage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    iput-object v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->closePage:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->closeTries:I

    .line 154
    :cond_21
    iget v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->closeTries:I

    if-lt v1, v4, :cond_22

    const-string v0, "\u76f4\u64ad\u5173\u95ed\u540e\u9875\u9762\u672a\u53d8\u5316\uff0c\u8bf7\u70b9\u8bca\u65ad"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->pauseWith(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 154
    return-void

    .line 155
    :cond_22
    :try_start_12
    iget-object v1, v12, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->live:Lcn/jim/wallethelper/tools/soda/LiveVision$Result;

    iget-object v3, v1, Lcn/jim/wallethelper/tools/soda/LiveVision$Result;->close:Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    move-object/from16 v1, p0

    move-object v2, v12

    move v5, v4

    move-object v4, v10

    move/from16 v18, v6

    move/from16 v19, v14

    move v14, v5

    move-wide v5, v8

    invoke-direct/range {v1 .. v6}, Lcn/jim/wallethelper/tools/soda/SodaController;->tapVisual(Lcn/jim/wallethelper/tools/soda/SodaVision$Result;Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;Lcn/jim/wallethelper/tools/soda/SodaController$Screen;J)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 156
    iget-object v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    invoke-virtual {v0, v8, v9}, Lcn/jim/wallethelper/tools/soda/AdSession;->observeTimerFreePage(J)V

    iget v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->closeTries:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->closeTries:I

    iget-object v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    add-long v1, v8, v16

    iput-wide v1, v0, Lcn/jim/wallethelper/tools/soda/AdSession;->nextAction:J

    iget-object v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    iput-wide v8, v0, Lcn/jim/wallethelper/tools/soda/AdSession;->lastProgress:J

    iput-wide v8, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->lastAd:J

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->adContext:Z

    const-string v0, "\u56fe\u50cf\u8bc6\u522b\u76f4\u64ad\u53f3\u4e0a\u89d2\u00d7\uff0c\u70b9\u51fb\u5173\u95ed"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 157
    return-void

    .line 151
    :cond_23
    move/from16 v18, v6

    move/from16 v19, v14

    move v14, v4

    .line 160
    :cond_24
    if-eqz v12, :cond_27

    :try_start_13
    iget-object v1, v12, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->header:Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;

    iget-boolean v1, v1, Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;->success:Z

    if-eqz v1, :cond_27

    iget-object v1, v12, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->header:Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;

    iget-object v1, v1, Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;->close:Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    if-eqz v1, :cond_27

    if-nez v15, :cond_27

    if-nez v13, :cond_27

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "visual-header:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v10, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    iget-object v2, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->closePage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    iput-object v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->closePage:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->closeTries:I

    .line 163
    :cond_25
    iget v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->closeTries:I

    if-lt v1, v14, :cond_26

    const-string v0, "\u56fe\u50cf\u5173\u95ed\u540e\u9875\u9762\u672a\u53d8\u5316\uff0c\u8bf7\u70b9\u8bca\u65ad"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->pauseWith(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 163
    return-void

    .line 164
    :cond_26
    :try_start_14
    iget-object v1, v12, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->header:Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;

    iget-object v3, v1, Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;->close:Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    move-object/from16 v1, p0

    move-object v2, v12

    move-object v4, v10

    move-wide v5, v8

    invoke-direct/range {v1 .. v6}, Lcn/jim/wallethelper/tools/soda/SodaController;->tapVisual(Lcn/jim/wallethelper/tools/soda/SodaVision$Result;Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;Lcn/jim/wallethelper/tools/soda/SodaController$Screen;J)Z

    move-result v1

    if-eqz v1, :cond_27

    iget v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->closeTries:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->closeTries:I

    iget-object v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    add-long v1, v8, v16

    iput-wide v1, v0, Lcn/jim/wallethelper/tools/soda/AdSession;->nextAction:J

    iget-object v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    iput-wide v8, v0, Lcn/jim/wallethelper/tools/soda/AdSession;->lastProgress:J

    const-string v0, "\u56fe\u50cf\u8bc6\u522b\u9886\u53d6\u6210\u529f\uff0c\u70b9\u51fb\u53f3\u4e0a\u89d2\u5173\u95ed"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 164
    return-void

    .line 167
    :cond_27
    if-eqz v11, :cond_29

    :try_start_15
    iget-object v1, v10, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->header:Ljava/lang/String;

    invoke-static {v1}, Lcn/jim/wallethelper/tools/soda/AdSession;->countdown(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_29

    iget-object v1, v10, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->header:Ljava/lang/String;

    invoke-static {v1}, Lcn/jim/wallethelper/tools/soda/AdSession;->success(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_29

    if-nez v12, :cond_29

    .line 168
    iget-object v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->visualError:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "\u6b63\u5728\u8bc6\u522b\u5e7f\u544a\u753b\u9762"

    goto :goto_7

    :cond_28
    iget-object v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->visualError:Ljava/lang/String;

    :goto_7
    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V

    invoke-direct {v7, v8, v9}, Lcn/jim/wallethelper/tools/soda/SodaController;->timeout(J)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 168
    return-void

    .line 170
    :cond_29
    if-eqz v15, :cond_2f

    :try_start_16
    iget-object v1, v10, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->header:Ljava/lang/String;

    invoke-static {v1}, Lcn/jim/wallethelper/tools/soda/AdPageRules;->closeReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 171
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v15, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v10, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v10, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->header:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    iget-object v1, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->closePage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    iput-object v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->closePage:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->closeTries:I

    .line 174
    :cond_2a
    iget v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->closeTries:I

    if-lt v0, v14, :cond_2b

    const-string v0, "\u5173\u95ed\u540e\u9875\u9762\u672a\u53d8\u5316\uff0c\u8bf7\u624b\u52a8\u5173\u95ed\u540e\u7ee7\u7eed"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->pauseWith(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 174
    return-void

    .line 175
    :cond_2b
    :try_start_17
    invoke-direct {v7, v15, v10}, Lcn/jim/wallethelper/tools/soda/SodaController;->click(Landroid/view/accessibility/AccessibilityNodeInfo;Lcn/jim/wallethelper/tools/soda/SodaController$Screen;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->closeTries:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->closeTries:I

    iget-object v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    add-long v1, v8, v16

    iput-wide v1, v0, Lcn/jim/wallethelper/tools/soda/AdSession;->nextAction:J

    iget-object v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    iput-wide v8, v0, Lcn/jim/wallethelper/tools/soda/AdSession;->lastProgress:J

    if-eqz v19, :cond_2c

    const-string v0, "\u9886\u53d6\u6210\u529f\uff0c\u70b9\u51fb\u53f3\u4e0a\u89d2\u5173\u95ed"

    goto :goto_8

    :cond_2c
    iget-object v0, v10, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->text:Ljava/lang/String;

    invoke-static {v0}, Lcn/jim/wallethelper/tools/soda/AdPageRules;->live(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "\u76f4\u64ad\u65e0\u5012\u8ba1\u65f6\uff0c\u70b9\u51fb\u53f3\u4e0a\u89d2\u5173\u95ed"

    goto :goto_8

    :cond_2d
    const-string v0, "\u65e0\u5012\u8ba1\u65f6\uff0c\u70b9\u51fb\u53f3\u4e0a\u89d2\u5173\u95ed"

    :goto_8
    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 175
    return-void

    .line 176
    :cond_2e
    :try_start_18
    const-string v0, "\u5173\u95ed\u6309\u94ae\u88ab\u906e\u6321\u6216\u4e0d\u53ef\u70b9\uff0c\u8bf7\u79fb\u52a8\u6d6e\u7a97\u540e\u7ee7\u7eed"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->pauseWith(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 176
    return-void

    .line 178
    :cond_2f
    if-nez v11, :cond_30

    :try_start_19
    const-string v0, "\u7b49\u5f85\u76f4\u64ad\u53f3\u4e0a\u89d2\u5173\u95ed\u6309\u94ae"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V

    invoke-direct {v7, v8, v9}, Lcn/jim/wallethelper/tools/soda/SodaController;->timeout(J)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 178
    return-void

    .line 179
    :cond_30
    if-eqz v19, :cond_31

    .line 180
    :try_start_1a
    const-string v0, "\u9886\u53d6\u6210\u529f\uff0c\u7b49\u5f85\u5173\u95ed\u6309\u94ae\u6216\u798f\u5229\u5f39\u7a97"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V

    invoke-direct {v7, v8, v9}, Lcn/jim/wallethelper/tools/soda/SodaController;->timeout(J)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 180
    return-void

    .line 183
    :cond_31
    :try_start_1b
    iget-object v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    iget-boolean v0, v0, Lcn/jim/wallethelper/tools/soda/AdSession;->credited:Z

    if-eqz v0, :cond_34

    iget-object v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    iget-boolean v0, v0, Lcn/jim/wallethelper/tools/soda/AdSession;->awaitingNew:Z

    if-nez v0, :cond_34

    iget-object v0, v10, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->header:Ljava/lang/String;

    invoke-static {v0}, Lcn/jim/wallethelper/tools/soda/AdSession;->success(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_34

    if-gez v18, :cond_34

    .line 184
    iget-object v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    invoke-virtual {v0}, Lcn/jim/wallethelper/tools/soda/AdSession;->finished()Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "\u672c\u6b21\u5df2\u5b8c\u6210\uff1b\u70b9\u51fb\u505c\u6b62\u7ed3\u675f"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->pauseWith(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 184
    return-void

    .line 185
    :cond_32
    :try_start_1c
    invoke-direct {v7, v10}, Lcn/jim/wallethelper/tools/soda/SodaController;->clickEntry(Lcn/jim/wallethelper/tools/soda/SodaController$Screen;)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-direct {v7, v8, v9}, Lcn/jim/wallethelper/tools/soda/SodaController;->beginNext(J)V

    const-string v0, "\u6253\u5f00\u4e0b\u4e00\u6761\u5e7f\u544a"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 185
    return-void

    .line 186
    :cond_33
    :try_start_1d
    const-string v0, "\u8bf7\u624b\u52a8\u8fdb\u5165\u4e0b\u4e00\u6761\u514d\u8d39\u542c\u5e7f\u544a"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V

    invoke-direct {v7, v8, v9}, Lcn/jim/wallethelper/tools/soda/SodaController;->timeout(J)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 186
    return-void

    .line 188
    :cond_34
    :try_start_1e
    iget-object v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    iget-boolean v0, v0, Lcn/jim/wallethelper/tools/soda/AdSession;->awaitingNew:Z

    if-nez v0, :cond_35

    if-gez v18, :cond_35

    invoke-direct {v7, v10}, Lcn/jim/wallethelper/tools/soda/SodaController;->clickEntry(Lcn/jim/wallethelper/tools/soda/SodaController$Screen;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-direct {v7, v8, v9}, Lcn/jim/wallethelper/tools/soda/SodaController;->beginNext(J)V

    const-string v0, "\u5df2\u70b9\u51fb\u770b\u5e7f\u544a\uff0c\u7b49\u5f85\u52a0\u8f7d"

    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 188
    return-void

    .line 189
    :cond_35
    :try_start_1f
    iget-object v0, v7, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    iget-boolean v0, v0, Lcn/jim/wallethelper/tools/soda/AdSession;->awaitingNew:Z

    if-eqz v0, :cond_36

    const-string v0, "\u7b49\u5f85\u65b0\u5e7f\u544a\u5012\u8ba1\u65f6"

    goto :goto_9

    :cond_36
    const-string v0, "\u8bf7\u8fdb\u5165\u5e7f\u544a\u9875\uff1b\u7b49\u5f85\u9886\u53d6\u6210\u529f"

    :goto_9
    invoke-direct {v7, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V

    invoke-direct {v7, v8, v9}, Lcn/jim/wallethelper/tools/soda/SodaController;->timeout(J)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    .line 190
    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v0

    invoke-virtual {v10}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->release()V

    throw v0
.end method

.method public static stop()V
    .locals 4

    .line 52
    sget-object v0, Lcn/jim/wallethelper/tools/soda/SodaController;->current:Lcn/jim/wallethelper/tools/soda/SodaController;

    const/4 v1, 0x0

    sput-object v1, Lcn/jim/wallethelper/tools/soda/SodaController;->current:Lcn/jim/wallethelper/tools/soda/SodaController;

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcn/jim/wallethelper/tools/soda/SodaController;->disposed:Z

    iget v3, v0, Lcn/jim/wallethelper/tools/soda/SodaController;->visionEpoch:I

    add-int/2addr v3, v2

    iput v3, v0, Lcn/jim/wallethelper/tools/soda/SodaController;->visionEpoch:I

    iget-object v2, v0, Lcn/jim/wallethelper/tools/soda/SodaController;->vision:Lcn/jim/wallethelper/tools/soda/SodaVision;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcn/jim/wallethelper/tools/soda/SodaController;->vision:Lcn/jim/wallethelper/tools/soda/SodaVision;

    invoke-virtual {v2}, Lcn/jim/wallethelper/tools/soda/SodaVision;->close()V

    :cond_1
    iget-object v2, v0, Lcn/jim/wallethelper/tools/soda/SodaController;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 54
    iget-object v1, v0, Lcn/jim/wallethelper/tools/soda/SodaController;->panel:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, v0, Lcn/jim/wallethelper/tools/soda/SodaController;->wm:Landroid/view/WindowManager;

    iget-object v2, v0, Lcn/jim/wallethelper/tools/soda/SodaController;->panel:Landroid/widget/LinearLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 55
    :cond_2
    :goto_0
    iget-object v0, v0, Lcn/jim/wallethelper/tools/soda/SodaController;->service:Lcn/jim/wallethelper/WalletService;

    invoke-virtual {v0}, Lcn/jim/wallethelper/WalletService;->exitExtraTool()V

    .line 56
    return-void
.end method

.method private static string(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 78
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private tapVisual(Lcn/jim/wallethelper/tools/soda/SodaVision$Result;Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;Lcn/jim/wallethelper/tools/soda/SodaController$Screen;J)Z
    .locals 9

    .line 211
    const/4 v0, 0x0

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    iget-wide v1, p1, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->captured:J

    iget v5, p1, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->width:I

    iget v6, p1, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->height:I

    iget v7, p3, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->width:I

    iget v8, p3, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->height:I

    move-wide v3, p4

    invoke-static/range {v1 .. v8}, Lcn/jim/wallethelper/tools/soda/VisualContext;->usable(JJIIII)Z

    move-result p4

    if-eqz p4, :cond_6

    iget-object p4, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->pkg:Ljava/lang/String;

    iget-object p5, p3, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->packageName:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    iget-object p4, p3, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->packageName:Ljava/lang/String;

    iget-object p5, p1, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    iget p3, p3, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->windowId:I

    iget p4, p1, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->sourceWindow:I

    if-ne p3, p4, :cond_6

    iget-boolean p3, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->paused:Z

    if-nez p3, :cond_6

    iget-boolean p3, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->disposed:Z

    if-eqz p3, :cond_0

    goto/16 :goto_1

    .line 212
    :cond_0
    iget-object p3, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->service:Lcn/jim/wallethelper/WalletService;

    invoke-virtual {p3}, Lcn/jim/wallethelper/WalletService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p3

    .line 213
    const/4 p4, 0x1

    if-eqz p3, :cond_1

    iget-object p5, p1, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->string(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    iget p5, p1, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->sourceWindow:I

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v1

    if-ne p5, v1, :cond_1

    move p5, p4

    goto :goto_0

    :cond_1
    move p5, v0

    .line 214
    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 215
    :cond_2
    if-nez p5, :cond_3

    invoke-direct {p0}, Lcn/jim/wallethelper/tools/soda/SodaController;->invalidateVision()V

    return v0

    .line 216
    :cond_3
    invoke-virtual {p1, p2}, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->x(Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;)F

    move-result p3

    invoke-virtual {p1, p2}, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->y(Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;)F

    move-result p1

    .line 217
    const/4 p2, 0x2

    new-array p2, p2, [I

    iget-object p5, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {p5, p2}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 218
    new-instance p5, Landroid/graphics/Rect;

    aget v1, p2, v0

    aget v2, p2, p4

    aget v3, p2, v0

    iget-object v4, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    aget p2, p2, p4

    iget-object p4, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->panel:Landroid/widget/LinearLayout;

    invoke-virtual {p4}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p4

    add-int/2addr p2, p4

    invoke-direct {p5, v1, v2, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 219
    float-to-int p2, p3

    float-to-int p4, p1

    invoke-virtual {p5, p2, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p1, "\u8bf7\u79fb\u52a8\u6d6e\u7a97\uff0c\u907f\u5f00\u8bc6\u522b\u5230\u7684\u6309\u94ae"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/tools/soda/SodaController;->note(Ljava/lang/String;)V

    return v0

    .line 220
    :cond_4
    iget-object p2, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->service:Lcn/jim/wallethelper/WalletService;

    invoke-virtual {p2, p3, p1}, Lcn/jim/wallethelper/WalletService;->extraTap(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcn/jim/wallethelper/tools/soda/SodaController;->invalidateVision()V

    :cond_5
    return p1

    .line 211
    :cond_6
    :goto_1
    return v0
.end method

.method private timeout(J)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController;->session:Lcn/jim/wallethelper/tools/soda/AdSession;

    iget-wide v0, v0, Lcn/jim/wallethelper/tools/soda/AdSession;->lastProgress:J

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x2bf20

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const-string p1, "\u7b49\u5f85\u8d85\u65f6\uff0c\u8bf7\u68c0\u67e5\u9875\u9762\u6216\u5bfc\u51fa\u6c7d\u6c34\u8bca\u65ad"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/tools/soda/SodaController;->pauseWith(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static viewId(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;
    .locals 4

    .line 266
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getViewIdResourceName"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static {p0}, Lcn/jim/wallethelper/tools/soda/SodaController;->string(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 267
    :catch_0
    move-exception p0

    const-string p0, ""

    return-object p0
.end method

.method private walk(Landroid/view/accessibility/AccessibilityNodeInfo;Lcn/jim/wallethelper/tools/soda/SodaController$Screen;I)V
    .locals 3

    .line 91
    iget-object v0, p2, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-ge v0, v1, :cond_3

    const/16 v0, 0x23

    if-le p3, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p2, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    add-int/lit8 v2, p3, 0x1

    invoke-direct {p0, v1, p2, v2}, Lcn/jim/wallethelper/tools/soda/SodaController;->walk(Landroid/view/accessibility/AccessibilityNodeInfo;Lcn/jim/wallethelper/tools/soda/SodaController$Screen;I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    return-void
.end method
