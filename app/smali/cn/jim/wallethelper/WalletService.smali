.class public Lcn/jim/wallethelper/WalletService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "WalletService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jim/wallethelper/WalletService$Snapshot;
    }
.end annotation


# static fields
.field public static instance:Lcn/jim/wallethelper/WalletService;


# instance fields
.field private videoTask:Lcn/jim/wallethelper/WalletVideo;
.field private videoOnly:Z
.field private videoFinishMessage:Ljava/lang/String;
.field private cleanupResume:Z
.field private finalCleanup:Z
.field private finalSweeps:I
.field private finalVideoMessage:Ljava/lang/String;

.field private installLedger:Lcn/jim/wallethelper/TaskInstallLedger;
.field private autoReturnPhase:Ljava/lang/String;
.field private returnRecovery:Lcn/jim/wallethelper/ReturnRecovery;
.field private walletRestart:Lcn/jim/wallethelper/WalletRestart;
.field private restartCheck:Z
.field private rerunPending:Z
.field private final attempts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private carry:I

.field private claimAnchor:Ljava/lang/String;

.field private claimAnchorSamples:I

.field private claimGestureId:I

.field private claimLookupTried:Z

.field private final claimProgress:Lcn/jim/wallethelper/ClaimProgress;

.field private claimSubmitted:Z

.field private explicitDownloadRewards:Ljava/util/Set;

.field private claimWaitAfterReturn:Z

.field private current:Lcn/jim/wallethelper/TaskRules$Row;

.field private downloadPass:Z

.field private due:J

.field private dwellUntil:J

.field private final expansionAttempts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final expansionFailures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final expansionRowsBefore:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private expansionSection:I

.field private gestureSerial:I

.field private final handler:Landroid/os/Handler;

.field private home:Ljava/lang/String;

.field private installerClicked:Z

.field private lastDepartureEvidence:Ljava/lang/String;

.field private lastTapResult:Ljava/lang/String;

.field private final missingUnconfirmed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private moreDownloads:Z

.field private overlay:Landroid/widget/LinearLayout;

.field private overlayParams:Landroid/view/WindowManager$LayoutParams;

.field private pages:I

.field private pauseButton:Landroid/widget/Button;

.field private paused:Z

.field private final pending:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private phase:Ljava/lang/String;

.field private phaseStarted:J

.field private previousSignature:Ljava/lang/String;

.field private recentsMoved:Z

.field private returningFromDownload:Z

.field private rewardDismissAttempts:I

.field private running:Z

.field private screenH:I

.field private screenW:I

.field private seeking:Z

.field private seenRows:I

.field private final settled:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private stable:I

.field private status:Landroid/widget/TextView;

.field private storeClicked:Z

.field private final taskLookup:Lcn/jim/wallethelper/TaskLookupProgress;

.field private final tick:Ljava/lang/Runnable;

.field private wallet:Ljava/lang/String;

.field private walletLabel:Ljava/lang/String;

.field private walletWindowId:I

.field private wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 16
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->handler:Landroid/os/Handler;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->running:Z

    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->paused:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->downloadPass:Z

    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->seeking:Z

    .line 25
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->moreDownloads:Z

    .line 26
    const/4 v1, -0x1

    iput v1, p0, Lcn/jim/wallethelper/WalletService;->walletWindowId:I

    .line 27
    const-string v2, "none"

    iput-object v2, p0, Lcn/jim/wallethelper/WalletService;->lastDepartureEvidence:Ljava/lang/String;

    .line 28
    const-string v3, "IDLE"

    iput-object v3, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;

    .line 29
    const-string v3, ""

    iput-object v3, p0, Lcn/jim/wallethelper/WalletService;->wallet:Ljava/lang/String;

    .line 30
    iput-object v3, p0, Lcn/jim/wallethelper/WalletService;->walletLabel:Ljava/lang/String;

    .line 31
    iput-object v3, p0, Lcn/jim/wallethelper/WalletService;->home:Ljava/lang/String;

    .line 32
    iput-object v3, p0, Lcn/jim/wallethelper/WalletService;->previousSignature:Ljava/lang/String;

    .line 33
    const/4 v4, -0x2

    iput v4, p0, Lcn/jim/wallethelper/WalletService;->carry:I

    iput v0, p0, Lcn/jim/wallethelper/WalletService;->stable:I

    iput v0, p0, Lcn/jim/wallethelper/WalletService;->pages:I

    iput v0, p0, Lcn/jim/wallethelper/WalletService;->seenRows:I

    .line 34
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcn/jim/wallethelper/WalletService;->due:J

    iput-wide v5, p0, Lcn/jim/wallethelper/WalletService;->phaseStarted:J

    iput-wide v5, p0, Lcn/jim/wallethelper/WalletService;->dwellUntil:J

    .line 36
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->claimSubmitted:Z

    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->claimWaitAfterReturn:Z

    .line 37
    new-instance v5, Lcn/jim/wallethelper/ClaimProgress;

    invoke-direct {v5}, Lcn/jim/wallethelper/ClaimProgress;-><init>()V

    iput-object v5, p0, Lcn/jim/wallethelper/WalletService;->claimProgress:Lcn/jim/wallethelper/ClaimProgress;

    .line 38
    new-instance v5, Lcn/jim/wallethelper/TaskLookupProgress;

    invoke-direct {v5}, Lcn/jim/wallethelper/TaskLookupProgress;-><init>()V

    iput-object v5, p0, Lcn/jim/wallethelper/WalletService;->taskLookup:Lcn/jim/wallethelper/TaskLookupProgress;

    .line 39
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcn/jim/wallethelper/WalletService;->missingUnconfirmed:Ljava/util/Set;

    .line 40
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->claimLookupTried:Z

    .line 41
    iput-object v3, p0, Lcn/jim/wallethelper/WalletService;->claimAnchor:Ljava/lang/String;

    iput-object v2, p0, Lcn/jim/wallethelper/WalletService;->lastTapResult:Ljava/lang/String;

    .line 42
    iput v0, p0, Lcn/jim/wallethelper/WalletService;->claimAnchorSamples:I

    iput v0, p0, Lcn/jim/wallethelper/WalletService;->gestureSerial:I

    iput v1, p0, Lcn/jim/wallethelper/WalletService;->claimGestureId:I

    .line 43
    iput v0, p0, Lcn/jim/wallethelper/WalletService;->rewardDismissAttempts:I

    .line 44
    iput v4, p0, Lcn/jim/wallethelper/WalletService;->expansionSection:I

    .line 45
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcn/jim/wallethelper/WalletService;->expansionRowsBefore:Ljava/util/Set;

    .line 46
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/jim/wallethelper/WalletService;->expansionAttempts:Ljava/util/Map;

    .line 47
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcn/jim/wallethelper/WalletService;->expansionFailures:Ljava/util/Set;

    .line 48
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcn/jim/wallethelper/WalletService;->settled:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcn/jim/wallethelper/WalletService;->pending:Ljava/util/Set;

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/jim/wallethelper/WalletService;->attempts:Ljava/util/Map;

    .line 50
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->storeClicked:Z

    .line 51
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->installerClicked:Z

    .line 52
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->recentsMoved:Z

    .line 53
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->returningFromDownload:Z

    .line 54
    nop

    .line 55
    new-instance v0, Lcn/jim/wallethelper/WalletService$1;

    invoke-direct {v0, p0}, Lcn/jim/wallethelper/WalletService$1;-><init>(Lcn/jim/wallethelper/WalletService;)V

    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->tick:Ljava/lang/Runnable;

    .line 16
    return-void
.end method

.method static synthetic access$0(Lcn/jim/wallethelper/WalletService;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcn/jim/wallethelper/WalletService;->running:Z

    return p0
.end method

.method static synthetic access$1(Lcn/jim/wallethelper/WalletService;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcn/jim/wallethelper/WalletService;->paused:Z

    return p0
.end method

.method static synthetic access$10(Lcn/jim/wallethelper/WalletService;)I
    .locals 0

    .line 42
    iget p0, p0, Lcn/jim/wallethelper/WalletService;->gestureSerial:I

    return p0
.end method

.method static synthetic access$11(Lcn/jim/wallethelper/WalletService;Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcn/jim/wallethelper/WalletService;->lastTapResult:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12(Lcn/jim/wallethelper/WalletService;)I
    .locals 0

    .line 42
    iget p0, p0, Lcn/jim/wallethelper/WalletService;->claimGestureId:I

    return p0
.end method

.method static synthetic access$13(Lcn/jim/wallethelper/WalletService;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcn/jim/wallethelper/WalletService;->claimSubmitted:Z

    return p0
.end method

.method static synthetic access$14(Lcn/jim/wallethelper/WalletService;)Lcn/jim/wallethelper/ClaimProgress;
    .locals 0

    .line 37
    iget-object p0, p0, Lcn/jim/wallethelper/WalletService;->claimProgress:Lcn/jim/wallethelper/ClaimProgress;

    return-object p0
.end method

.method static synthetic access$15(Lcn/jim/wallethelper/WalletService;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2(Lcn/jim/wallethelper/WalletService;)J
    .locals 2

    .line 67
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3(Lcn/jim/wallethelper/WalletService;)J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcn/jim/wallethelper/WalletService;->due:J

    return-wide v0
.end method

.method static synthetic access$4(Lcn/jim/wallethelper/WalletService;)V
    .locals 0

    .line 368
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->step()V

    return-void
.end method

.method static synthetic access$5(Lcn/jim/wallethelper/WalletService;Ljava/lang/String;)V
    .locals 0

    .line 272
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcn/jim/wallethelper/WalletService;)Landroid/os/Handler;
    .locals 0

    .line 18
    iget-object p0, p0, Lcn/jim/wallethelper/WalletService;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$7(Lcn/jim/wallethelper/WalletService;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    .line 23
    iget-object p0, p0, Lcn/jim/wallethelper/WalletService;->overlayParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$8(Lcn/jim/wallethelper/WalletService;)Landroid/view/WindowManager;
    .locals 0

    .line 19
    iget-object p0, p0, Lcn/jim/wallethelper/WalletService;->wm:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$9(Lcn/jim/wallethelper/WalletService;)Landroid/widget/LinearLayout;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private addButton(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;
    .locals 3

    .line 204
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 205
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 206
    const/high16 p2, 0x41300000    # 11.0f

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setTextSize(F)V

    .line 207
    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setMinWidth(I)V

    .line 208
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 209
    invoke-virtual {v0, p2, p2, p2, p2}, Landroid/widget/Button;->setPadding(IIII)V

    .line 210
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x2c

    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->dp(I)I

    move-result v1

    const/4 p2, -0x1
    invoke-direct {p3, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    return-object v0
.end method

.method private awayWait(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    .locals 5

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->rememberCleanupTarget(Lcn/jim/wallethelper/WalletService$Snapshot;)V

    .line 353
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->isWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 354
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5df2\u8fd4\u56de\u94b1\u5305\uff0c\u68c0\u67e5\u4efb\u52a1\u72b6\u6001\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    iget-object v0, v0, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 355
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->returned()V

    .line 356
    return-void

    .line 359
    :cond_0
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/jim/wallethelper/WalletService;->dwellUntil:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    .line 360
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->returnToWallet()V

    .line 361
    return-void

    .line 363
    :cond_1
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->status:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 364
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->status:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    iget-object v1, v1, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " \u00b7 \u5207\u51fa\u94b1\u5305\u540e\u5269\u4f59 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 365
    iget-wide v1, p0, Lcn/jim/wallethelper/WalletService;->dwellUntil:J

    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e7

    add-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u79d2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    :cond_2
    return-void
.end method

.method private beginAwayWait(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    .locals 2

    .line 335
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    if-nez v0, :cond_0

    return-void

    .line 336
    :cond_0
    iget-boolean v0, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->outsideWalletWindow:Z

    if-eqz v0, :cond_1

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u539f\u94b1\u5305\u7a97\u53e3\u5df2\u5207\u6362\uff0c\u65b0\u7a97\u53e3\u5185\u5bb9\u4e0d\u53ef\u8bfb #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->windowId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->startAwayWait(Ljava/lang/String;)V

    .line 338
    return-void

    .line 340
    :cond_1
    iget-object v0, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->isWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/jim/wallethelper/WalletService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 341
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u7a97\u53e3\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->startAwayWait(Ljava/lang/String;)V

    .line 342
    return-void

    .line 340
    :cond_3
    :goto_0
    return-void
.end method

.method private checkExpansion(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    .locals 9

    .line 585
    nop

    .line 586
    iget-object v0, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_7

    .line 591
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->rows(Lcn/jim/wallethelper/WalletService$Snapshot;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move p1, v1

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 594
    const-wide/16 v4, 0x384

    const-string v0, "SCAN"

    if-nez v2, :cond_4

    if-nez p1, :cond_4

    if-nez v3, :cond_2

    goto :goto_3

    .line 599
    :cond_2
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v2

    iget-wide v6, p0, Lcn/jim/wallethelper/WalletService;->phaseStarted:J

    sub-long/2addr v2, v6

    const-wide/16 v6, 0x1388

    cmp-long p1, v2, v6

    if-ltz p1, :cond_5

    .line 600
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->expansionAttempts:Ljava/util/Map;

    iget v2, p0, Lcn/jim/wallethelper/WalletService;->expansionSection:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    if-lt p1, v1, :cond_3

    .line 601
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->expansionFailures:Ljava/util/Set;

    iget v1, p0, Lcn/jim/wallethelper/WalletService;->expansionSection:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 602
    const-string p1, "\u5c55\u793a\u66f4\u591a\u4e24\u6b21\u672a\u751f\u6548\uff1a\u672c\u8f6e\u7ee7\u7eed\u53ef\u89c1\u4efb\u52a1\uff0c\u9690\u85cf\u4efb\u52a1\u672a\u786e\u8ba4"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 603
    goto :goto_2

    :cond_3
    const-string p1, "\u5c55\u793a\u66f4\u591a\u672a\u751f\u6548\uff0c\u91cd\u65b0\u5b9a\u4f4d\u540e\u518d\u70b9\u4e00\u6b21"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 604
    :goto_2
    invoke-direct {p0, v0, v4, v5}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V

    goto :goto_4

    .line 595
    :cond_4
    :goto_3
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->expansionAttempts:Ljava/util/Map;

    iget v2, p0, Lcn/jim/wallethelper/WalletService;->expansionSection:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    iput v1, p0, Lcn/jim/wallethelper/WalletService;->stable:I

    const-string p1, ""

    iput-object p1, p0, Lcn/jim/wallethelper/WalletService;->previousSignature:Ljava/lang/String;

    .line 597
    const-string p1, "\u5c55\u5f00\u540e\u9875\u9762\u5df2\u53d8\u5316\uff0c\u7ee7\u7eed\u8bc6\u522b\u4efb\u52a1"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 598
    invoke-direct {p0, v0, v4, v5}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V

    .line 599
    :cond_5
    nop

    .line 606
    :goto_4
    return-void

    .line 591
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jim/wallethelper/TaskRules$Row;

    .line 592
    iget v6, v0, Lcn/jim/wallethelper/TaskRules$Row;->section:I

    iget v7, p0, Lcn/jim/wallethelper/WalletService;->expansionSection:I

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcn/jim/wallethelper/WalletService;->expansionRowsBefore:Ljava/util/Set;

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move p1, v5

    goto/16 :goto_1

    .line 586
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/jim/wallethelper/TaskRules$Item;

    .line 587
    iget-object v6, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    iget v7, p0, Lcn/jim/wallethelper/WalletService;->carry:I

    iget v8, v4, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    invoke-static {v6, v7, v8}, Lcn/jim/wallethelper/TaskRules;->sectionAt(Ljava/util/List;II)I

    move-result v6

    iget v7, p0, Lcn/jim/wallethelper/WalletService;->expansionSection:I

    if-eq v6, v7, :cond_8

    goto/16 :goto_0

    .line 588
    :cond_8
    iget-object v6, v4, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-static {v6}, Lcn/jim/wallethelper/TaskRules;->expand(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v3, v5

    .line 589
    :cond_9
    iget-object v6, v4, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    const-string v7, "\u70b9\u51fb\u6536\u8d77"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v4, v4, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    const-string v6, "\u6536\u8d77"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_a
    move v2, v5

    goto/16 :goto_0
.end method

.method private click(Lcn/jim/wallethelper/WalletService$Snapshot;I)Z
    .locals 7

    .line 1053
    const/4 v0, 0x0

    if-ltz p2, :cond_d

    iget-object v1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto/16 :goto_4

    .line 1054
    :cond_0
    iget-object v1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->nodes:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1057
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->isWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1058
    :cond_1
    invoke-direct {p0, p1, p2}, Lcn/jim/wallethelper/WalletService;->tapNode(Lcn/jim/wallethelper/WalletService$Snapshot;I)Z

    move-result p1

    return p1

    .line 1060
    :cond_2
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result p1

    const/16 p2, 0x10

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {v1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result p1

    if-eqz p1, :cond_3

    return v2

    .line 1061
    :cond_3
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    .line 1062
    move v3, v0

    :goto_0
    if-eqz p1, :cond_8

    const/4 v4, 0x3

    if-lt v3, v4, :cond_4

    goto :goto_2

    .line 1063
    :cond_4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    .line 1065
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1064
    move v5, v2

    goto :goto_1

    :cond_5
    move v5, v0

    .line 1066
    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 1067
    nop

    .line 1068
    if-eqz v5, :cond_7

    .line 1069
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 1070
    :cond_6
    return v2

    .line 1062
    :cond_7
    add-int/lit8 v3, v3, 0x1

    move-object p1, v4

    goto :goto_0

    .line 1073
    :cond_8
    :goto_2
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 1074
    :cond_9
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 1075
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1076
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 1077
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 1078
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    const/16 v1, 0x8

    if-lt p2, v1, :cond_c

    .line 1079
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p2

    if-lt p2, v1, :cond_c

    .line 1080
    iget p2, p1, Landroid/graphics/Rect;->top:I

    if-ltz p2, :cond_c

    .line 1081
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcn/jim/wallethelper/WalletService;->screenH:I

    if-le p2, v1, :cond_a

    goto :goto_3

    .line 1082
    :cond_a
    iget-object p2, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_b

    .line 1083
    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 1084
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 1085
    new-instance v1, Landroid/graphics/Rect;

    aget v3, p2, v0

    aget v4, p2, v2

    aget v5, p2, v0

    iget-object v6, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    aget p2, p2, v2

    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    add-int/2addr p2, v2

    invoke-direct {v1, v3, v4, v5, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1086
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v1, p2, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 1087
    const-string p1, "\u63a7\u5236\u6761\u906e\u4f4f\u4e86\u6309\u94ae\uff0c\u8bf7\u62d6\u52a8\u63a7\u5236\u6761\u540e\u7ee7\u7eed"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    .line 1088
    return v0

    .line 1091
    :cond_b
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 1092
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2, p2, p1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1093
    nop

    .line 1094
    new-instance p1, Landroid/accessibilityservice/GestureDescription$Builder;

    invoke-direct {p1}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    .line 1095
    new-instance p2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x50

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    invoke-virtual {p1, p2}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    move-result-object p1

    .line 1096
    invoke-virtual {p1}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    move-result-object p1

    .line 1097
    nop

    .line 1098
    nop

    .line 1093
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcn/jim/wallethelper/WalletService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    move-result p1

    return p1

    .line 1081
    :cond_c
    :goto_3
    return v0

    .line 1053
    :cond_d
    :goto_4
    return v0
.end method

.method private currentRow(Lcn/jim/wallethelper/WalletService$Snapshot;)Lcn/jim/wallethelper/TaskRules$Row;
    .locals 3

    .line 664
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->rows(Lcn/jim/wallethelper/WalletService$Snapshot;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 665
    const/4 p1, 0x0

    return-object p1

    .line 664
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jim/wallethelper/TaskRules$Row;

    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    invoke-virtual {v2}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method private dismissRewardPopup(Lcn/jim/wallethelper/WalletService$Snapshot;)Z
    .locals 6

    .line 797
    nop

    .line 798
    iget-object v0, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jim/wallethelper/TaskRules$Item;

    .line 799
    iget-object v2, v1, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-static {v2}, Lcn/jim/wallethelper/TaskRules;->rewardContinue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, v1, Lcn/jim/wallethelper/TaskRules$Item;->index:I

    .line 801
    :goto_0
    const-string v1, "\u606d\u559c\u83b7\u5f97"

    invoke-virtual {p1, v1}, Lcn/jim/wallethelper/WalletService$Snapshot;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const-string v1, "\u9886\u53d6\u6210\u529f"

    invoke-virtual {p1, v1}, Lcn/jim/wallethelper/WalletService$Snapshot;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    # The wallet's success artwork has no separate success text. Require the
    # same title and popup geometry used to dismiss that artwork safely.
    iget-object v1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;
    iget v4, p0, Lcn/jim/wallethelper/WalletService;->screenW:I
    iget v5, p0, Lcn/jim/wallethelper/WalletService;->screenH:I
    invoke-static {v1, v4, v5, v2}, Lcn/jim/wallethelper/RewardDismissRules;->point(Ljava/util/List;III)[F
    move-result-object v1
    if-nez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    .line 802
    :goto_1
    if-gez v0, :cond_3

    if-nez v1, :cond_3

    iput v2, p0, Lcn/jim/wallethelper/WalletService;->rewardDismissAttempts:I

    return v2

    .line 804
    :cond_3
    if-eqz v1, :no_explicit_reward
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->recordExplicitDownloadReward()V
    :no_explicit_reward
    iget-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->claimSubmitted:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->claimProgress:Lcn/jim/wallethelper/ClaimProgress;

    invoke-virtual {v1}, Lcn/jim/wallethelper/ClaimProgress;->sawReward()V

    .line 805
    :cond_4
    iget v1, p0, Lcn/jim/wallethelper/WalletService;->rewardDismissAttempts:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_5

    .line 806
    const-string p1, "\u5956\u52b1\u5f39\u7a97\u4ecd\u672a\u5173\u95ed\uff0c\u8bf7\u624b\u52a8\u70b9\u7a7a\u767d\u5904\u5173\u95ed\u540e\u7ee7\u7eed"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    .line 807
    return v3

    :cond_5
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->dismissRewardAtWebBlank(Lcn/jim/wallethelper/WalletService$Snapshot;)Z
    move-result p1

    .line 819
    :goto_2
    if-nez p1, :cond_8

    const-string p1, "\u65e0\u6cd5\u5173\u95ed\u5956\u52b1\u5f39\u7a97\uff0c\u8bf7\u79fb\u52a8\u63a7\u5236\u6761\u6216\u624b\u52a8\u5173\u95ed\u540e\u7ee7\u7eed"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    return v3

    .line 820
    :cond_8
    iget p1, p0, Lcn/jim/wallethelper/WalletService;->rewardDismissAttempts:I

    add-int/2addr p1, v3

    iput p1, p0, Lcn/jim/wallethelper/WalletService;->rewardDismissAttempts:I

    .line 821
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;

    const-string v0, "OPENING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-wide/16 v0, 0x3e8

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    if-eqz p1, :cond_9

    .line 824
    const-string p1, "VERIFY"

    invoke-direct {p0, p1, v0, v1}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V

    .line 825
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5173\u95ed\u8fdf\u5230\u7684\u5956\u52b1\u5f39\u7a97\uff0c\u91cd\u65b0\u68c0\u67e5\u5f53\u524d\u4efb\u52a1\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    iget-object v0, v0, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 826
    goto :goto_4

    .line 827
    :cond_9
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v4

    iput-wide v4, p0, Lcn/jim/wallethelper/WalletService;->phaseStarted:J

    .line 828
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\u5173\u95ed\u5956\u52b1\u5f39\u7a97\uff08"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/jim/wallethelper/WalletService;->rewardDismissAttempts:I

    if-ne v2, v3, :cond_a

    const-string v2, "网页内空白处"

    goto :goto_3

    :cond_a
    const-string v2, "另一处网页空白"

    :goto_3
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\uff09\uff0c\u968f\u540e\u6838\u5bf9\u4efb\u52a1\u72b6\u6001"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 829
    invoke-direct {p0, v0, v1}, Lcn/jim/wallethelper/WalletService;->waitFor(J)V

    .line 831
    :goto_4
    return v3
.end method

.method private downloadStep(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    .locals 6

    .line 861
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->isWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 862
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->currentRow(Lcn/jim/wallethelper/WalletService$Snapshot;)Lcn/jim/wallethelper/TaskRules$Row;

    move-result-object p1

    .line 863
    if-eqz p1, :cond_2

    .line 864
    iget-object v0, p1, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-static {v0}, Lcn/jim/wallethelper/TaskRules;->pending(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 865
    iget-object v0, p1, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-static {v0}, Lcn/jim/wallethelper/TaskRules;->experience(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 866
    iget-object v0, p1, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-static {v0}, Lcn/jim/wallethelper/TaskRules;->done(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 867
    iget-object v0, p1, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-static {v0}, Lcn/jim/wallethelper/TaskRules;->claim(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 868
    :cond_0
    iget-object v0, p1, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-static {v0}, Lcn/jim/wallethelper/TaskRules;->pending(Ljava/lang/String;)Z

    move-result v0

    const-string v1, " \u00b7 "

    if-eqz v0, :cond_1

    .line 869
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->pending:Ljava/util/Set;

    invoke-virtual {p1}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\uff0c\u5df2\u52a0\u5165\u5b89\u88c5\u7b49\u5f85\u961f\u5217\uff0c\u7ee7\u7eed\u68c0\u67e5\u5176\u4ed6\u4efb\u52a1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 871
    goto :goto_0

    .line 872
    :cond_1
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->pending:Ljava/util/Set;

    invoke-virtual {p1}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\uff0c\u7a0d\u540e\u6309\u4efb\u52a1\u72b6\u6001\u5904\u7406"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 875
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    .line 876
    const-string p1, "SCAN"

    const-wide/16 v0, 0x2bc

    invoke-direct {p0, p1, v0, v1}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V

    .line 877
    return-void

    .line 879
    :cond_2
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/jim/wallethelper/WalletService;->phaseStarted:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    const-string p1, "\u4e0b\u8f7d\u72b6\u6001\u672a\u66f4\u65b0\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u5b89\u88c5\u63d0\u793a\u540e\u7ee7\u7eed"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    .line 880
    :cond_3
    return-void

    .line 882
    :cond_4
    iget-object v0, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->isStore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 884
    nop

    .line 885
    iget-object v0, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_e

    .line 886
    if-nez v1, :cond_6

    .line 887
    const-string p1, "\u5b89\u88c5\u9875\u9762\u65e0\u6cd5\u786e\u8ba4\u5e94\u7528\u540d\u79f0\uff0c\u8bf7\u624b\u52a8\u5904\u7406\u540e\u56de\u5230\u94b1\u5305"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    .line 888
    return-void

    .line 890
    :cond_6
    iget-object v0, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;

    const-string v1, "packageinstaller"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 891
    const-string v1, "\u4e0b\u8f7d"

    const-string v2, "\u7ee7\u7eed\u5b89\u88c5"

    const-string v4, "\u5b89\u88c5"

    const-string v5, "\u4e0b\u8f7d\u5b89\u88c5"

    filled-new-array {v4, v5, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/jim/wallethelper/WalletService$Snapshot;->exact([Ljava/lang/String;)I

    move-result v1

    .line 892
    if-ltz v1, :cond_a

    if-eqz v0, :cond_7

    iget-boolean v2, p0, Lcn/jim/wallethelper/WalletService;->installerClicked:Z

    if-nez v2, :cond_a

    goto :goto_2

    :cond_7
    iget-boolean v2, p0, Lcn/jim/wallethelper/WalletService;->storeClicked:Z

    if-nez v2, :cond_a

    .line 893
    :goto_2
    invoke-direct {p0, p1, v1}, Lcn/jim/wallethelper/WalletService;->click(Lcn/jim/wallethelper/WalletService$Snapshot;I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 894
    if-eqz v0, :cond_8

    iput-boolean v3, p0, Lcn/jim/wallethelper/WalletService;->installerClicked:Z

    goto :goto_3

    .line 895
    :cond_8
    iput-boolean v3, p0, Lcn/jim/wallethelper/WalletService;->storeClicked:Z

    .line 896
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5df2\u8bf7\u6c42\u5b89\u88c5\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    iget-object v0, v0, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 897
    const-wide/16 v0, 0x7d0

    invoke-direct {p0, v0, v1}, Lcn/jim/wallethelper/WalletService;->waitFor(J)V

    .line 899
    :cond_9
    return-void

    .line 901
    :cond_a
    const-string v0, "\u6253\u5f00"

    invoke-virtual {p1, v0}, Lcn/jim/wallethelper/WalletService$Snapshot;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 902
    const-string v0, "\u5b89\u88c5\u5b8c\u6210"

    invoke-virtual {p1, v0}, Lcn/jim/wallethelper/WalletService$Snapshot;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 903
    const-string v0, "\u5b89\u88c5\u6210\u529f"

    invoke-virtual {p1, v0}, Lcn/jim/wallethelper/WalletService$Snapshot;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 904
    const-string v0, "\u4e0b\u8f7d\u4e2d"

    invoke-virtual {p1, v0}, Lcn/jim/wallethelper/WalletService$Snapshot;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 905
    const-string v0, "\u5b89\u88c5\u4e2d"

    invoke-virtual {p1, v0}, Lcn/jim/wallethelper/WalletService$Snapshot;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 906
    const-string v0, "\u6682\u505c"

    invoke-virtual {p1, v0}, Lcn/jim/wallethelper/WalletService$Snapshot;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 907
    const-string v0, "\u7b49\u5f85\u4e0b\u8f7d"

    invoke-virtual {p1, v0}, Lcn/jim/wallethelper/WalletService$Snapshot;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_4

    .line 913
    :cond_b
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/jim/wallethelper/WalletService;->phaseStarted:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x61a8

    cmp-long p1, v0, v2

    if-lez p1, :cond_c

    const-string p1, "\u5b89\u88c5\u9700\u8981\u624b\u52a8\u5904\u7406\uff0c\u8bf7\u5b8c\u6210\u63d0\u793a\u540e\u5207\u56de\u94b1\u5305"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    .line 914
    :cond_c
    return-void

    .line 908
    :cond_d
    :goto_4
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->pending:Ljava/util/Set;

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 909
    iput-boolean v3, p0, Lcn/jim/wallethelper/WalletService;->returningFromDownload:Z

    .line 910
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->returnToWallet()V

    .line 911
    return-void

    .line 885
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jim/wallethelper/TaskRules$Item;

    iget-object v4, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    iget-object v4, v4, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    iget-object v2, v2, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-static {v4, v2}, Lcn/jim/wallethelper/TaskRules;->sameApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v1, v3

    goto/16 :goto_1

    .line 916
    :cond_f
    const-string p1, "\u4e0b\u8f7d\u8df3\u8f6c\u5230\u672a\u8bc6\u522b\u9875\u9762\uff0c\u8bf7\u624b\u52a8\u68c0\u67e5\u540e\u56de\u5230\u94b1\u5305"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    .line 917
    return-void
.end method

.method private dp(I)I
    .locals 1

    .line 72
    int-to-float p1, p1

    invoke-virtual {p0}, Lcn/jim/wallethelper/WalletService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private finishPass()V
    .locals 3

    .line 609
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->seeking:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    if-eqz v0, :cond_2

    .line 610
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->taskLookup:Lcn/jim/wallethelper/TaskLookupProgress;

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskLookupProgress;->finishPass()Lcn/jim/wallethelper/TaskLookupProgress$Decision;

    move-result-object v0

    .line 611
    sget-object v2, Lcn/jim/wallethelper/TaskLookupProgress$Decision;->RETRY:Lcn/jim/wallethelper/TaskLookupProgress$Decision;

    if-ne v0, v2, :cond_0

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u672c\u6b21\u626b\u63cf\u672a\u627e\u5230\u539f\u4efb\u52a1\uff0c\u91cd\u65b0\u68c0\u67e5\u4e00\u6b21\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    iget-object v1, v1, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 613
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->rewind()V

    .line 614
    return-void

    .line 616
    :cond_0
    sget-object v2, Lcn/jim/wallethelper/TaskLookupProgress$Decision;->PAUSE_UNREADABLE:Lcn/jim/wallethelper/TaskLookupProgress$Decision;

    if-ne v0, v2, :cond_1

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u672a\u8bc6\u522b\u5230\u539f\u4efb\u52a1\u6240\u5728\u6a21\u5757\uff0c\u8bf7\u5b9a\u4f4d\u6a21\u5757\u540e\u7ee7\u7eed\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    iget-object v1, v1, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    .line 618
    return-void

    .line 620
    :cond_1
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v0

    .line 621
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->missingUnconfirmed:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 622
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->settled:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 623
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->pending:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u4e24\u6b21\u626b\u63cf\u672a\u627e\u5230\u539f\u4efb\u52a1\uff0c\u53ef\u80fd\u5df2\u79fb\u9664\u6216\u672a\u8bc6\u522b\uff1b\u9886\u53d6\u7ed3\u679c\u672a\u786e\u8ba4\uff0c\u7ee7\u7eed\u5176\u4ed6\u4efb\u52a1\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    iget-object v2, v2, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 625
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    .line 626
    iput-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->seeking:Z

    .line 627
    iput-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->claimSubmitted:Z

    .line 628
    iput-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->claimWaitAfterReturn:Z

    .line 629
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->claimProgress:Lcn/jim/wallethelper/ClaimProgress;

    invoke-virtual {v0}, Lcn/jim/wallethelper/ClaimProgress;->reset()V

    .line 630
    const/4 v0, -0x1

    iput v0, p0, Lcn/jim/wallethelper/WalletService;->claimGestureId:I

    .line 631
    iput-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->claimLookupTried:Z

    .line 632
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->taskLookup:Lcn/jim/wallethelper/TaskLookupProgress;

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskLookupProgress;->reset()V

    .line 633
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->rewind()V

    .line 634
    return-void

    .line 636
    :cond_2
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->downloadPass:Z

    if-eqz v0, :cond_3

    .line 637
    iput-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->moreDownloads:Z

    .line 638
    iput-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->downloadPass:Z

    .line 639
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->rewind()V

    .line 640
    return-void

    .line 642
    :cond_3
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->moreDownloads:Z

    if-eqz v0, :cond_4

    .line 643
    iput-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->moreDownloads:Z

    .line 644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->downloadPass:Z

    .line 645
    const-string v0, "\u4efb\u52a1\u5217\u8868\u51fa\u73b0\u65b0\u7684\u4e0b\u8f7d\u9879\uff0c\u8865\u5145\u4e0b\u8f7d\u961f\u5217\u540e\u7ee7\u7eed\u4f53\u9a8c"

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 646
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->rewind()V

    .line 647
    return-void

    .line 649
    :cond_4
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->pending:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7b49\u5f85 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->pending:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u9879\u4e0b\u8f7d\u5b89\u88c5\uff0c5\u79d2\u540e\u68c0\u67e5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 651
    const-string v0, "WAIT_INSTALL"

    const-wide/16 v1, 0x1388

    invoke-direct {p0, v0, v1, v2}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V

    .line 652
    return-void

    .line 654
    :cond_5
    iget v0, p0, Lcn/jim/wallethelper/WalletService;->seenRows:I

    if-nez v0, :cond_6

    .line 655
    const-string v0, "\u6ca1\u6709\u8bc6\u522b\u5230\u4efb\u52a1\u884c\uff0c\u8bf7\u70b9\u51fb\u8bca\u65ad\u5e76\u5bfc\u51fa"

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    .line 656
    return-void

    .line 658
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u672c\u8f6e\u5df2\u7ed3\u675f\uff0c\u5904\u7406\u6216\u8df3\u8fc7 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->settled:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u9879"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 659
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->missingUnconfirmed:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, ""

    goto :goto_0

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uff1b\u5176\u4e2d "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->missingUnconfirmed:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u9879\u672a\u627e\u5230\uff0c\u9886\u53d6\u672a\u786e\u8ba4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 660
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->expansionFailures:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "\uff1b\u8be6\u89c1\u65e5\u5fd7"

    goto :goto_1

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\uff1b"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->expansionFailures:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u4e2a\u6a21\u5757\u672a\u5c55\u5f00\uff0c\u9690\u85cf\u4efb\u52a1\u672a\u5904\u7406"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->finishWithUninstall(Ljava/lang/String;)V

    .line 661
    return-void
.end method

.method private isStore(Ljava/lang/String;)Z
    .locals 1

    .line 325
    const-string v0, ".*(appmarket|appstore|packageinstaller|permissioncontroller).*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private isWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z
    .locals 1

    .line 321
    iget-object p1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->wallet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private keepScreen(Z)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->overlayParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 143
    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->overlayParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->overlayParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 145
    :goto_0
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->wm:Landroid/view/WindowManager;

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->overlayParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    :cond_1
    return-void
.end method

.method private label(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 314
    :try_start_0
    invoke-virtual {p0}, Lcn/jim/wallethelper/WalletService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcn/jim/wallethelper/WalletService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 313
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 315
    :catch_0
    move-exception v0

    .line 316
    return-object p1
.end method

.method private launch(Lcn/jim/wallethelper/WalletService$Snapshot;Lcn/jim/wallethelper/TaskRules$Row;)V
    .locals 4

    const/4 v0, 0x0
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->returnRecovery:Lcn/jim/wallethelper/ReturnRecovery;

    .line 669
    iput-object p2, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    .line 670
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->attempts:Ljava/util/Map;

    invoke-virtual {p2}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 671
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 672
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->settled:Ljava/util/Set;

    invoke-virtual {p2}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 673
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u91cd\u8bd5\u540e\u4ecd\u672a\u5b8c\u6210\uff0c\u8df3\u8fc7\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 674
    iput-boolean v2, p0, Lcn/jim/wallethelper/WalletService;->seeking:Z

    .line 675
    const-string p1, "SCAN"

    const-wide/16 v0, 0x384

    invoke-direct {p0, p1, v0, v1}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V

    .line 676
    return-void

    .line 678
    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcn/jim/wallethelper/WalletService;->dwellUntil:J

    .line 679
    iget v1, p2, Lcn/jim/wallethelper/TaskRules$Row;->index:I

    invoke-direct {p0, p1, v1}, Lcn/jim/wallethelper/WalletService;->click(Lcn/jim/wallethelper/WalletService$Snapshot;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 680
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->attempts:Ljava/util/Map;

    invoke-virtual {p2}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string p1, "OPENING"

    const-wide/16 v1, 0x2bc

    invoke-direct {p0, p1, v1, v2}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V

    .line 682
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5f00\u4f53\u9a8c\uff08"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/2\uff09\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p2, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 683
    goto :goto_0

    :cond_1
    const-string p1, "\u4f53\u9a8c\u6309\u94ae\u65e0\u6cd5\u70b9\u51fb\uff0c\u8bf7\u5bfc\u51fa\u8bca\u65ad"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    .line 684
    :goto_0
    return-void
.end method

.method private mayWaitOutsideWallet()Z
    .locals 2
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;
    if-eqz v0, :no
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;
    const-string v1, "OPENING"
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    return v0
    :no
    const/4 v0, 0x0
    return v0
.end method

.method private note(Ljava/lang/String;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->status:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->status:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_0
    invoke-static {p0, p1}, Lcn/jim/wallethelper/LocalLog;->add(Landroid/content/Context;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method private now()J
    .locals 2

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method private pause(Ljava/lang/String;)V
    .locals 2

    .line 273
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->running:Z

    if-nez v0, :cond_0

    .line 274
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 275
    return-void

    .line 277
    :cond_0
    invoke-static {p0, p1}, Lcn/jim/wallethelper/RunLifecycle;->paused(Landroid/content/Context;Ljava/lang/String;)V
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->paused:Z

    if-nez v0, :cond_1

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->paused:Z

    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->keepScreen(Z)V

    .line 281
    :cond_1
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->pauseButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->pauseButton:Landroid/widget/Button;

    const-string v1, "\u7ee7\u7eed"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :cond_2
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method private prepareClaim(Lcn/jim/wallethelper/TaskRules$Row;Z)V
    .locals 2

    .line 756
    iput-object p1, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    .line 757
    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcn/jim/wallethelper/WalletService;->claimProgress:Lcn/jim/wallethelper/ClaimProgress;

    invoke-virtual {p2}, Lcn/jim/wallethelper/ClaimProgress;->reset()V

    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->claimWaitAfterReturn:Z

    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->claimLookupTried:Z

    const/4 p2, -0x1

    iput p2, p0, Lcn/jim/wallethelper/WalletService;->claimGestureId:I

    .line 758
    :cond_0
    const-string p2, ""

    iput-object p2, p0, Lcn/jim/wallethelper/WalletService;->claimAnchor:Ljava/lang/String;

    iput v0, p0, Lcn/jim/wallethelper/WalletService;->claimAnchorSamples:I

    .line 759
    const-string p2, "CLAIM_READY"

    const-wide/16 v0, 0x1f4

    invoke-direct {p0, p2, v0, v1}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V

    .line 760
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u7b49\u5f85\u9886\u53d6\u6309\u94ae\u4f4d\u7f6e\u7a33\u5b9a\uff1a"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method private readyClaim(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    .locals 7

    .line 764
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->isWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->beginAwayWait(Lcn/jim/wallethelper/WalletService$Snapshot;)V

    return-void

    .line 765
    :cond_0
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->currentRow(Lcn/jim/wallethelper/WalletService$Snapshot;)Lcn/jim/wallethelper/TaskRules$Row;

    move-result-object v0

    .line 766
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-static {v1}, Lcn/jim/wallethelper/TaskRules;->done(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 767
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->settled:Ljava/util/Set;

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->pending:Ljava/util/Set;

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/jim/wallethelper/WalletService;->seeking:Z

    iput-boolean p1, p0, Lcn/jim/wallethelper/WalletService;->claimSubmitted:Z

    .line 768
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u9886\u53d6\u524d\u5df2\u89c2\u5bdf\u5230\u5b8c\u6210\u72b6\u6001\uff1a"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    const-string p1, "SCAN"

    const-wide/16 v0, 0x320

    invoke-direct {p0, p1, v0, v1}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V

    return-void

    .line 770
    :cond_1
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->claimProgress:Lcn/jim/wallethelper/ClaimProgress;

    invoke-virtual {v1}, Lcn/jim/wallethelper/ClaimProgress;->rewardSeen()Z

    move-result v1

    const-string v2, "CLAIM"

    if-eqz v1, :cond_3

    .line 771
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->claimProgress:Lcn/jim/wallethelper/ClaimProgress;

    invoke-virtual {p1}, Lcn/jim/wallethelper/ClaimProgress;->attempts()I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "\u5df2\u89c1\u5956\u52b1\u5f39\u7a97\u4f46\u4efb\u52a1\u72b6\u6001\u672a\u66f4\u65b0\uff0c\u8bf7\u68c0\u67e5\u540e\u7ee7\u7eed"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    goto :goto_0

    .line 772
    :cond_2
    const-wide/16 v0, 0x2bc

    invoke-direct {p0, v2, v0, v1}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V

    .line 773
    :goto_0
    return-void

    .line 775
    :cond_3
    const-wide/16 v3, 0x1f40

    if-eqz v0, :cond_9

    iget-object v1, v0, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-static {v1}, Lcn/jim/wallethelper/TaskRules;->claim(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_2

    .line 779
    :cond_4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->nodes:Ljava/util/List;

    iget v6, v0, Lcn/jim/wallethelper/TaskRules$Row;->index:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 780
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 781
    iget-object v5, p0, Lcn/jim/wallethelper/WalletService;->claimAnchor:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    iget v1, p0, Lcn/jim/wallethelper/WalletService;->claimAnchorSamples:I

    add-int/2addr v1, v6

    iput v1, p0, Lcn/jim/wallethelper/WalletService;->claimAnchorSamples:I

    goto :goto_1

    .line 782
    :cond_5
    iput-object v1, p0, Lcn/jim/wallethelper/WalletService;->claimAnchor:Ljava/lang/String;

    iput v6, p0, Lcn/jim/wallethelper/WalletService;->claimAnchorSamples:I

    .line 783
    :goto_1
    iget v1, p0, Lcn/jim/wallethelper/WalletService;->claimAnchorSamples:I

    const/4 v5, 0x3

    if-ge v1, v5, :cond_7

    .line 784
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v0

    iget-wide v5, p0, Lcn/jim/wallethelper/WalletService;->phaseStarted:J

    sub-long/2addr v0, v5

    cmp-long p1, v0, v3

    if-lez p1, :cond_6

    const-string p1, "\u9886\u53d6\u6309\u94ae\u4f4d\u7f6e\u6301\u7eed\u53d8\u5316\uff0c\u8bf7\u7b49\u9875\u9762\u7a33\u5b9a\u540e\u7ee7\u7eed"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    .line 785
    :cond_6
    return-void

    .line 787
    :cond_7
    iget v1, v0, Lcn/jim/wallethelper/TaskRules$Row;->index:I

    invoke-direct {p0, p1, v1}, Lcn/jim/wallethelper/WalletService;->tapNode(Lcn/jim/wallethelper/WalletService$Snapshot;I)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "\u9886\u53d6\u70b9\u6309\u672a\u53d1\u51fa\uff0c\u8bf7\u68c0\u67e5\u63a7\u5236\u6761\u906e\u6321\u540e\u7ee7\u7eed"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    return-void

    .line 788
    :cond_8
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    .line 789
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->claimProgress:Lcn/jim/wallethelper/ClaimProgress;

    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcn/jim/wallethelper/ClaimProgress;->submitted(J)V

    .line 790
    iget p1, p0, Lcn/jim/wallethelper/WalletService;->gestureSerial:I

    iput p1, p0, Lcn/jim/wallethelper/WalletService;->claimGestureId:I

    .line 791
    iput-boolean v6, p0, Lcn/jim/wallethelper/WalletService;->claimSubmitted:Z

    .line 792
    const-wide/16 v3, 0x258

    invoke-direct {p0, v2, v3, v4}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V

    .line 793
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u53d1\u9001\u9886\u53d6\u70b9\u6309\uff08"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->claimProgress:Lcn/jim/wallethelper/ClaimProgress;

    invoke-virtual {v1}, Lcn/jim/wallethelper/ClaimProgress;->attempts()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/2\uff09\uff1a"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, v0, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\uff1b\u7b49\u5f85\u7ed3\u679c\u6700\u591a30\u79d2"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 794
    return-void

    .line 776
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v0

    iget-wide v5, p0, Lcn/jim/wallethelper/WalletService;->phaseStarted:J

    sub-long/2addr v0, v5

    cmp-long p1, v0, v3

    if-lez p1, :cond_a

    const-string p1, "\u9886\u53d6\u6309\u94ae\u72b6\u6001\u53d8\u5316\uff0c\u8bf7\u68c0\u67e5\u540e\u7ee7\u7eed"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    .line 777
    :cond_a
    return-void
.end method

.method private realDisplay()Landroid/util/DisplayMetrics;
    .locals 2

    .line 948
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 949
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->wm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 950
    return-object v0
.end method

.method private recents(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    .locals 10

    .line 954
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->isWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->returned()V

    .line 956
    return-void

    .line 958
    :cond_0
    iget-object v0, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;

    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->home:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "com.android.systemui"

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 959
    iget-object v0, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "launcher"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 958
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 960
    :goto_0
    const-wide/16 v3, 0x2328

    if-nez v0, :cond_3

    .line 961
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v0

    iget-wide v5, p0, Lcn/jim/wallethelper/WalletService;->phaseStarted:J

    sub-long/2addr v0, v5

    cmp-long p1, v0, v3

    if-lez p1, :cond_2

    const-string p1, "\u672a\u786e\u8ba4\u6700\u8fd1\u4efb\u52a1\u754c\u9762\uff0c\u8bf7\u624b\u52a8\u5207\u56de\u94b1\u5305\u540e\u7ee7\u7eed"

    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->retryWalletReturn()V

    .line 962
    :cond_2
    return-void

    .line 964
    :cond_3
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->cleanupRecents(Lcn/jim/wallethelper/WalletService$Snapshot;)Z
    move-result v0
    if-eqz v0, :cleanup_done
    return-void
    :cleanup_done
    nop

    .line 965
    iget-object v0, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/high16 v6, 0x3e800000    # 0.25f

    if-nez v5, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/jim/wallethelper/TaskRules$Item;

    .line 966
    iget v7, v5, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    int-to-float v7, v7

    iget v8, p0, Lcn/jim/wallethelper/WalletService;->screenH:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    iget-object v7, v5, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    iget-object v8, p0, Lcn/jim/wallethelper/WalletService;->walletLabel:Ljava/lang/String;

    invoke-static {v8}, Lcn/jim/wallethelper/TaskRules;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 967
    iget-object v7, v5, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    const-string v8, "\u8363\u8000\u94b1\u5305"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 968
    iget-object v7, v5, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    const-string v8, "\u94b1\u5305"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 969
    :cond_6
    nop

    .line 970
    move-object v0, v5

    .line 972
    :goto_1
    const v5, 0x3f4ccccd    # 0.8f

    if-eqz v0, :cond_7

    .line 975
    iget v7, v0, Lcn/jim/wallethelper/TaskRules$Item;->x:I

    int-to-float v7, v7

    iget v8, v0, Lcn/jim/wallethelper/TaskRules$Item;->w:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    .line 976
    iget v8, v0, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    iget v0, v0, Lcn/jim/wallethelper/TaskRules$Item;->h:I

    add-int/2addr v8, v0

    int-to-float v0, v8

    iget v8, p0, Lcn/jim/wallethelper/WalletService;->screenH:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    add-float/2addr v0, v8

    .line 977
    iget v6, p0, Lcn/jim/wallethelper/WalletService;->screenW:I

    int-to-float v6, v6

    const v8, 0x3dcccccd    # 0.1f

    mul-float/2addr v6, v8

    cmpl-float v6, v7, v6

    if-lez v6, :cond_7

    iget v6, p0, Lcn/jim/wallethelper/WalletService;->screenW:I

    int-to-float v6, v6

    const v8, 0x3f666666    # 0.9f

    mul-float/2addr v6, v8

    cmpg-float v6, v7, v6

    if-gez v6, :cond_7

    .line 978
    iget v6, p0, Lcn/jim/wallethelper/WalletService;->screenH:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    cmpg-float v6, v0, v6

    if-gez v6, :cond_7

    invoke-direct {p0, v7, v0}, Lcn/jim/wallethelper/WalletService;->tapAt(FF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 979
    const-string p1, "RETURN"

    const-wide/16 v0, 0x4b0

    invoke-direct {p0, p1, v0, v1}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V

    .line 980
    return-void

    .line 983
    :cond_7
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v6

    iget-wide v8, p0, Lcn/jim/wallethelper/WalletService;->phaseStarted:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x9c4

    cmp-long v0, v6, v8

    if-lez v0, :cond_9

    .line 984
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->recentsMoved:Z

    if-nez v0, :cond_9

    .line 985
    iget-object v0, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;

    iget-object v6, p0, Lcn/jim/wallethelper/WalletService;->home:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object p1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 987
    :cond_8
    iget p1, p0, Lcn/jim/wallethelper/WalletService;->screenW:I

    int-to-float p1, p1

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr p1, v0

    iget v0, p0, Lcn/jim/wallethelper/WalletService;->screenH:I

    int-to-float v0, v0

    const v1, 0x3f051eb8    # 0.52f

    mul-float/2addr v0, v1

    iget v3, p0, Lcn/jim/wallethelper/WalletService;->screenW:I

    int-to-float v3, v3

    mul-float/2addr v3, v5

    iget v4, p0, Lcn/jim/wallethelper/WalletService;->screenH:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-direct {p0, p1, v0, v3, v4}, Lcn/jim/wallethelper/WalletService;->swipe(FFFF)V

    .line 988
    iput-boolean v2, p0, Lcn/jim/wallethelper/WalletService;->recentsMoved:Z

    .line 989
    const-wide/16 v0, 0x5dc

    invoke-direct {p0, v0, v1}, Lcn/jim/wallethelper/WalletService;->waitFor(J)V

    .line 990
    return-void

    .line 992
    :cond_9
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v0

    iget-wide v5, p0, Lcn/jim/wallethelper/WalletService;->phaseStarted:J

    sub-long/2addr v0, v5

    cmp-long p1, v0, v3

    if-lez p1, :cond_a

    const-string p1, "\u6700\u8fd1\u4efb\u52a1\u4e2d\u672a\u8bc6\u522b\u94b1\u5305\u5361\u7247\uff0c\u8bf7\u624b\u52a8\u5207\u56de\u94b1\u5305\u540e\u7ee7\u7eed"

    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->retryWalletReturn()V

    .line 993
    :cond_a
    return-void
.end method

.method private returnToWallet()V
    .locals 3
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->recovery()Lcn/jim/wallethelper/ReturnRecovery;
    move-result-object v0
    iget v1, v0, Lcn/jim/wallethelper/ReturnRecovery;->attempts:I
    add-int/lit8 v1, v1, 0x1
    iput v1, v0, Lcn/jim/wallethelper/ReturnRecovery;->attempts:I
    :launch_start
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->wallet:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    move-result-object v0
    if-eqz v0, :failed
    const/high16 v1, 0x10000000
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :launch_end
    .catch Ljava/lang/Exception; {:launch_start .. :launch_end} :launch_error
    const-string v0, "RETURN"
    const-wide/16 v1, 0x12c
    invoke-direct {p0, v0, v1, v2}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V
    const-string v0, "已直接启动钱包，等待确认返回"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    return-void
    :launch_error
    move-exception v0
    :failed
    const-string v0, "系统未能启动钱包，请手动切回后继续"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V
    return-void
.end method

.method private returned()V
    .locals 4

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->autoReturnPhase:Ljava/lang/String;
    if-eqz v0, :normal_return
    const/4 v1, 0x0
    iput-object v1, p0, Lcn/jim/wallethelper/WalletService;->autoReturnPhase:Ljava/lang/String;
    iput-object v1, p0, Lcn/jim/wallethelper/WalletService;->returnRecovery:Lcn/jim/wallethelper/ReturnRecovery;
    iget-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->claimSubmitted:Z
    if-eqz v1, :resume_wallet_work
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->claimProgress:Lcn/jim/wallethelper/ClaimProgress;
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J
    move-result-wide v2
    invoke-virtual {v1, v2, v3}, Lcn/jim/wallethelper/ClaimProgress;->restartWait(J)V
    :resume_wallet_work
    const-wide/16 v1, 0x12c
    invoke-direct {p0, v0, v1, v2}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V
    const-string v0, "已自动回到钱包，恢复中断位置继续执行"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    return-void
    :normal_return

    const/4 v0, 0x0
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->returnRecovery:Lcn/jim/wallethelper/ReturnRecovery;

    .line 996
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->seeking:Z

    .line 997
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->taskLookup:Lcn/jim/wallethelper/TaskLookupProgress;

    invoke-virtual {v1}, Lcn/jim/wallethelper/TaskLookupProgress;->reset()V

    .line 998
    iget-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->returningFromDownload:Z

    if-eqz v1, :cond_0

    .line 999
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    .line 1000
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->returningFromDownload:Z

    .line 1001
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->rewind()V

    .line 1002
    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    if-eqz v1, :cond_3

    .line 1005
    iget-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->claimSubmitted:Z

    if-eqz v1, :cond_1

    .line 1006
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->claimProgress:Lcn/jim/wallethelper/ClaimProgress;

    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcn/jim/wallethelper/ClaimProgress;->restartWait(J)V

    .line 1007
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->claimWaitAfterReturn:Z

    .line 1009
    :cond_1
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->claimSubmitted:Z

    if-eqz v0, :cond_2

    const-string v0, "CLAIM"

    goto :goto_0

    :cond_2
    const-string v0, "VERIFY"

    :goto_0
    const-wide/16 v1, 0x12c

    invoke-direct {p0, v0, v1, v2}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V

    .line 1010
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u5207\u56de\u94b1\u5305\uff0c\u4f18\u5148\u68c0\u67e5\u5f53\u524d\u9875\u4efb\u52a1\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    iget-object v1, v1, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 1011
    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->rewind()V

    .line 1012
    :goto_1
    return-void
.end method

.method private rewind()V
    .locals 3

    .line 304
    const/4 v0, -0x2

    iput v0, p0, Lcn/jim/wallethelper/WalletService;->carry:I

    .line 305
    const/4 v0, 0x0

    iput v0, p0, Lcn/jim/wallethelper/WalletService;->stable:I

    .line 306
    iput v0, p0, Lcn/jim/wallethelper/WalletService;->pages:I

    .line 307
    const-string v0, ""

    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->previousSignature:Ljava/lang/String;

    .line 308
    const-string v0, "REWIND"

    const-wide/16 v1, 0x320

    invoke-direct {p0, v0, v1, v2}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V

    .line 309
    return-void
.end method

.method private rows(Lcn/jim/wallethelper/WalletService$Snapshot;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/jim/wallethelper/WalletService$Snapshot;",
            ")",
            "Ljava/util/List<",
            "Lcn/jim/wallethelper/TaskRules$Row;",
            ">;"
        }
    .end annotation

    .line 481
    iget-object p1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    iget v0, p0, Lcn/jim/wallethelper/WalletService;->carry:I

    iget v1, p0, Lcn/jim/wallethelper/WalletService;->screenW:I

    invoke-static {p1, v0, v1}, Lcn/jim/wallethelper/TaskRules;->rows(Ljava/util/List;II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private scan(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    .locals 8

    .line 485
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->isWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 486
    const-string p1, "\u5f53\u524d\u4e0d\u662f\u94b1\u5305\u4efb\u52a1\u9875\uff0c\u8bf7\u5207\u56de\u540e\u7ee7\u7eed"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    .line 487
    return-void

    .line 489
    :cond_0
    iget-object v0, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    iget v1, p0, Lcn/jim/wallethelper/WalletService;->carry:I

    invoke-static {v0, v1}, Lcn/jim/wallethelper/TaskRules;->expansion(Ljava/util/List;I)Lcn/jim/wallethelper/TaskRules$Item;

    move-result-object v0

    .line 490
    const/4 v1, -0x2

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    iget v3, p0, Lcn/jim/wallethelper/WalletService;->carry:I

    iget v4, v0, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    invoke-static {v2, v3, v4}, Lcn/jim/wallethelper/TaskRules;->sectionAt(Ljava/util/List;II)I

    move-result v2

    .line 491
    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    iget-object v5, p0, Lcn/jim/wallethelper/WalletService;->expansionFailures:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 492
    iput v2, p0, Lcn/jim/wallethelper/WalletService;->expansionSection:I

    .line 493
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->expansionRowsBefore:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 494
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->rows(Lcn/jim/wallethelper/WalletService$Snapshot;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 495
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->expansionAttempts:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcn/jim/wallethelper/WalletService;->expansionAttempts:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget v0, v0, Lcn/jim/wallethelper/TaskRules$Item;->index:I

    invoke-direct {p0, p1, v0}, Lcn/jim/wallethelper/WalletService;->tapNode(Lcn/jim/wallethelper/WalletService$Snapshot;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 497
    const-string p1, "EXPAND"

    const-wide/16 v0, 0x5dc

    invoke-direct {p0, p1, v0, v1}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V

    .line 498
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5b9e\u9645\u70b9\u6309\u5c55\u793a\u66f4\u591a\uff08"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->expansionAttempts:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/2\uff09\uff0c\u7b49\u5f85\u5c55\u5f00\u7ed3\u679c"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 499
    goto :goto_2

    :cond_3
    const-string p1, "\u5c55\u793a\u66f4\u591a\u6309\u94ae\u65e0\u6cd5\u70b9\u51fb\uff0c\u8bf7\u5bfc\u51fa\u8bca\u65ad"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    .line 500
    :goto_2
    return-void

    .line 494
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jim/wallethelper/TaskRules$Row;

    iget v6, v1, Lcn/jim/wallethelper/TaskRules$Row;->section:I

    if-ne v6, v2, :cond_2

    iget-object v6, p0, Lcn/jim/wallethelper/WalletService;->expansionRowsBefore:Ljava/util/Set;

    invoke-virtual {v1}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 502
    :cond_5
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->rows(Lcn/jim/wallethelper/WalletService$Snapshot;)Ljava/util/List;

    move-result-object v0

    .line 503
    iget v2, p0, Lcn/jim/wallethelper/WalletService;->seenRows:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v2, v5

    iput v2, p0, Lcn/jim/wallethelper/WalletService;->seenRows:I

    .line 504
    iget-boolean v2, p0, Lcn/jim/wallethelper/WalletService;->seeking:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    if-eqz v2, :cond_e

    .line 505
    nop

    .line 506
    iget-object v2, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v4

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_d

    .line 508
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_c

    .line 510
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->taskLookup:Lcn/jim/wallethelper/TaskLookupProgress;

    iget-object v6, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    invoke-virtual {v6}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Lcn/jim/wallethelper/TaskLookupProgress;->observe(Ljava/lang/String;Z)V

    .line 511
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 525
    goto/16 :goto_8

    .line 511
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jim/wallethelper/TaskRules$Row;

    .line 512
    iget-object v5, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    invoke-virtual {v6}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 513
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    .line 514
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->taskLookup:Lcn/jim/wallethelper/TaskLookupProgress;

    invoke-virtual {p1}, Lcn/jim/wallethelper/TaskLookupProgress;->reset()V

    .line 515
    iget-boolean p1, p0, Lcn/jim/wallethelper/WalletService;->claimSubmitted:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcn/jim/wallethelper/WalletService;->claimWaitAfterReturn:Z

    if-eqz p1, :cond_a

    .line 518
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->claimProgress:Lcn/jim/wallethelper/ClaimProgress;

    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcn/jim/wallethelper/ClaimProgress;->restartWait(J)V

    .line 519
    iput-boolean v4, p0, Lcn/jim/wallethelper/WalletService;->claimWaitAfterReturn:Z

    .line 520
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u5df2\u5207\u56de\u94b1\u5305\u5e76\u627e\u5230\u539f\u4efb\u52a1\uff0c\u7ee7\u7eed\u6838\u5bf9\u9886\u53d6\u7ed3\u679c\uff1a"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 522
    :cond_a
    iget-boolean p1, p0, Lcn/jim/wallethelper/WalletService;->claimSubmitted:Z

    if-eqz p1, :cond_b

    const-string p1, "CLAIM"

    goto :goto_5

    :cond_b
    const-string p1, "VERIFY"

    :goto_5
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V

    .line 523
    return-void

    .line 508
    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jim/wallethelper/TaskRules$Row;

    .line 509
    iget v2, v2, Lcn/jim/wallethelper/TaskRules$Row;->section:I

    iget-object v7, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    iget v7, v7, Lcn/jim/wallethelper/TaskRules$Row;->section:I

    if-ne v2, v7, :cond_7

    move v5, v3

    goto/16 :goto_4

    .line 506
    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/jim/wallethelper/TaskRules$Item;

    .line 507
    iget-object v6, v6, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-static {v6}, Lcn/jim/wallethelper/TaskRules;->header(Ljava/lang/String;)I

    move-result v6

    iget-object v7, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    iget v7, v7, Lcn/jim/wallethelper/TaskRules$Row;->section:I

    if-ne v6, v7, :cond_6

    move v5, v3

    goto/16 :goto_3

    .line 527
    :cond_e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_21

    .line 533
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_10
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    .line 563
    :goto_8
    invoke-virtual {p1}, Lcn/jim/wallethelper/WalletService$Snapshot;->signature()Ljava/lang/String;

    move-result-object v0

    .line 564
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->previousSignature:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget v2, p0, Lcn/jim/wallethelper/WalletService;->stable:I

    add-int/2addr v2, v3

    goto :goto_9

    :cond_11
    move v2, v4

    :goto_9
    iput v2, p0, Lcn/jim/wallethelper/WalletService;->stable:I

    .line 565
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->previousSignature:Ljava/lang/String;

    .line 566
    nop

    .line 567
    iget-object v0, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_16

    .line 572
    if-nez v4, :cond_15

    iget v0, p0, Lcn/jim/wallethelper/WalletService;->stable:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_13

    goto :goto_b

    .line 576
    :cond_13
    iget v0, p0, Lcn/jim/wallethelper/WalletService;->pages:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/jim/wallethelper/WalletService;->pages:I

    const/16 v1, 0x3c

    if-le v0, v1, :cond_14

    .line 577
    const-string p1, "\u626b\u63cf\u8d85\u8fc760\u9875\u4ecd\u672a\u5b9a\u4f4d\uff0c\u8bf7\u5bfc\u51fa\u9875\u9762\u8bca\u65ad"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    .line 578
    return-void

    .line 580
    :cond_14
    invoke-direct {p0, p1, v3}, Lcn/jim/wallethelper/WalletService;->scroll(Lcn/jim/wallethelper/WalletService$Snapshot;Z)V

    .line 581
    const-wide/16 v0, 0x44c

    invoke-direct {p0, v0, v1}, Lcn/jim/wallethelper/WalletService;->waitFor(J)V

    .line 582
    return-void

    .line 573
    :cond_15
    :goto_b
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->finishPass()V

    .line 574
    return-void

    .line 567
    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jim/wallethelper/TaskRules$Item;

    .line 568
    iget-object v5, v2, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-static {v5}, Lcn/jim/wallethelper/TaskRules;->header(Ljava/lang/String;)I

    move-result v5

    .line 569
    if-eq v5, v1, :cond_17

    iput v5, p0, Lcn/jim/wallethelper/WalletService;->carry:I

    .line 570
    :cond_17
    iget-object v5, v2, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    const-string v6, "\u89c2\u770b\u89c6\u9891"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    iget-object v2, v2, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    const-string v5, "\u94b1\u5305\u4efb\u52a1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_18
    move v4, v3

    goto :goto_a

    .line 533
    :cond_19
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/jim/wallethelper/TaskRules$Row;

    .line 534
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->settled:Ljava/util/Set;

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto/16 :goto_7

    .line 535
    :cond_1a
    iget-object v2, v0, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-static {v2}, Lcn/jim/wallethelper/TaskRules;->claim(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 536
    invoke-direct {p0, v0, v4}, Lcn/jim/wallethelper/WalletService;->prepareClaim(Lcn/jim/wallethelper/TaskRules$Row;Z)V

    .line 537
    return-void

    .line 539
    :cond_1b
    iget-object v2, v0, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-static {v2}, Lcn/jim/wallethelper/TaskRules;->pending(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 540
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->pending:Ljava/util/Set;

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 541
    goto/16 :goto_7

    .line 543
    :cond_1c
    iget-boolean v2, p0, Lcn/jim/wallethelper/WalletService;->downloadPass:Z

    if-nez v2, :cond_1d

    iget-object v2, v0, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-static {v2}, Lcn/jim/wallethelper/TaskRules;->download(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->pending:Ljava/util/Set;

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 544
    iput-boolean v3, p0, Lcn/jim/wallethelper/WalletService;->moreDownloads:Z

    .line 545
    :cond_1d
    iget-object v2, v0, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-static {v2}, Lcn/jim/wallethelper/TaskRules;->experience(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->pending:Ljava/util/Set;

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 546
    :cond_1e
    iget-boolean v2, p0, Lcn/jim/wallethelper/WalletService;->downloadPass:Z

    if-eqz v2, :cond_20

    iget-object v2, v0, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-static {v2}, Lcn/jim/wallethelper/TaskRules;->download(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->pending:Ljava/util/Set;

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 547
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    .line 548
    iget v1, v0, Lcn/jim/wallethelper/TaskRules$Row;->index:I

    invoke-direct {p0, p1, v1}, Lcn/jim/wallethelper/WalletService;->click(Lcn/jim/wallethelper/WalletService$Snapshot;I)Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->recordTaskDownload(Lcn/jim/wallethelper/TaskRules$Row;)V

    .line 549
    iput-boolean v4, p0, Lcn/jim/wallethelper/WalletService;->storeClicked:Z

    .line 550
    iput-boolean v4, p0, Lcn/jim/wallethelper/WalletService;->installerClicked:Z

    .line 551
    const-string p1, "DOWNLOAD"

    const-wide/16 v1, 0x708

    invoke-direct {p0, p1, v1, v2}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V

    .line 552
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d\u5b89\u88c5\uff1a"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 553
    goto :goto_c

    :cond_1f
    const-string p1, "\u4e0b\u8f7d\u6309\u94ae\u65e0\u6cd5\u70b9\u51fb\uff0c\u8bf7\u5bfc\u51fa\u8bca\u65ad"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    .line 554
    :goto_c
    return-void

    .line 556
    :cond_20
    iget-boolean v2, p0, Lcn/jim/wallethelper/WalletService;->downloadPass:Z

    if-nez v2, :cond_10

    iget-object v2, v0, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-static {v2}, Lcn/jim/wallethelper/TaskRules;->experience(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 557
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->pending:Ljava/util/Set;

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 558
    invoke-direct {p0, p1, v0}, Lcn/jim/wallethelper/WalletService;->launch(Lcn/jim/wallethelper/WalletService$Snapshot;Lcn/jim/wallethelper/TaskRules$Row;)V

    .line 559
    return-void

    .line 527
    :cond_21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/jim/wallethelper/TaskRules$Row;

    .line 528
    iget-object v6, v5, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-static {v6}, Lcn/jim/wallethelper/TaskRules;->done(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 529
    iget-object v6, p0, Lcn/jim/wallethelper/WalletService;->pending:Ljava/util/Set;

    invoke-virtual {v5}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 530
    iget-object v6, p0, Lcn/jim/wallethelper/WalletService;->settled:Ljava/util/Set;

    invoke-virtual {v5}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6
.end method

.method private scroll(Lcn/jim/wallethelper/WalletService$Snapshot;Z)V
    .locals 13

    .line 1015
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->isWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z

    move-result v0

    const v1, 0x3f4a3d71    # 0.79f

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3f51eb85    # 0.82f

    if-eqz v0, :cond_1

    .line 1017
    if-eqz p2, :cond_0

    iget p1, p0, Lcn/jim/wallethelper/WalletService;->screenW:I

    int-to-float p1, p1

    mul-float/2addr p1, v3

    iget p2, p0, Lcn/jim/wallethelper/WalletService;->screenH:I

    int-to-float p2, p2

    mul-float/2addr p2, v1

    iget v0, p0, Lcn/jim/wallethelper/WalletService;->screenW:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget v1, p0, Lcn/jim/wallethelper/WalletService;->screenH:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lcn/jim/wallethelper/WalletService;->swipe(FFFF)V

    goto :goto_0

    .line 1018
    :cond_0
    iget p1, p0, Lcn/jim/wallethelper/WalletService;->screenW:I

    int-to-float p1, p1

    mul-float/2addr p1, v3

    iget p2, p0, Lcn/jim/wallethelper/WalletService;->screenH:I

    int-to-float p2, p2

    mul-float/2addr p2, v2

    iget v0, p0, Lcn/jim/wallethelper/WalletService;->screenW:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget v2, p0, Lcn/jim/wallethelper/WalletService;->screenH:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-direct {p0, p1, p2, v0, v2}, Lcn/jim/wallethelper/WalletService;->swipe(FFFF)V

    .line 1019
    :goto_0
    return-void

    .line 1021
    :cond_1
    nop

    .line 1022
    nop

    .line 1023
    iget-object p1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->nodes:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v4, 0x0

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1031
    if-eqz v0, :cond_4

    .line 1032
    nop

    .line 1033
    if-eqz p2, :cond_3

    .line 1034
    const/16 p1, 0x1000

    goto :goto_2

    .line 1035
    :cond_3
    const/16 p1, 0x2000

    .line 1032
    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result p1

    .line 1035
    if-eqz p1, :cond_4

    return-void

    .line 1036
    :cond_4
    if-eqz p2, :cond_5

    iget p1, p0, Lcn/jim/wallethelper/WalletService;->screenW:I

    int-to-float p1, p1

    mul-float/2addr p1, v3

    iget p2, p0, Lcn/jim/wallethelper/WalletService;->screenH:I

    int-to-float p2, p2

    mul-float/2addr p2, v1

    iget v0, p0, Lcn/jim/wallethelper/WalletService;->screenW:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget v1, p0, Lcn/jim/wallethelper/WalletService;->screenH:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lcn/jim/wallethelper/WalletService;->swipe(FFFF)V

    goto :goto_3

    .line 1037
    :cond_5
    iget p1, p0, Lcn/jim/wallethelper/WalletService;->screenW:I

    int-to-float p1, p1

    mul-float/2addr p1, v3

    iget p2, p0, Lcn/jim/wallethelper/WalletService;->screenH:I

    int-to-float p2, p2

    mul-float/2addr p2, v2

    iget v0, p0, Lcn/jim/wallethelper/WalletService;->screenW:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget v2, p0, Lcn/jim/wallethelper/WalletService;->screenH:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-direct {p0, p1, p2, v0, v2}, Lcn/jim/wallethelper/WalletService;->swipe(FFFF)V

    .line 1038
    :goto_3
    return-void

    .line 1023
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1024
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 1025
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1026
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-double v7, v7

    iget v9, p0, Lcn/jim/wallethelper/WalletService;->screenH:I

    int-to-double v9, v9

    const-wide v11, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v9, v11

    cmpl-double v7, v7, v9

    if-lez v7, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int/2addr v7, v8

    if-le v7, v4, :cond_2

    .line 1027
    nop

    .line 1028
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v4, v0

    move-object v0, v5

    goto :goto_1
.end method

.method private snapshot()Lcn/jim/wallethelper/WalletService$Snapshot;
    .locals 5

    .line 1155
    nop

    .line 1156
    nop

    .line 1157
    invoke-virtual {p0}, Lcn/jim/wallethelper/WalletService;->getWindows()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 1158
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1159
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1160
    :cond_2
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 1161
    if-nez v3, :cond_3

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v1

    .line 1162
    :cond_3
    if-eqz v3, :cond_8

    .line 1163
    invoke-virtual {p0}, Lcn/jim/wallethelper/WalletService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1164
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v4, ""

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1165
    nop

    .line 1166
    move-object v0, v3

    .line 1171
    :goto_2
    if-nez v0, :cond_5

    if-gez v1, :cond_5

    invoke-virtual {p0}, Lcn/jim/wallethelper/WalletService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 1172
    :cond_5
    new-instance v2, Lcn/jim/wallethelper/WalletService$Snapshot;

    invoke-direct {v2, v0}, Lcn/jim/wallethelper/WalletService$Snapshot;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1173
    if-nez v0, :cond_6

    if-ltz v1, :cond_6

    .line 1174
    iput v1, v2, Lcn/jim/wallethelper/WalletService$Snapshot;->windowId:I

    .line 1175
    iget v0, p0, Lcn/jim/wallethelper/WalletService;->walletWindowId:I

    invoke-static {v0, v1}, Lcn/jim/wallethelper/TaskRules;->changedWalletWindow(II)Z

    move-result v0

    iput-boolean v0, v2, Lcn/jim/wallethelper/WalletService$Snapshot;->outsideWalletWindow:Z

    .line 1177
    :cond_6
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->wallet:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->isWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, v2, Lcn/jim/wallethelper/WalletService$Snapshot;->windowId:I

    if-ltz v0, :cond_7

    iget v0, v2, Lcn/jim/wallethelper/WalletService$Snapshot;->windowId:I

    iput v0, p0, Lcn/jim/wallethelper/WalletService;->walletWindowId:I

    .line 1178
    :cond_7
    return-object v2

    .line 1168
    :cond_8
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto/16 :goto_0
.end method

.method private startAwayWait(Ljava/lang/String;)V
    .locals 6

    .line 345
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->claimSubmitted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->claimWaitAfterReturn:Z

    .line 346
    :cond_0
    iput-object p1, p0, Lcn/jim/wallethelper/WalletService;->lastDepartureEvidence:Ljava/lang/String;

    .line 347
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v0

    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    iget v2, v2, Lcn/jim/wallethelper/TaskRules$Row;->section:I

    invoke-static {v2}, Lcn/jim/wallethelper/TaskRules;->seconds(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/jim/wallethelper/WalletService;->dwellUntil:J

    .line 348
    const-string v0, "DWELL"

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    iget-object v1, v1, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " \u00b7 \u5df2\u5207\u51fa\u94b1\u5305\uff0c\u7b49\u5f85 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    iget v1, v1, Lcn/jim/wallethelper/TaskRules$Row;->section:I

    invoke-static {v1}, Lcn/jim/wallethelper/TaskRules;->seconds(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u79d2\uff1b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 350
    return-void
.end method

.method private startRun()V
    .locals 7

    invoke-static {}, Lcn/jim/wallethelper/tools/soda/SodaController;->stop()V

    .line 216
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->running:Z

    if-eqz v0, :cond_1

    .line 217
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->paused:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->togglePause()V

    return-void

    .line 218
    :cond_0
    const-string v0, "\u4efb\u52a1\u8fd0\u884c\u4e2d\uff0c\u8bf7\u4f7f\u7528\u6682\u505c\u6216\u505c\u6b62"

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 219
    return-void

    .line 221
    :cond_1
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->videoOnly:Z
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->videoTask:Lcn/jim/wallethelper/WalletVideo;
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->autoReturnPhase:Ljava/lang/String;
    const/4 v0, 0x0
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->returnRecovery:Lcn/jim/wallethelper/ReturnRecovery;
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->snapshot()Lcn/jim/wallethelper/WalletService$Snapshot;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 222
    nop

    .line 223
    :try_start_1
    iget-object v2, v1, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_7

    .line 224
    iget-object v2, v1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->label(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    if-eqz v4, :cond_5

    const-string v4, "\u94b1\u5305"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "wallet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 229
    :cond_3
    invoke-static {p0}, Lcn/jim/wallethelper/VideoEnvironment;->prepare(Landroid/accessibilityservice/AccessibilityService;)I
    move-result v4
    if-eq v4, v6, :run_audio_ready
    invoke-static {p0}, Lcn/jim/wallethelper/VideoEnvironment;->restore(Landroid/accessibilityservice/AccessibilityService;)V
    const-string v2, "启动前静音未就绪，已保留原音量恢复记录，请稍后重试"
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    invoke-virtual {v1}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    return-void
    :run_audio_ready
    invoke-static {p0}, Lcn/jim/wallethelper/RunLifecycle;->started(Landroid/content/Context;)V
    iget-object v4, v1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;

    iput-object v4, p0, Lcn/jim/wallethelper/WalletService;->wallet:Ljava/lang/String;

    .line 230
    iget v4, v1, Lcn/jim/wallethelper/WalletService$Snapshot;->windowId:I

    iput v4, p0, Lcn/jim/wallethelper/WalletService;->walletWindowId:I

    .line 231
    iput-object v2, p0, Lcn/jim/wallethelper/WalletService;->walletLabel:Ljava/lang/String;

    .line 232
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->realDisplay()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 233
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcn/jim/wallethelper/WalletService;->screenW:I

    .line 234
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcn/jim/wallethelper/WalletService;->screenH:I

    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->initInstallLedger()V

    .line 235
    iput-boolean v6, p0, Lcn/jim/wallethelper/WalletService;->running:Z

    .line 236
    iput-boolean v3, p0, Lcn/jim/wallethelper/WalletService;->paused:Z

    .line 237
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->settled:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 238
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->missingUnconfirmed:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 239
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->taskLookup:Lcn/jim/wallethelper/TaskLookupProgress;

    invoke-virtual {v2}, Lcn/jim/wallethelper/TaskLookupProgress;->reset()V

    .line 240
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->pending:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 241
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->attempts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 242
    iput v3, p0, Lcn/jim/wallethelper/WalletService;->seenRows:I

    .line 243
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->expansionAttempts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 244
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->expansionFailures:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 245
    iput-boolean v3, p0, Lcn/jim/wallethelper/WalletService;->claimSubmitted:Z

    .line 246
    iput-boolean v3, p0, Lcn/jim/wallethelper/WalletService;->claimWaitAfterReturn:Z

    .line 247
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->claimProgress:Lcn/jim/wallethelper/ClaimProgress;

    invoke-virtual {v2}, Lcn/jim/wallethelper/ClaimProgress;->reset()V

    .line 248
    const/4 v2, -0x1

    iput v2, p0, Lcn/jim/wallethelper/WalletService;->claimGestureId:I

    .line 249
    iput v3, p0, Lcn/jim/wallethelper/WalletService;->rewardDismissAttempts:I

    .line 250
    iput-boolean v6, p0, Lcn/jim/wallethelper/WalletService;->downloadPass:Z

    .line 251
    iput-boolean v3, p0, Lcn/jim/wallethelper/WalletService;->moreDownloads:Z

    .line 252
    iput-boolean v3, p0, Lcn/jim/wallethelper/WalletService;->seeking:Z

    .line 253
    iput-boolean v3, p0, Lcn/jim/wallethelper/WalletService;->returningFromDownload:Z

    .line 254
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    .line 255
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->pauseButton:Landroid/widget/Button;
    if-eqz v2, :start_button_done

    const-string v3, "\u6682\u505c"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :start_button_done

    .line 256
    invoke-direct {p0, v6}, Lcn/jim/wallethelper/WalletService;->keepScreen(Z)V

    .line 257
    const-string v2, "\u5f00\u59cb\uff1a\u5148\u68c0\u67e5\u4e0b\u8f7d\uff0c\u518d\u9010\u4e2a\u4f53\u9a8c\u9886\u53d6"

    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->rewind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v1}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 260
    :cond_4
    return-void

    .line 226
    :cond_5
    :goto_1
    :try_start_3
    const-string v2, "\u8bf7\u5148\u6253\u5f00\u94b1\u5305\u7684\u4e09\u4e2a\u4efb\u52a1\u6a21\u5757\uff0c\u518d\u70b9\u51fb\u5f00\u59cb"

    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    if-eqz v1, :cond_6

    :try_start_4
    invoke-virtual {v1}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 227
    :cond_6
    return-void

    .line 223
    :cond_7
    :try_start_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/jim/wallethelper/TaskRules$Item;

    iget-object v5, v5, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-static {v5}, Lcn/jim/wallethelper/TaskRules;->header(Ljava/lang/String;)I

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ltz v5, :cond_2

    move v4, v6

    goto/16 :goto_0

    .line 259
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_8

    :try_start_6
    invoke-virtual {v1}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V

    :cond_8
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_9

    if-eq v0, v1, :cond_a

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_9
    move-object v0, v1

    :cond_a
    :goto_2
    throw v0
.end method

.method private step()V
    .locals 12

    .line 369
    const-string v0, "OPENING"

    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcn/jim/wallethelper/WalletService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 370
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcn/jim/wallethelper/WalletService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 374
    :cond_0
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->refreshDisplayForReturn()V

    .line 379
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->snapshot()Lcn/jim/wallethelper/WalletService$Snapshot;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 382
    :try_start_1
    iget-object v3, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;
    const-string v4, "UNINSTALL"
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :not_uninstalling
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->uninstallStep(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    goto/16 :goto_4
    :not_uninstalling
    iget-object v3, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;
    const-string v4, "RESTART"
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :not_restarting
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->restartStep(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    goto/16 :goto_4
    :not_restarting
    iget-object v3, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;
    const-string v4, "VIDEO_CLEANUP"
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :not_final_restore
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->afterVideoStep()V
    goto/16 :goto_4
    :not_final_restore

    iget-object v3, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;
    const-string v4, "VIDEO"
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :not_video
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->videoStep(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    goto/16 :goto_4
    :not_video
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->guardWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z
    move-result v3
    if-eqz v3, :wallet_guard_done
    goto/16 :goto_4
    :wallet_guard_done
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->isWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->dismissRewardPopup(Lcn/jim/wallethelper/WalletService$Snapshot;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 477
    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 382
    :cond_2
    return-void

    .line 384
    :cond_3
    :try_start_3
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->maybeCompletedCleanup(Lcn/jim/wallethelper/WalletService$Snapshot;)Z
    move-result v3
    if-eqz v3, :completed_cleanup_done
    goto/16 :goto_4
    :completed_cleanup_done
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->handleRefreshedDownload(Lcn/jim/wallethelper/WalletService$Snapshot;)Z
    move-result v3
    if-eqz v3, :refreshed_download_done
    goto/16 :goto_4
    :refreshed_download_done
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->mayWaitOutsideWallet()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->beginAwayWait(Lcn/jim/wallethelper/WalletService$Snapshot;)V

    .line 385
    :cond_4
    iget-object v3, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;

    const-string v4, "DWELL"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 386
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->awayWait(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 477
    if-eqz v2, :cond_5

    :try_start_4
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 387
    :cond_5
    return-void

    .line 390
    :cond_6
    :try_start_5
    iget-object v3, v2, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;

    const-string v4, "packageinstaller"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v4, "WAIT_INSTALL"

    const-string v5, "DOWNLOAD"

    const-string v6, "REWIND"

    const/4 v7, 0x2

    const-string v8, "SCAN"

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_e

    .line 391
    :try_start_6
    iget-object v3, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 392
    :cond_7
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->pending:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    .line 406
    const-string v0, "\u5b89\u88c5\u5668\u4e2d\u7684\u5e94\u7528\u65e0\u6cd5\u4e0e\u4e0b\u8f7d\u961f\u5217\u5bf9\u5e94\uff0c\u8bf7\u624b\u52a8\u68c0\u67e5\u540e\u56de\u5230\u94b1\u5305"

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 477
    if-eqz v2, :cond_8

    :try_start_7
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 407
    :cond_8
    return-void

    .line 392
    :cond_9
    :try_start_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 393
    const-string v4, ":"

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 394
    array-length v4, v3

    if-eq v4, v7, :cond_a

    goto :goto_0

    .line 395
    :cond_a
    iget-object v4, v2, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_0

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/jim/wallethelper/TaskRules$Item;

    .line 396
    aget-object v8, v3, v9

    iget-object v6, v6, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-static {v8, v6}, Lcn/jim/wallethelper/TaskRules;->sameApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 397
    new-instance v0, Lcn/jim/wallethelper/TaskRules$Row;

    aget-object v4, v3, v9

    const-string v6, "\u5b89\u88c5"

    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v7, -0x1

    invoke-direct {v0, v4, v6, v3, v7}, Lcn/jim/wallethelper/TaskRules$Row;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    .line 398
    iput-boolean v10, p0, Lcn/jim/wallethelper/WalletService;->installerClicked:Z

    .line 399
    iput-boolean v10, p0, Lcn/jim/wallethelper/WalletService;->storeClicked:Z

    .line 400
    const-wide/16 v3, 0x0

    invoke-direct {p0, v5, v3, v4}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u5904\u7406\u961f\u5217\u4e2d\u7684\u5b89\u88c5\u786e\u8ba4\uff1a"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    iget-object v3, v3, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 477
    if-eqz v2, :cond_d

    :try_start_9
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 402
    :cond_d
    return-void

    .line 409
    :cond_e
    :try_start_a
    iget-object v3, v2, Lcn/jim/wallethelper/WalletService$Snapshot;->nodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 410
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v3

    iget-wide v5, p0, Lcn/jim/wallethelper/WalletService;->phaseStarted:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x4e20

    cmp-long v0, v3, v5

    if-lez v0, :cond_f

    const-string v0, "\u8bfb\u53d6\u4e0d\u5230\u5f53\u524d\u9875\u9762\uff0c\u8bf7\u70b9\u51fb\u8bca\u65ad"

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 477
    :cond_f
    if-eqz v2, :cond_10

    :try_start_b
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 411
    :cond_10
    return-void

    .line 413
    :cond_11
    :try_start_c
    iget-object v3, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :goto_1
    goto/16 :goto_4

    :sswitch_0
    const-string v0, "EXPAND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_1

    .line 438
    :cond_12
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->isWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "\u5c55\u5f00\u4efb\u52a1\u540e\u79bb\u5f00\u94b1\u5305\uff0c\u8bf7\u5207\u56de\u540e\u7ee7\u7eed"

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 477
    if-eqz v2, :cond_13

    :try_start_d
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 438
    :cond_13
    return-void

    .line 439
    :cond_14
    :try_start_e
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->checkExpansion(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 477
    if-eqz v2, :cond_15

    :try_start_f
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 440
    :cond_15
    return-void

    .line 413
    :sswitch_1
    :try_start_10
    const-string v0, "RECENTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_1

    .line 450
    :cond_16
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->recents(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 477
    if-eqz v2, :cond_17

    :try_start_11
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 451
    :cond_17
    return-void

    .line 413
    :sswitch_2
    :try_start_12
    const-string v0, "CLAIM_READY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_1

    .line 466
    :cond_18
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->readyClaim(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 477
    if-eqz v2, :cond_19

    :try_start_13
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 467
    :cond_19
    return-void

    .line 413
    :sswitch_3
    :try_start_14
    const-string v0, "CLAIM"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_1

    .line 463
    :cond_1a
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->verifyClaim(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 477
    if-eqz v2, :cond_1b

    :try_start_15
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 464
    :cond_1b
    return-void

    .line 413
    :sswitch_4
    :try_start_16
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_1

    .line 435
    :cond_1c
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->scan(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 477
    if-eqz v2, :cond_1d

    :try_start_17
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 436
    :cond_1d
    return-void

    .line 413
    :sswitch_5
    :try_start_18
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto :goto_1

    .line 469
    :cond_1e
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->isWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 470
    const-string v0, "\u7b49\u5f85\u5b89\u88c5\u65f6\u8bf7\u4fdd\u6301\u94b1\u5305\u5728\u524d\u53f0"

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 477
    if-eqz v2, :cond_1f

    :try_start_19
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    .line 471
    :cond_1f
    return-void

    .line 473
    :cond_20
    :try_start_1a
    iput-boolean v9, p0, Lcn/jim/wallethelper/WalletService;->downloadPass:Z

    .line 474
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->rewind()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 477
    if-eqz v2, :cond_21

    :try_start_1b
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 475
    :cond_21
    return-void

    .line 413
    :sswitch_6
    :try_start_1c
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    goto/16 :goto_1

    .line 445
    :cond_22
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->beginAwayWait(Lcn/jim/wallethelper/WalletService$Snapshot;)V

    .line 446
    iget-object v3, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v3

    iget-wide v5, p0, Lcn/jim/wallethelper/WalletService;->phaseStarted:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x4650

    cmp-long v0, v3, v5

    if-lez v0, :cond_23

    .line 447
    const-string v0, "\u5c1a\u672a\u68c0\u6d4b\u5230\u5207\u51fa\u94b1\u5305\uff1b\u8bf7\u68c0\u67e5\u6253\u5f00\u6309\u94ae\u540e\u7ee7\u7eed"

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 477
    :cond_23
    if-eqz v2, :cond_24

    :try_start_1d
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    .line 448
    :cond_24
    return-void

    .line 413
    :sswitch_7
    :try_start_1e
    const-string v0, "VERIFY"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_1

    .line 460
    :cond_25
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->verify(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    .line 477
    if-eqz v2, :cond_26

    :try_start_1f
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    .line 461
    :cond_26
    return-void

    .line 413
    :sswitch_8
    :try_start_20
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_1

    .line 415
    :cond_27
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->isWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 416
    const-string v0, "\u8bf7\u56de\u5230\u94b1\u5305\u4efb\u52a1\u9875\u540e\u7ee7\u7eed"

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    .line 477
    if-eqz v2, :cond_28

    :try_start_21
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    .line 417
    :cond_28
    return-void

    .line 419
    :cond_29
    :try_start_22
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->signature()Ljava/lang/String;

    move-result-object v0

    .line 420
    iget-object v3, p0, Lcn/jim/wallethelper/WalletService;->previousSignature:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget v3, p0, Lcn/jim/wallethelper/WalletService;->stable:I

    add-int/2addr v3, v9

    goto :goto_2

    :cond_2a
    move v3, v10

    :goto_2
    iput v3, p0, Lcn/jim/wallethelper/WalletService;->stable:I

    .line 421
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->previousSignature:Ljava/lang/String;

    .line 422
    iget v0, p0, Lcn/jim/wallethelper/WalletService;->stable:I

    if-ge v0, v7, :cond_2d

    iget v0, p0, Lcn/jim/wallethelper/WalletService;->pages:I

    const/16 v3, 0x23

    if-lt v0, v3, :cond_2b

    goto :goto_3

    .line 430
    :cond_2b
    iget v0, p0, Lcn/jim/wallethelper/WalletService;->pages:I

    add-int/2addr v0, v9

    iput v0, p0, Lcn/jim/wallethelper/WalletService;->pages:I

    .line 431
    invoke-direct {p0, v2, v10}, Lcn/jim/wallethelper/WalletService;->scroll(Lcn/jim/wallethelper/WalletService$Snapshot;Z)V

    .line 432
    const-wide/16 v3, 0x3e8

    invoke-direct {p0, v3, v4}, Lcn/jim/wallethelper/WalletService;->waitFor(J)V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    .line 477
    if-eqz v2, :cond_2c

    :try_start_23
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    .line 433
    :cond_2c
    return-void

    .line 423
    :cond_2d
    :goto_3
    const/4 v0, -0x2

    :try_start_24
    iput v0, p0, Lcn/jim/wallethelper/WalletService;->carry:I

    .line 424
    iput v10, p0, Lcn/jim/wallethelper/WalletService;->pages:I

    .line 425
    iput v10, p0, Lcn/jim/wallethelper/WalletService;->stable:I

    .line 426
    const-string v0, ""

    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->previousSignature:Ljava/lang/String;

    .line 427
    const-wide/16 v3, 0x258

    invoke-direct {p0, v8, v3, v4}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 477
    if-eqz v2, :cond_2e

    :try_start_25
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    .line 428
    :cond_2e
    return-void

    .line 413
    :sswitch_9
    :try_start_26
    const-string v0, "RETURN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_1

    .line 453
    :cond_2f
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->isWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 454
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->returned()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    .line 477
    if-eqz v2, :cond_30

    :try_start_27
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    .line 455
    :cond_30
    return-void

    .line 457
    :cond_31
    :try_start_28
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v3

    iget-wide v5, p0, Lcn/jim/wallethelper/WalletService;->phaseStarted:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0xfa0

    cmp-long v0, v3, v5

    if-lez v0, :cond_32

    const-string v0, "\u672a\u5207\u56de\u94b1\u5305\uff0c\u8bf7\u624b\u52a8\u5207\u56de\u540e\u7ee7\u7eed"

    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->retryWalletReturn()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    .line 477
    :cond_32
    if-eqz v2, :cond_33

    :try_start_29
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1

    .line 458
    :cond_33
    return-void

    .line 413
    :sswitch_a
    :try_start_2a
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    goto/16 :goto_1

    .line 442
    :cond_34
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->downloadStep(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    .line 477
    if-eqz v2, :cond_35

    :try_start_2b
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V

    .line 443
    :cond_35
    return-void

    .line 477
    :goto_4
    if-eqz v2, :cond_36

    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V

    .line 478
    :cond_36
    return-void

    .line 477
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_37

    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V

    :cond_37
    throw v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_39

    if-eq v1, v0, :cond_38

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_38
    move-object v0, v1

    :cond_39
    throw v0

    .line 371
    :cond_3b
    :goto_6
    const-string v0, "\u5c4f\u5e55\u5df2\u9501\u5b9a\u6216\u7184\u706d\uff0c\u8bf7\u89e3\u9501\u540e\u7ee7\u7eed"

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    .line 372
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7c3f4778 -> :sswitch_a
        -0x701eced0 -> :sswitch_9
        -0x701d9f45 -> :sswitch_8
        -0x694c8387 -> :sswitch_7
        -0x207f1ec8 -> :sswitch_6
        -0x1920634f -> :sswitch_5
        0x26be7d -> :sswitch_4
        0x3d3b01c -> :sswitch_3
        0x523e6fa0 -> :sswitch_2
        0x6b4e1158 -> :sswitch_1
        0x7abbd29a -> :sswitch_0
    .end sparse-switch
.end method

.method private stop(Ljava/lang/String;)V
    .locals 2
    invoke-static {p0, p1}, Lcn/jim/wallethelper/RunLifecycle;->stopped(Landroid/content/Context;Ljava/lang/String;)V
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->running:Z
    invoke-static {p0, p1, v0}, Lcn/jim/wallethelper/RunNotice;->stopped(Landroid/content/Context;Ljava/lang/String;Z)V
    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->cancelOpening(Landroid/content/Context;)V
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->endInstallTracking()V
    invoke-static {p0}, Lcn/jim/wallethelper/VideoEnvironment;->restore(Landroid/accessibilityservice/AccessibilityService;)V
    const/4 v0, 0x0
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->videoTask:Lcn/jim/wallethelper/WalletVideo;
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->videoOnly:Z
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->restartCheck:Z
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->autoReturnPhase:Ljava/lang/String;
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->walletRestart:Lcn/jim/wallethelper/WalletRestart;
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->rerunPending:Z

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->running:Z

    .line 264
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->paused:Z

    .line 265
    const-string v1, "IDLE"

    iput-object v1, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;

    .line 266
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    .line 267
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->keepScreen(Z)V

    .line 268
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->pauseButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->pauseButton:Landroid/widget/Button;

    const-string v1, "\u6682\u505c"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :cond_0
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lcn/jim/wallethelper/ResidentService;->refresh()V
    return-void
.end method

.method private swipe(FFFF)V
    .locals 6

    .line 1041
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1042
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1043
    invoke-virtual {v1, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1044
    nop

    .line 1045
    new-instance p1, Landroid/accessibilityservice/GestureDescription$Builder;

    invoke-direct {p1}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    .line 1046
    new-instance p2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x190

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    invoke-virtual {p1, p2}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    move-result-object p1

    .line 1047
    invoke-virtual {p1}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    move-result-object p1

    .line 1048
    nop

    .line 1049
    nop

    .line 1044
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcn/jim/wallethelper/WalletService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    .line 1050
    return-void
.end method

.method private tapAt(FF)Z
    .locals 10

    .line 835
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 836
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 837
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 838
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, v0, v3

    aget v5, v0, v1

    aget v6, v0, v3

    iget-object v7, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v0, v0, v1

    iget-object v7, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    add-int/2addr v0, v7

    invoke-direct {v2, v4, v5, v6, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 839
    float-to-int v0, p1

    float-to-int v4, p2

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 841
    :cond_0
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v5, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 842
    iget p1, p0, Lcn/jim/wallethelper/WalletService;->gestureSerial:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/jim/wallethelper/WalletService;->gestureSerial:I

    .line 843
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "submitted #"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/jim/wallethelper/WalletService;->lastTapResult:Ljava/lang/String;

    .line 844
    new-instance p2, Landroid/accessibilityservice/GestureDescription$Builder;

    invoke-direct {p2}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    .line 845
    new-instance v0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x78

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    invoke-virtual {p2, v0}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    move-result-object p2

    new-instance v0, Lcn/jim/wallethelper/WalletService$3;

    invoke-direct {v0, p0, p1}, Lcn/jim/wallethelper/WalletService$3;-><init>(Lcn/jim/wallethelper/WalletService;I)V

    .line 855
    nop

    .line 844
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcn/jim/wallethelper/WalletService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    move-result p2

    .line 856
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rejected #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->lastTapResult:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u70b9\u6309\u624b\u52bf\u53d1\u9001\u88ab\u62d2\u7edd #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jim/wallethelper/LocalLog;->add(Landroid/content/Context;Ljava/lang/String;)V

    .line 857
    :cond_1
    return p2
.end method

.method private tapNode(Lcn/jim/wallethelper/WalletService$Snapshot;I)Z
    .locals 5

    .line 1102
    const/4 v0, 0x0

    if-ltz p2, :cond_4

    iget-object v1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto/16 :goto_2

    .line 1103
    :cond_0
    iget-object v1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->nodes:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1104
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1105
    iget v2, p0, Lcn/jim/wallethelper/WalletService;->screenH:I

    iget-object v3, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    invoke-static {v3}, Lcn/jim/wallethelper/TaskRules;->contentBottom(Ljava/util/List;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1106
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lt v3, v4, :cond_3

    .line 1107
    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcn/jim/wallethelper/WalletService;->screenW:I

    if-gt v3, v4, :cond_3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget-object p1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    invoke-static {p1}, Lcn/jim/wallethelper/TaskRules;->contentTop(Ljava/util/List;)I

    move-result p1

    if-lt v3, p1, :cond_3

    iget p1, v1, Landroid/graphics/Rect;->bottom:I

    if-le p1, v2, :cond_1

    goto :goto_1

    .line 1108
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u63a7\u4ef6\u70b9\u6309\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1109
    const-string p2, " @ "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1108
    invoke-static {p0, p1}, Lcn/jim/wallethelper/LocalLog;->add(Landroid/content/Context;Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {p0, p1, p2}, Lcn/jim/wallethelper/WalletService;->tapAt(FF)Z

    move-result p1

    return p1

    .line 1107
    :cond_3
    :goto_1
    return v0

    .line 1102
    :cond_4
    :goto_2
    return v0
.end method

.method private togglePause()V
    .locals 6

    .line 286
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->running:Z

    if-nez v0, :cond_0

    return-void

    .line 287
    :cond_0
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->paused:Z

    if-nez v0, :cond_1

    .line 288
    const-string v0, "\u5df2\u6682\u505c\uff1b\u70b9\u51fb\u7ee7\u7eed\u6062\u590d"

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    .line 289
    return-void

    .line 291
    :cond_1
    invoke-static {p0}, Lcn/jim/wallethelper/VideoEnvironment;->prepare(Landroid/accessibilityservice/AccessibilityService;)I
    move-result v0
    const/4 v1, 0x1
    if-eq v0, v1, :resume_audio_ready
    const-string v0, "音量尚未准备好，请稍后继续"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    return-void
    :resume_audio_ready
    invoke-static {p0}, Lcn/jim/wallethelper/RunLifecycle;->resumed(Landroid/content/Context;)V
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jim/wallethelper/WalletService;->phaseStarted:J

    .line 292
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;

    const-string v1, "CLAIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->claimProgress:Lcn/jim/wallethelper/ClaimProgress;

    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/jim/wallethelper/ClaimProgress;->restartWait(J)V

    .line 293
    :cond_2
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/jim/wallethelper/WalletService;->due:J

    .line 295
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;

    const-string v1, "DWELL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    if-eqz v0, :cond_3

    .line 296
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v0

    iget-object v4, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    iget v4, v4, Lcn/jim/wallethelper/TaskRules$Row;->section:I

    invoke-static {v4}, Lcn/jim/wallethelper/TaskRules;->seconds(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcn/jim/wallethelper/WalletService;->dwellUntil:J

    .line 297
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->paused:Z

    .line 298
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->pauseButton:Landroid/widget/Button;
    if-eqz v0, :resume_button_done

    const-string v1, "\u6682\u505c"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :resume_button_done

    .line 299
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->keepScreen(Z)V

    .line 300
    const-string v0, "\u7ee7\u7eed\u6267\u884c"

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method private transition(Ljava/lang/String;J)V
    .locals 2

    .line 85
    iput-object p1, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jim/wallethelper/WalletService;->phaseStarted:J

    .line 87
    invoke-direct {p0, p2, p3}, Lcn/jim/wallethelper/WalletService;->waitFor(J)V

    .line 88
    return-void
.end method

.method private verify(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    .locals 10

    .line 687
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->isWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    const-string p1, "\u9886\u53d6\u524d\u8bf7\u56de\u5230\u94b1\u5305"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    .line 689
    return-void

    .line 691
    :cond_0
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->currentRow(Lcn/jim/wallethelper/WalletService$Snapshot;)Lcn/jim/wallethelper/TaskRules$Row;

    move-result-object v0

    .line 692
    if-nez v0, :cond_2

    .line 693
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/jim/wallethelper/WalletService;->phaseStarted:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 694
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/jim/wallethelper/WalletService;->seeking:Z

    .line 695
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->rewind()V

    .line 697
    :cond_1
    return-void

    .line 699
    :cond_2
    iget-object v1, v0, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-static {v1}, Lcn/jim/wallethelper/TaskRules;->done(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x2bc

    const-string v4, "SCAN"

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 700
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->settled:Ljava/util/Set;

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 701
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->pending:Ljava/util/Set;

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 702
    iput-boolean v5, p0, Lcn/jim/wallethelper/WalletService;->seeking:Z

    .line 703
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u9875\u9762\u5df2\u5b8c\u6210\uff1a"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 704
    invoke-direct {p0, v4, v2, v3}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V

    .line 705
    return-void

    .line 707
    :cond_3
    iget-object v1, v0, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-static {v1}, Lcn/jim/wallethelper/TaskRules;->claim(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 708
    invoke-direct {p0, v0, v5}, Lcn/jim/wallethelper/WalletService;->prepareClaim(Lcn/jim/wallethelper/TaskRules$Row;Z)V

    .line 709
    return-void

    .line 711
    :cond_4
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v6

    iget-wide v8, p0, Lcn/jim/wallethelper/WalletService;->phaseStarted:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1388

    cmp-long v1, v6, v8

    if-gez v1, :cond_5

    return-void

    .line 712
    :cond_5
    iget-object v1, v0, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-static {v1}, Lcn/jim/wallethelper/TaskRules;->experience(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 713
    iput-boolean v5, p0, Lcn/jim/wallethelper/WalletService;->seeking:Z

    .line 714
    invoke-direct {p0, p1, v0}, Lcn/jim/wallethelper/WalletService;->launch(Lcn/jim/wallethelper/WalletService$Snapshot;Lcn/jim/wallethelper/TaskRules$Row;)V

    .line 715
    return-void

    .line 717
    :cond_6
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->settled:Ljava/util/Set;

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 718
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService;->pending:Ljava/util/Set;

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 719
    iput-boolean v5, p0, Lcn/jim/wallethelper/WalletService;->seeking:Z

    .line 720
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u65e0\u6cd5\u9886\u53d6\uff0c\u8df3\u8fc7\uff1a"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\uff08"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, v0, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\uff09"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 721
    invoke-direct {p0, v4, v2, v3}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V

    .line 722
    return-void
.end method

.method private verifyClaim(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    .locals 6

    .line 725
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->isWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 726
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->beginAwayWait(Lcn/jim/wallethelper/WalletService$Snapshot;)V

    .line 727
    return-void

    .line 729
    :cond_0
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->currentRow(Lcn/jim/wallethelper/WalletService$Snapshot;)Lcn/jim/wallethelper/TaskRules$Row;

    move-result-object p1

    .line 730
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-static {v1}, Lcn/jim/wallethelper/TaskRules;->done(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 731
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->settled:Ljava/util/Set;

    invoke-virtual {p1}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 732
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->pending:Ljava/util/Set;

    invoke-virtual {p1}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 733
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->seeking:Z

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5df2\u786e\u8ba4\u9886\u53d6\u540e\u72b6\u6001\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 735
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->claimSubmitted:Z

    .line 736
    const-string p1, "SCAN"

    const-wide/16 v0, 0x2bc

    invoke-direct {p0, p1, v0, v1}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V

    .line 737
    return-void

    .line 739
    :cond_1
    const/4 v1, 0x1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/jim/wallethelper/WalletService;->phaseStarted:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-boolean v2, p0, Lcn/jim/wallethelper/WalletService;->claimLookupTried:Z

    if-nez v2, :cond_2

    .line 741
    iput-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->seeking:Z

    .line 742
    iput-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->claimLookupTried:Z

    .line 743
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->rewind()V

    .line 744
    return-void

    .line 746
    :cond_2
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->claimProgress:Lcn/jim/wallethelper/ClaimProgress;

    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v3

    if-eqz p1, :cond_3

    iget-object v5, p1, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    invoke-static {v5}, Lcn/jim/wallethelper/TaskRules;->claim(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {v2, v3, v4, v0}, Lcn/jim/wallethelper/ClaimProgress;->decision(JZ)Lcn/jim/wallethelper/ClaimProgress$Decision;

    move-result-object v0

    .line 747
    sget-object v2, Lcn/jim/wallethelper/ClaimProgress$Decision;->RETRY:Lcn/jim/wallethelper/ClaimProgress$Decision;

    if-ne v0, v2, :cond_4

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u9886\u53d6\u4ecd\u672a\u751f\u6548\u4e14\u672a\u89c1\u6210\u529f\u63d0\u793a\uff0c\u91cd\u65b0\u5b9a\u4f4d\u540e\u91cd\u8bd5\u4e00\u6b21\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 749
    invoke-direct {p0, p1, v1}, Lcn/jim/wallethelper/WalletService;->prepareClaim(Lcn/jim/wallethelper/TaskRules$Row;Z)V

    goto :goto_0

    .line 750
    :cond_4
    sget-object p1, Lcn/jim/wallethelper/ClaimProgress$Decision;->STOP:Lcn/jim/wallethelper/ClaimProgress$Decision;

    if-ne v0, p1, :cond_5

    .line 751
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u9886\u53d6\u7ed3\u679c\u4ecd\u672a\u786e\u8ba4\uff08\u5df2\u70b9\u6309"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->claimProgress:Lcn/jim/wallethelper/ClaimProgress;

    invoke-virtual {v0}, Lcn/jim/wallethelper/ClaimProgress;->attempts()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\u6b21\uff09\uff0c\u8bf7\u624b\u52a8\u68c0\u67e5\u5e76\u5bfc\u51fa\u8bca\u65ad"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    goto :goto_1

    .line 750
    :cond_5
    :goto_0
    nop

    .line 753
    :goto_1
    return-void
.end method

.method private waitFor(J)V
    .locals 2

    .line 81
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/jim/wallethelper/WalletService;->due:J

    .line 82
    return-void
.end method


# virtual methods
.method public capture()V
    .locals 11

    .line 1114
    const-string v0, ","

    const-string v1, " | "

    const-string v2, "\n"

    iget-boolean v3, p0, Lcn/jim/wallethelper/WalletService;->running:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcn/jim/wallethelper/WalletService;->paused:Z

    if-nez v3, :cond_0

    const-string v3, "\u5df2\u6682\u505c\u5e76\u6355\u83b7\u5f53\u524d\u9875\u9762"

    invoke-direct {p0, v3}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    .line 1115
    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->snapshot()Lcn/jim/wallethelper/WalletService$Snapshot;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1116
    :try_start_1
    new-instance v5, Ljava/io/OutputStreamWriter;

    const-string v6, "screen.txt"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcn/jim/wallethelper/WalletService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v5, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1117
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "package="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nphase="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\ncarry="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcn/jim/wallethelper/WalletService;->carry:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1118
    const-string v7, "screen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcn/jim/wallethelper/WalletService;->screenW:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcn/jim/wallethelper/WalletService;->screenH:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\ncontentTop="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    invoke-static {v7}, Lcn/jim/wallethelper/TaskRules;->contentTop(Ljava/util/List;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1119
    const-string v7, "\ncontentBottom="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    invoke-static {v7}, Lcn/jim/wallethelper/TaskRules;->contentBottom(Ljava/util/List;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1120
    const-string v7, "lastTap="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/jim/wallethelper/WalletService;->lastTapResult:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nclaimAttempts="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/jim/wallethelper/WalletService;->claimProgress:Lcn/jim/wallethelper/ClaimProgress;

    invoke-virtual {v7}, Lcn/jim/wallethelper/ClaimProgress;->attempts()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1121
    const-string v7, "\nclaimRewardSeen="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/jim/wallethelper/WalletService;->claimProgress:Lcn/jim/wallethelper/ClaimProgress;

    invoke-virtual {v7}, Lcn/jim/wallethelper/ClaimProgress;->rewardSeen()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1122
    const-string v7, "\nclaimWaitAfterReturn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcn/jim/wallethelper/WalletService;->claimWaitAfterReturn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1123
    const-string v7, "\nmissingLookupPasses="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/jim/wallethelper/WalletService;->taskLookup:Lcn/jim/wallethelper/TaskLookupProgress;

    invoke-virtual {v7}, Lcn/jim/wallethelper/TaskLookupProgress;->passes()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1124
    const-string v7, "\nmissingUnconfirmed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/jim/wallethelper/WalletService;->missingUnconfirmed:Ljava/util/Set;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1125
    const-string v7, "\nlastDepartureEvidence="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/jim/wallethelper/WalletService;->lastDepartureEvidence:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1126
    const-string v7, "\nwalletWindowId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcn/jim/wallethelper/WalletService;->walletWindowId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nactiveWindowId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcn/jim/wallethelper/WalletService$Snapshot;->windowId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1127
    const-string v7, "\nmoreDownloads="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcn/jim/wallethelper/WalletService;->moreDownloads:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\npending="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcn/jim/wallethelper/WalletService;->pending:Ljava/util/Set;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1117
    invoke-virtual {v5, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1128
    iget-object v6, v4, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1148
    const-string v0, "\u8bca\u65ad\u5df2\u4fdd\u5b58\uff1b\u8fd4\u56de\u52a9\u624b\u9996\u9875\u53ef\u5bfc\u51fa"

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1149
    :try_start_3
    invoke-virtual {v5}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_7

    :try_start_4
    invoke-virtual {v4}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_2

    .line 1128
    :cond_1
    :try_start_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/jim/wallethelper/TaskRules$Item;

    .line 1129
    iget-object v8, v4, Lcn/jim/wallethelper/WalletService$Snapshot;->nodes:Ljava/util/List;

    iget v9, v7, Lcn/jim/wallethelper/TaskRules$Item;->index:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1130
    nop

    .line 1131
    new-instance v9, Ljava/lang/StringBuilder;

    iget v10, v7, Lcn/jim/wallethelper/TaskRules$Item;->index:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1133
    iget v10, v7, Lcn/jim/wallethelper/TaskRules$Item;->x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1134
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1135
    iget v10, v7, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1136
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1137
    iget v10, v7, Lcn/jim/wallethelper/TaskRules$Item;->w:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1138
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1139
    iget v10, v7, Lcn/jim/wallethelper/TaskRules$Item;->h:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1140
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1141
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1142
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1143
    iget-object v7, v7, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1144
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1131
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1130
    invoke-virtual {v5, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1145
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "  class="

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " clickable="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1146
    const-string v9, " enabled="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " visible="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1145
    invoke-virtual {v5, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 1149
    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_6
    invoke-virtual {v5}, Ljava/io/Writer;->close()V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    if-nez v3, :cond_2

    move-object v3, v0

    goto :goto_1

    :cond_2
    if-eq v3, v0, :cond_3

    :try_start_7
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V

    :cond_4
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    if-eqz v3, :cond_6

    if-eq v3, v0, :cond_5

    :try_start_8
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    move-object v0, v3

    :cond_6
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    .line 1150
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bca\u65ad\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 1152
    :cond_7
    :goto_2
    return-void
.end method

.method synthetic lambda$0$cn-jim-wallethelper-WalletService(Landroid/view/View;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->startRun()V

    return-void
.end method

.method synthetic lambda$1$cn-jim-wallethelper-WalletService(Landroid/view/View;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->togglePause()V

    return-void
.end method

.method synthetic lambda$2$cn-jim-wallethelper-WalletService(Landroid/view/View;)V
    .locals 0

    .line 165
    const-string p1, "\u5df2\u505c\u6b62"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$3$cn-jim-wallethelper-WalletService(Landroid/view/View;)V
    .locals 0

    .line 166
    invoke-virtual {p0}, Lcn/jim/wallethelper/WalletService;->capture()V

    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    .line 104
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->running:Z

    if-eqz v0, :cond_6

    .line 105
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->paused:Z

    if-nez v0, :cond_6

    .line 106
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->mayWaitOutsideWallet()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 107
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;

    if-eqz v0, :cond_6

    .line 108
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/high16 v2, 0x400000

    if-ne v0, v2, :cond_6

    .line 111
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->snapshot()Lcn/jim/wallethelper/WalletService$Snapshot;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    :try_start_1
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->beginAwayWait(Lcn/jim/wallethelper/WalletService$Snapshot;)V

    .line 114
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->mayWaitOutsideWallet()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcn/jim/wallethelper/WalletService$Snapshot;->nodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/jim/wallethelper/WalletService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 116
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->wallet:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/jim/wallethelper/WalletService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcn/jim/wallethelper/TaskRules;->externalAppEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u7a97\u53e3\u4e8b\u4ef6\uff1a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getPackageName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->startAwayWait(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :cond_2
    if-eqz v2, :cond_6

    :try_start_2
    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v0, p1

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->close()V

    :cond_3
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_5

    if-eq v0, p1, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    move-object p1, v0

    :cond_5
    throw p1

    .line 122
    :cond_6
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-static {}, Lcn/jim/wallethelper/tools/soda/SodaController;->stop()V

    .line 131
    const-string v0, "\u670d\u52a1\u5df2\u5173\u95ed"

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->wm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 135
    iput-object v1, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;

    .line 137
    :cond_0
    sput-object v1, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;

    .line 138
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onDestroy()V

    .line 139
    return-void
.end method

.method public onInterrupt()V
    .locals 1

    invoke-static {}, Lcn/jim/wallethelper/tools/soda/SodaController;->stop()V

    .line 126
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->running:Z

    if-eqz v0, :cond_0

    const-string v0, "\u7cfb\u7edf\u4e2d\u65ad\uff0c\u5df2\u6682\u505c"

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method

.method public onServiceConnected()V
    .locals 3

    .line 92
    sput-object p0, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;

    .line 93
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcn/jim/wallethelper/WalletService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->wm:Landroid/view/WindowManager;

    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lcn/jim/wallethelper/WalletService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->home:Ljava/lang/String;

    .line 97
    :cond_0
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->tick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    const-string v0, "\u670d\u52a1\u5df2\u8fde\u63a5\uff0c\u7b49\u5f85\u624b\u52a8\u5f00\u59cb"

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    .line 100
    invoke-static {p0}, Lcn/jim/wallethelper/VideoEnvironment;->restore(Landroid/accessibilityservice/AccessibilityService;)V
    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->attach(Landroid/content/Context;)V
    return-void
.end method

.method public showOverlay()V
    .locals 9

    invoke-static {}, Lcn/jim/wallethelper/tools/soda/SodaController;->stop()V

    .line 150
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    return-void

    .line 151
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;

    .line 152
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 153
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->dp(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcn/jim/wallethelper/WalletService;->dp(I)I

    move-result v4

    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->dp(I)I

    move-result v1

    invoke-direct {p0, v3}, Lcn/jim/wallethelper/WalletService;->dp(I)I

    move-result v5

    invoke-virtual {v0, v2, v4, v1, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 154
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;

    const v1, -0x12dfd4c3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 155
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->status:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->status:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->status:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 158
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->status:Landroid/widget/TextView;

    const-string v1, "\u94b1\u5305\u52a9\u624b \u00b7 \u62d6\u52a8\u8fd9\u91cc\u79fb\u52a8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->status:Landroid/widget/TextView;

    const/4 v3, 0x4
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setMaxLines(I)V
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 160
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->status:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V
    .line 162
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;

    const/4 v2, -0x1
    const/4 v3, -0x2
    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 163
    new-instance v1, Lcn/jim/wallethelper/WalletService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/jim/wallethelper/WalletService$$ExternalSyntheticLambda0;-><init>(Lcn/jim/wallethelper/WalletService;)V

    const-string v2, "\u5f00\u59cb"

    invoke-direct {p0, v0, v2, v1}, Lcn/jim/wallethelper/WalletService;->addButton(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 164
    new-instance v1, Lcn/jim/wallethelper/WalletService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcn/jim/wallethelper/WalletService$$ExternalSyntheticLambda1;-><init>(Lcn/jim/wallethelper/WalletService;)V

    const-string v2, "\u6682\u505c"

    invoke-direct {p0, v0, v2, v1}, Lcn/jim/wallethelper/WalletService;->addButton(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcn/jim/wallethelper/WalletService;->pauseButton:Landroid/widget/Button;

    .line 165
    new-instance v1, Lcn/jim/wallethelper/WalletService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcn/jim/wallethelper/WalletService$$ExternalSyntheticLambda2;-><init>(Lcn/jim/wallethelper/WalletService;)V

    const-string v2, "\u505c\u6b62"

    invoke-direct {p0, v0, v2, v1}, Lcn/jim/wallethelper/WalletService;->addButton(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 166
    new-instance v1, Lcn/jim/wallethelper/WalletService$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcn/jim/wallethelper/WalletService$$ExternalSyntheticLambda3;-><init>(Lcn/jim/wallethelper/WalletService;)V

    const-string v2, "\u8bca\u65ad"

    invoke-direct {p0, v0, v2, v1}, Lcn/jim/wallethelper/WalletService;->addButton(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    new-instance v1, Lcn/jim/wallethelper/OverlayCloseClick;
    invoke-direct {v1, p0}, Lcn/jim/wallethelper/OverlayCloseClick;-><init>(Lcn/jim/wallethelper/WalletService;)V
    const-string v2, "关闭浮窗"
    invoke-direct {p0, v0, v2, v1}, Lcn/jim/wallethelper/WalletService;->addButton(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/Button;

    .line 167
    nop

    .line 168
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 169
    const/16 v1, 0x74

    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->dp(I)I

    move-result v4

    .line 170
    nop

    .line 171
    nop

    .line 172
    nop

    .line 174
    nop

    .line 168
    const/4 v5, -0x2

    const/16 v6, 0x7f0

    const/16 v7, 0x28

    const/4 v8, -0x3

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 167
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->overlayParams:Landroid/view/WindowManager$LayoutParams;

    .line 175
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->overlayParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 176
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->overlayParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 177
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->overlayParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x50

    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 178
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->overlayParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->status:Landroid/widget/TextView;

    .line 180
    new-instance v1, Lcn/jim/wallethelper/WalletService$2;

    invoke-direct {v1, p0}, Lcn/jim/wallethelper/WalletService$2;-><init>(Lcn/jim/wallethelper/WalletService;)V

    .line 179
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->paused:Z
    if-eqz v0, :overlay_resume_state_done
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->pauseButton:Landroid/widget/Button;
    const-string v1, "继续"
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :overlay_resume_state_done
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->running:Z
    if-eqz v0, :overlay_screen_done
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->paused:Z
    if-nez v0, :overlay_screen_done
    const/4 v0, 0x1
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->keepScreen(Z)V
    :overlay_screen_done

    .line 201
    return-void
.end method

.method public hideOverlay()V
    .locals 2
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;
    if-eqz v0, :hide_done
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->wm:Landroid/view/WindowManager;
    if-eqz v1, :hide_clear
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :hide_clear
    const/4 v0, 0x0
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->overlayParams:Landroid/view/WindowManager$LayoutParams;
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->status:Landroid/widget/TextView;
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->pauseButton:Landroid/widget/Button;
    const-string v0, "浮窗已关闭；无障碍服务仍连接。运行时请保持亮屏"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    :hide_done
    return-void
.end method

.method private dismissRewardAtWebBlank(Lcn/jim/wallethelper/WalletService$Snapshot;)Z
    .locals 8
    iget-object v0, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;
    iget v1, p0, Lcn/jim/wallethelper/WalletService;->screenW:I
    iget v2, p0, Lcn/jim/wallethelper/WalletService;->screenH:I
    iget v3, p0, Lcn/jim/wallethelper/WalletService;->rewardDismissAttempts:I
    mul-int/lit8 v3, v3, 0x3
    const/4 v4, 0x0
    :blank_loop
    invoke-static {v0, v1, v2, v3}, Lcn/jim/wallethelper/RewardDismissRules;->point(Ljava/util/List;III)[F
    move-result-object v5
    if-eqz v5, :blank_next
    const/4 v6, 0x0
    aget v6, v5, v6
    const/4 v7, 0x1
    aget v7, v5, v7
    invoke-direct {p0, v6, v7}, Lcn/jim/wallethelper/WalletService;->tapAt(FF)Z
    move-result v6
    if-eqz v6, :blank_next
    invoke-static {v5}, Lcn/jim/wallethelper/RewardDismissRules;->describe([F)Ljava/lang/String;
    move-result-object v5
    invoke-static {p0, v5}, Lcn/jim/wallethelper/LocalLog;->add(Landroid/content/Context;Ljava/lang/String;)V
    const/4 v6, 0x1
    return v6
    :blank_next
    add-int/lit8 v3, v3, 0x1
    add-int/lit8 v4, v4, 0x1
    const/4 v5, 0x3
    if-lt v4, v5, :blank_loop
    const/4 v6, 0x0
    return v6
.end method

.method private recovery()Lcn/jim/wallethelper/ReturnRecovery;
    .locals 1
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->returnRecovery:Lcn/jim/wallethelper/ReturnRecovery;
    if-nez v0, :done
    new-instance v0, Lcn/jim/wallethelper/ReturnRecovery;
    invoke-direct {v0}, Lcn/jim/wallethelper/ReturnRecovery;-><init>()V
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->returnRecovery:Lcn/jim/wallethelper/ReturnRecovery;
    :done
    return-object v0
.end method

.method private rememberCleanupTarget(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    .locals 4
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->collectNewTaskInstalls()V
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->installLedger:Lcn/jim/wallethelper/TaskInstallLedger;
    if-eqz v0, :observed_done
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;
    if-eqz v1, :observed_done
    iget-object v2, v1, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;
    iget v1, v1, Lcn/jim/wallethelper/TaskRules$Row;->section:I
    iget-object v3, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;
    invoke-virtual {v0, v1, v2, v3}, Lcn/jim/wallethelper/TaskInstallLedger;->observed(ILjava/lang/String;Ljava/lang/String;)V
    :observed_done
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->claimSubmitted:Z
    if-nez v0, :done
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->returningFromDownload:Z
    if-nez v0, :done
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;
    if-eqz v0, :done
    iget-object v1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;
    iget-object v3, p0, Lcn/jim/wallethelper/WalletService;->home:Ljava/lang/String;
    invoke-static {v1, v3}, Lcn/jim/wallethelper/ReturnRecovery;->eligible(Ljava/lang/String;Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :done
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->label(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->recovery()Lcn/jim/wallethelper/ReturnRecovery;
    move-result-object v0
    invoke-virtual {v0, v1, v2, v3}, Lcn/jim/wallethelper/ReturnRecovery;->remember(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :done
    return-void
.end method

.method private retryWalletReturn()V
    .locals 2
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->recovery()Lcn/jim/wallethelper/ReturnRecovery;
    move-result-object v0
    invoke-virtual {v0}, Lcn/jim/wallethelper/ReturnRecovery;->retryAllowed()Z
    move-result v1
    if-eqz v1, :failed
    const-string v0, "未确认回到钱包，自动重试切回（1/1）"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->returnToWallet()V
    return-void
    :failed
    const-string v0, "重试后仍未切回钱包，请手动切回后继续"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V
    return-void
.end method

.method private cleanupRecents(Lcn/jim/wallethelper/WalletService$Snapshot;)Z
    .locals 7
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->recovery()Lcn/jim/wallethelper/ReturnRecovery;
    move-result-object v0
    iget-object v1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->nodes:Ljava/util/List;
    iget v2, p0, Lcn/jim/wallethelper/WalletService;->screenW:I
    iget v3, p0, Lcn/jim/wallethelper/WalletService;->screenH:I
    iget-object v4, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J
    move-result-wide v5
    invoke-virtual/range {v0 .. v6}, Lcn/jim/wallethelper/ReturnRecovery;->next(Ljava/util/List;IILandroid/view/View;J)[F
    move-result-object v1
    if-eqz v1, :message
    const/4 v2, 0x0
    aget v2, v1, v2
    const/4 v3, 0x1
    aget v3, v1, v3
    const/4 v4, 0x2
    aget v4, v1, v4
    const/4 v5, 0x3
    aget v5, v1, v5
    invoke-direct {p0, v2, v3, v4, v5}, Lcn/jim/wallethelper/WalletService;->swipeTask(FFFF)Z
    move-result v1
    if-nez v1, :message
    invoke-virtual {v0}, Lcn/jim/wallethelper/ReturnRecovery;->failed()V
    :message
    iget-object v1, v0, Lcn/jim/wallethelper/ReturnRecovery;->message:Ljava/lang/String;
    if-eqz v1, :waiting
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    :waiting
    invoke-virtual {v0}, Lcn/jim/wallethelper/ReturnRecovery;->waiting()Z
    move-result v0
    return v0
.end method

.method private swipeTask(FFFF)Z
    .locals 6

    .line 1041
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 1042
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1043
    invoke-virtual {v1, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1044
    nop

    .line 1045
    new-instance p1, Landroid/accessibilityservice/GestureDescription$Builder;

    invoke-direct {p1}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    .line 1046
    new-instance p2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x190

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V

    invoke-virtual {p1, p2}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    move-result-object p1

    .line 1047
    invoke-virtual {p1}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    move-result-object p1

    .line 1048
    nop

    .line 1049
    nop

    .line 1044
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcn/jim/wallethelper/WalletService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    .line 1050
    move-result p1
    return p1
.end method

.method private guardWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z
    .locals 5
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;
    iget-object v1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->wallet:Ljava/lang/String;
    iget-boolean v3, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->outsideWalletWindow:Z
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->isStore(Ljava/lang/String;)Z
    move-result v4
    invoke-static {v0, v1, v2, v3, v4}, Lcn/jim/wallethelper/WalletGuard;->shouldReturn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    move-result v1
    if-eqz v1, :done
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->autoReturnPhase:Ljava/lang/String;
    const/4 v0, 0x0
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->returnRecovery:Lcn/jim/wallethelper/ReturnRecovery;
    const-string v0, "当前不是钱包，自动切回并恢复当前任务"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->returnToWallet()V
    const/4 v1, 0x1
    :done
    return v1
.end method

.method private refreshDisplayForReturn()V
    .locals 4
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->realDisplay()Landroid/util/DisplayMetrics;
    move-result-object v0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    if-lez v1, :done
    if-lez v2, :done
    iget v3, p0, Lcn/jim/wallethelper/WalletService;->screenW:I
    if-ne v1, v3, :update
    iget v3, p0, Lcn/jim/wallethelper/WalletService;->screenH:I
    if-eq v2, v3, :done
    :update
    iput v1, p0, Lcn/jim/wallethelper/WalletService;->screenW:I
    iput v2, p0, Lcn/jim/wallethelper/WalletService;->screenH:I
    const-string v0, "屏幕尺寸变化，已更新手势范围，继续原计时和任务"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    :done
    return-void
.end method

# Only section 2: a missing row in the current wallet list is retired, not searched globally.
.method private handleRefreshedDownload(Lcn/jim/wallethelper/WalletService$Snapshot;)Z
    .locals 6
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;
    if-eqz v0, :ignore
    iget v1, v0, Lcn/jim/wallethelper/TaskRules$Row;->section:I
    const/4 v2, 0x2
    if-ne v1, v2, :ignore
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;
    const-string v2, "VERIFY"
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :check_wallet
    const-string v2, "CLAIM_READY"
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :check_wallet
    const-string v2, "CLAIM"
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :ignore
    :check_wallet
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->isWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z
    move-result v1
    if-eqz v1, :ignore
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->currentRow(Lcn/jim/wallethelper/WalletService$Snapshot;)Lcn/jim/wallethelper/TaskRules$Row;
    move-result-object v1
    if-nez v1, :ignore
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J
    move-result-wide v1
    iget-wide v3, p0, Lcn/jim/wallethelper/WalletService;->phaseStarted:J
    sub-long/2addr v1, v3
    const-wide/16 v3, 0xbb8
    cmp-long v1, v1, v3
    if-ltz v1, :handled

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;
    move-result-object v1
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->explicitDownloadRewards:Ljava/util/Set;
    if-eqz v2, :refresh_unconfirmed
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    move-result v3
    if-eqz v3, :refresh_unconfirmed
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->missingUnconfirmed:Ljava/util/Set;
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    const-string v5, "下载体验奖励已通过弹窗确认，列表已刷新，继续新任务："
    goto :refresh_settled
    :refresh_unconfirmed
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->missingUnconfirmed:Ljava/util/Set;
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    const-string v5, "下载体验列表已刷新，缺少明确奖励证据，保留待核对并继续新任务："
    :refresh_settled
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->settled:Ljava/util/Set;
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->pending:Ljava/util/Set;
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    new-instance v2, Ljava/lang/StringBuilder;
    move-object v1, v5
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    iget-object v1, v0, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    const/4 v1, 0x0
    iput-object v1, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;
    iput-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->seeking:Z
    iput-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->claimSubmitted:Z
    iput-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->claimWaitAfterReturn:Z
    iput-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->claimLookupTried:Z
    iput v1, p0, Lcn/jim/wallethelper/WalletService;->stable:I
    iput v1, p0, Lcn/jim/wallethelper/WalletService;->pages:I
    const-string v0, ""
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->previousSignature:Ljava/lang/String;
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->claimProgress:Lcn/jim/wallethelper/ClaimProgress;
    invoke-virtual {v0}, Lcn/jim/wallethelper/ClaimProgress;->reset()V
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->taskLookup:Lcn/jim/wallethelper/TaskLookupProgress;
    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskLookupProgress;->reset()V
    const/4 v0, -0x1
    iput v0, p0, Lcn/jim/wallethelper/WalletService;->claimGestureId:I
    const-string v0, "SCAN"
    const-wide/16 v1, 0x2bc
    # A refreshed download row occupies the current viewport; collect it
    # before another top-to-bottom experience pass.
    const/4 v3, 0x1
    iput-boolean v3, p0, Lcn/jim/wallethelper/WalletService;->downloadPass:Z
    invoke-direct {p0, v0, v1, v2}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V
    :handled
    const/4 v0, 0x1
    return v0
    :ignore
    const/4 v0, 0x0
    return v0
.end method

.method private initInstallLedger()V
    .locals 1
    const/4 v0, 0x0
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->explicitDownloadRewards:Ljava/util/Set;
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->cleanupResume:Z
    new-instance v0, Lcn/jim/wallethelper/TaskInstallLedger;
    invoke-direct {v0, p0}, Lcn/jim/wallethelper/TaskInstallLedger;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->installLedger:Lcn/jim/wallethelper/TaskInstallLedger;
    invoke-static {v0}, Lcn/jim/wallethelper/InstallMonitor;->start(Lcn/jim/wallethelper/TaskInstallLedger;)V
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->finalCleanup:Z
    iput v0, p0, Lcn/jim/wallethelper/WalletService;->finalSweeps:I

    return-void
.end method

.method private logInstallLedger()V
    .locals 2
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->installLedger:Lcn/jim/wallethelper/TaskInstallLedger;
    if-eqz v0, :done
    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskInstallLedger;->takeMessage()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v0
    if-nez v0, :done
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    :done
    return-void
.end method

.method private recordTaskDownload(Lcn/jim/wallethelper/TaskRules$Row;)V
    .locals 3
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->installLedger:Lcn/jim/wallethelper/TaskInstallLedger;
    if-eqz v0, :done
    iget v1, p1, Lcn/jim/wallethelper/TaskRules$Row;->section:I
    iget-object v2, p1, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;
    invoke-virtual {v0, v1, v2}, Lcn/jim/wallethelper/TaskInstallLedger;->requested(ILjava/lang/String;)V
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->logInstallLedger()V
    :done
    return-void
.end method

.method private collectNewTaskInstalls()V
    .locals 1
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->installLedger:Lcn/jim/wallethelper/TaskInstallLedger;
    if-eqz v0, :done
    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskInstallLedger;->scan()V
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->logInstallLedger()V
    :done
    return-void
.end method

.method private finishOrRestart(Ljava/lang/String;)V
    .locals 7
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->rerunPending:Z
    if-eqz v0, :first_pass
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    return-void
    :first_pass
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->rerunPending:Z
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    new-instance v0, Lcn/jim/wallethelper/WalletRestart;
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->wallet:Ljava/lang/String;
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->walletLabel:Ljava/lang/String;
    iget-object v3, p0, Lcn/jim/wallethelper/WalletService;->home:Ljava/lang/String;
    iget v4, p0, Lcn/jim/wallethelper/WalletService;->screenW:I
    iget v5, p0, Lcn/jim/wallethelper/WalletService;->screenH:I
    invoke-direct/range {v0 .. v5}, Lcn/jim/wallethelper/WalletRestart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->walletRestart:Lcn/jim/wallethelper/WalletRestart;
    invoke-virtual {v0, p0}, Lcn/jim/wallethelper/WalletRestart;->begin(Landroid/accessibilityservice/AccessibilityService;)Z
    move-result v1
    iget-object v2, v0, Lcn/jim/wallethelper/WalletRestart;->message:Ljava/lang/String;
    if-eqz v2, :message_done
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    :message_done
    if-nez v1, :started
    const-string v0, "钱包自动重开未开始，请检查日志后手动运行"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    return-void
    :started
    const-string v0, "RESTART"
    const-wide/16 v1, 0x1f4
    invoke-direct {p0, v0, v1, v2}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V
    return-void
.end method

.method private restartStep(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    .locals 9
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->walletRestart:Lcn/jim/wallethelper/WalletRestart;
    if-eqz v0, :failed
    iget-object v1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->nodes:Ljava/util/List;
    iget-object v2, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;
    iget-object v3, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;
    iget-boolean v4, p0, Lcn/jim/wallethelper/WalletService;->restartCheck:Z
    if-eqz v4, :trace_done
    invoke-virtual {v0, v2}, Lcn/jim/wallethelper/WalletRestart;->trace(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v4
    if-eqz v4, :trace_done
    invoke-direct {p0, v4}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    :trace_done
    invoke-virtual {v0, p0, v1, v2, v3}, Lcn/jim/wallethelper/WalletRestart;->step(Landroid/accessibilityservice/AccessibilityService;Ljava/util/List;Ljava/lang/String;Landroid/view/View;)I
    move-result v1
    iget-object v2, v0, Lcn/jim/wallethelper/WalletRestart;->message:Ljava/lang/String;
    if-eqz v2, :message_done
    invoke-direct {p0, v2}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    :message_done
    const/4 v2, 0x1
    if-ne v1, v2, :maybe_swipe
    iget-boolean v2, p0, Lcn/jim/wallethelper/WalletService;->restartCheck:Z
    if-eqz v2, :restart_tasks
    const-string v0, "重开检查通过：钱包任务页已打开"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    return-void
    :restart_tasks
    const/4 v2, 0x0
    iput-boolean v2, p0, Lcn/jim/wallethelper/WalletService;->running:Z
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->startRun()V
    iget-boolean v2, p0, Lcn/jim/wallethelper/WalletService;->running:Z
    if-nez v2, :done
    const-string v0, "钱包任务页未能开始第二轮，请手动启动"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    return-void
    :maybe_swipe
    const/4 v2, 0x2
    if-ne v1, v2, :check_carousel
    goto :send_swipe
    :check_carousel
    const/4 v2, 0x3
    if-ne v1, v2, :maybe_fail
    :send_swipe
    iget-object v0, v0, Lcn/jim/wallethelper/WalletRestart;->swipePath:[F
    const/4 v1, 0x0
    aget v2, v0, v1
    const/4 v1, 0x1
    aget v3, v0, v1
    const/4 v1, 0x2
    aget v4, v0, v1
    const/4 v1, 0x3
    aget v5, v0, v1
    invoke-direct {p0, v2, v3, v4, v5}, Lcn/jim/wallethelper/WalletService;->swipeTask(FFFF)Z
    move-result v1
    if-eqz v1, :failed
    const-wide/16 v1, 0x12c
    invoke-direct {p0, v1, v2}, Lcn/jim/wallethelper/WalletService;->waitFor(J)V
    return-void
    :maybe_fail
    if-ltz v1, :failed
    const-wide/16 v1, 0x12c
    invoke-direct {p0, v1, v2}, Lcn/jim/wallethelper/WalletService;->waitFor(J)V
    return-void
    :failed
    const-string v0, "钱包自动重开或第二轮启动未完成，请检查日志"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    :done
    return-void
.end method

.method private finishWithUninstall(Ljava/lang/String;)V
    .locals 3
iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->rerunPending:Z
    if-nez v0, :all_passes_finished
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->finishOrRestart(Ljava/lang/String;)V
    return-void
    :all_passes_finished
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->cleanupResume:Z
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->installLedger:Lcn/jim/wallethelper/TaskInstallLedger;
    if-eqz v0, :no_cleanup
    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskInstallLedger;->prepare()I
    move-result v0
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->logInstallLedger()V
    if-eqz v0, :no_cleanup
    const-string v0, "UNINSTALL"
    const-wide/16 v1, 0x384
    invoke-direct {p0, v0, v1, v2}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V
    const-string v0, "第二轮结束，清理非次日新增应用"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    return-void
    :no_cleanup
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->beginVideo(Ljava/lang/String;)V
    return-void
.end method

.method private uninstallStep(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    .locals 6
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->installLedger:Lcn/jim/wallethelper/TaskInstallLedger;
    if-eqz v0, :missing
    iget-object v1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;
    iget-object v2, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J
    move-result-wide v3
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/jim/wallethelper/TaskInstallLedger;->step(Ljava/util/List;Ljava/lang/String;J)I
    move-result v5
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->logInstallLedger()V
    const/4 v1, -0x3
    if-ne v5, v1, :maybe_click
    iget-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->cleanupResume:Z
    if-eqz v1, :finish_cleanup
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->resumeAfterCleanup()V
    return-void
    :finish_cleanup

    iget-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->finalCleanup:Z
    if-eqz v1, :before_video_cleanup
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->afterVideoStep()V
    return-void
    :before_video_cleanup
    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskInstallLedger;->summary()Ljava/lang/String;
    move-result-object v1
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->beginVideo(Ljava/lang/String;)V
    return-void
    :maybe_click
    if-ltz v5, :done
    invoke-direct {p0, p1, v5}, Lcn/jim/wallethelper/WalletService;->click(Lcn/jim/wallethelper/WalletService$Snapshot;I)Z
    move-result v1
    if-nez v1, :done
    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskInstallLedger;->clickFailed()V
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->logInstallLedger()V
    :done
    return-void
    :missing
    const-string v0, "没有本轮安装记录，已结束"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    return-void
.end method

# Minimal ownership / input bridge. Soda never enters wallet task dispatch.
.method public enterExtraTool()V
    .locals 2
    const-string v0, "已切换到额外工具"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;
    if-eqz v0, :done
    const/16 v1, 0x8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :done
    return-void
.end method

.method public exitExtraTool()V
    .locals 2
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;
    if-eqz v0, :done
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :done
    return-void
.end method

.method public extraTap(FF)Z
    .locals 8
    new-instance v0, Landroid/graphics/Path;
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V
    new-instance v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    move-object v2, v0
    const-wide/16 v3, 0x0
    const-wide/16 v5, 0x50
    invoke-direct/range {v1 .. v6}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V
    new-instance v0, Landroid/accessibilityservice/GestureDescription$Builder;
    invoke-direct {v0}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;
    invoke-virtual {v0}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;
    move-result-object v0
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1, v1}, Landroid/accessibilityservice/AccessibilityService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z
    move-result v0
    return v0
.end method

.method private recordExplicitDownloadReward()V
    .locals 5
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->claimSubmitted:Z
    if-eqz v0, :done
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->installLedger:Lcn/jim/wallethelper/TaskInstallLedger;
    if-eqz v0, :done
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;
    if-eqz v2, :done
    iget v1, v2, Lcn/jim/wallethelper/TaskRules$Row;->section:I
    const/4 v3, 0x2
    if-ne v1, v3, :done
    iget-object v3, p0, Lcn/jim/wallethelper/WalletService;->explicitDownloadRewards:Ljava/util/Set;
    if-nez v3, :evidence_ready
    new-instance v3, Ljava/util/HashSet;
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V
    iput-object v3, p0, Lcn/jim/wallethelper/WalletService;->explicitDownloadRewards:Ljava/util/Set;
    :evidence_ready
    invoke-virtual {v2}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;
    move-result-object v4
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    iget-object v2, v2, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;
    const-string v3, ""
    const/4 v4, 0x1
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/jim/wallethelper/TaskInstallLedger;->finished(ILjava/lang/String;Ljava/lang/String;Z)V
    :done
    return-void
.end method

.method private maybeCompletedCleanup(Lcn/jim/wallethelper/WalletService$Snapshot;)Z
    .locals 7
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->isWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z
    move-result v0
    if-eqz v0, :none
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->installLedger:Lcn/jim/wallethelper/TaskInstallLedger;
    if-eqz v0, :none
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->rows(Lcn/jim/wallethelper/WalletService$Snapshot;)Ljava/util/List;
    move-result-object v5
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    move-result-object v5
    :row_loop
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    move-result v6
    if-eqz v6, :queue
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v6
    check-cast v6, Lcn/jim/wallethelper/TaskRules$Row;
    iget v1, v6, Lcn/jim/wallethelper/TaskRules$Row;->section:I
    iget-object v2, v6, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;
    iget-object v3, v6, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;
    const/4 v4, 0x0
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/jim/wallethelper/TaskInstallLedger;->finished(ILjava/lang/String;Ljava/lang/String;Z)V
    goto :row_loop
    :queue
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->logInstallLedger()V
    :none
    const/4 v0, 0x0
    return v0
.end method

.method private resumeAfterCleanup()V
    .locals 4
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->cleanupResume:Z
    :launch_start
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    move-result-object v0
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->wallet:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    move-result-object v0
    if-eqz v0, :failed
    const/high16 v1, 0x10000000
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :launch_end
    .catch Ljava/lang/Exception; {:launch_start .. :launch_end} :launch_error
    const-string v0, "RETURN"
    const-wide/16 v1, 0x12c
    invoke-direct {p0, v0, v1, v2}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V
    const-string v0, "清理结束，返回钱包继续核对任务"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    return-void
    :launch_error
    move-exception v0
    :failed
    const-string v0, "清理结束，未能打开钱包，请手动返回后继续"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    return-void
.end method

.method public checkWalletRestart()V
    .locals 3
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->running:Z
    if-eqz v0, :check_idle
    const-string v0, "任务正在运行，跳过重开检查"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    return-void
    :check_idle
    const-string v0, "开始检查钱包重开"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    const-string v0, "com.hihonor.wallet"
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->wallet:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->label(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->walletLabel:Ljava/lang/String;
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->realDisplay()Landroid/util/DisplayMetrics;
    move-result-object v0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    iput v1, p0, Lcn/jim/wallethelper/WalletService;->screenW:I
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    iput v1, p0, Lcn/jim/wallethelper/WalletService;->screenH:I
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->restartCheck:Z
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->running:Z
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->keepScreen(Z)V
    const-string v0, "仅检查关闭钱包与重开任务页"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->finishOrRestart(Ljava/lang/String;)V
    return-void
.end method

.method public startWalletVideo()V
    .locals 3
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->running:Z
    if-eqz v0, :idle
    const-string v0, "任务正在运行，请先停止后再单独运行视频"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    return-void
    :idle
    const-string v0, "开始单独运行视频任务"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->initInstallLedger()V
    invoke-virtual {p0}, Lcn/jim/wallethelper/WalletService;->showOverlay()V
    const-string v0, "com.hihonor.wallet"
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->wallet:Ljava/lang/String;
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->videoOnly:Z
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->running:Z
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->keepScreen(Z)V
    invoke-static {p0}, Lcn/jim/wallethelper/WalletEntry;->open(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :opened
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    return-void
    :opened
    const-string v0, "视频任务结束"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->beginVideo(Ljava/lang/String;)V
    return-void
.end method

.method private beginVideo(Ljava/lang/String;)V
    .locals 3
    iput-object p1, p0, Lcn/jim/wallethelper/WalletService;->videoFinishMessage:Ljava/lang/String;
    new-instance v0, Lcn/jim/wallethelper/WalletVideo;
    invoke-direct {v0}, Lcn/jim/wallethelper/WalletVideo;-><init>()V
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->videoTask:Lcn/jim/wallethelper/WalletVideo;
    const-string v0, "VIDEO"
    const-wide/16 v1, 0x3e8
    invoke-direct {p0, v0, v1, v2}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V
    const-string v0, "开始视频模块：定位卡片，按实际奖励状态领取"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    return-void
.end method

.method private videoStep(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    .locals 6
    invoke-static {p0}, Lcn/jim/wallethelper/VideoEnvironment;->prepare(Landroid/accessibilityservice/AccessibilityService;)I
    move-result v0
    if-ltz v0, :environment_failed
    if-nez v0, :environment_ready
    const-wide/16 v0, 0x12c
    invoke-direct {p0, v0, v1}, Lcn/jim/wallethelper/WalletService;->waitFor(J)V
    return-void
    :environment_failed
    sget-object v0, Lcn/jim/wallethelper/VideoEnvironment;->error:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->finishVideo(Ljava/lang/String;)V
    return-void
    :environment_ready

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->videoTask:Lcn/jim/wallethelper/WalletVideo;
    if-eqz v0, :missing
    iget-object v1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->nodes:Ljava/util/List;
    iget-object v2, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;
    iget v3, p0, Lcn/jim/wallethelper/WalletService;->screenW:I
    iget v4, p0, Lcn/jim/wallethelper/WalletService;->screenH:I
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/jim/wallethelper/WalletVideo;->step(Ljava/util/List;Ljava/lang/String;II)I
    move-result v5
    iget-object v1, v0, Lcn/jim/wallethelper/WalletVideo;->message:Ljava/lang/String;
    if-eqz v1, :noted
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    :noted
    if-ltz v5, :failed
    const/4 v1, 0x1
    if-ne v5, v1, :scroll
    iget-object v1, v0, Lcn/jim/wallethelper/WalletVideo;->summary:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->finishVideo(Ljava/lang/String;)V
    return-void
    :scroll
    const/4 v1, 0x2
    if-ne v5, v1, :click
    int-to-float v3, v3
    int-to-float v4, v4
    const v1, 0x3f4ccccd
    mul-float v2, v3, v1
    mul-float v1, v4, v1
    const v3, 0x3eb33333
    mul-float v4, v4, v3
    invoke-direct {p0, v2, v1, v2, v4}, Lcn/jim/wallethelper/WalletService;->swipe(FFFF)V
    goto :wait
    :click
    const/4 v1, 0x3
    if-ne v5, v1, :open
    iget v1, v0, Lcn/jim/wallethelper/WalletVideo;->index:I
    invoke-direct {p0, p1, v1}, Lcn/jim/wallethelper/WalletService;->click(Lcn/jim/wallethelper/WalletService$Snapshot;I)Z
    move-result v1
    if-eqz v1, :click_failed
    goto :wait
    :open
    const/4 v1, 0x4
    if-ne v5, v1, :dismiss
    invoke-static {p0}, Lcn/jim/wallethelper/WalletEntry;->open(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :wait
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->finishVideo(Ljava/lang/String;)V
    return-void
    :dismiss
    const/4 v1, 0x5
    if-ne v5, v1, :wait
    int-to-float v3, v3
    int-to-float v4, v4
    const v1, 0x3f666666
    mul-float v3, v3, v1
    const v1, 0x3e19999a
    mul-float v4, v4, v1
    invoke-direct {p0, v3, v4}, Lcn/jim/wallethelper/WalletService;->tapAt(FF)Z
    :wait
    const-wide/16 v1, 0x12c
    invoke-direct {p0, v1, v2}, Lcn/jim/wallethelper/WalletService;->waitFor(J)V
    return-void
    :failed
    iget-object v1, v0, Lcn/jim/wallethelper/WalletVideo;->summary:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->finishVideo(Ljava/lang/String;)V
    return-void
    :click_failed
    const-string v1, "视频按钮点击未送达，已停止，请检查浮窗是否遮挡"
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->finishVideo(Ljava/lang/String;)V
    return-void
    :missing
    const-string v1, "视频任务状态丢失，已停止"
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->finishVideo(Ljava/lang/String;)V
    return-void
.end method

.method private endInstallTracking()V
    .locals 1
    invoke-static {}, Lcn/jim/wallethelper/InstallMonitor;->stop()V
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->running:Z
    if-eqz v0, :done
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->installLedger:Lcn/jim/wallethelper/TaskInstallLedger;
    if-eqz v0, :done
    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskInstallLedger;->forceScan()V
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->logInstallLedger()V
    :done
    return-void
.end method

.method private finishVideo(Ljava/lang/String;)V
    .locals 3
    iput-object p1, p0, Lcn/jim/wallethelper/WalletService;->finalVideoMessage:Ljava/lang/String;
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->finalCleanup:Z
    invoke-static {p0}, Lcn/jim/wallethelper/VideoEnvironment;->restore(Landroid/accessibilityservice/AccessibilityService;)V
    const-string v0, "VIDEO_CLEANUP"
    const-wide/16 v1, 0x1f4
    invoke-direct {p0, v0, v1, v2}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V
    const-string v0, "视频结束，恢复设置后补扫新增应用"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    return-void
.end method

.method private afterVideoStep()V
    .locals 4
    invoke-static {p0}, Lcn/jim/wallethelper/VideoEnvironment;->restorationState(Landroid/content/Context;)I
    move-result v0
    if-ltz v0, :restore_failed
    if-eqz v0, :restored
    const-wide/16 v0, 0x1f4
    invoke-direct {p0, v0, v1}, Lcn/jim/wallethelper/WalletService;->waitFor(J)V
    return-void
    :restored
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->installLedger:Lcn/jim/wallethelper/TaskInstallLedger;
    if-eqz v0, :no_ledger
    iget v1, p0, Lcn/jim/wallethelper/WalletService;->finalSweeps:I
    const/4 v2, 0x3
    if-ge v1, v2, :finish
    add-int/lit8 v1, v1, 0x1
    iput v1, p0, Lcn/jim/wallethelper/WalletService;->finalSweeps:I
    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskInstallLedger;->prepare()I
    move-result v1
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->logInstallLedger()V
    if-eqz v1, :finish
    const-string v1, "UNINSTALL"
    const-wide/16 v2, 0x384
    invoke-direct {p0, v1, v2, v3}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V
    return-void
    :finish
    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskInstallLedger;->summary()Ljava/lang/String;
    move-result-object v0
    new-instance v1, Ljava/lang/StringBuilder;
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    const-string v0, "；"
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->finalVideoMessage:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    return-void
    :no_ledger
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->finalVideoMessage:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    return-void
    :restore_failed
    const-string v0, "设置恢复未完成，已停止；新增应用记录保留，下次清理"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    return-void
.end method

.method public scheduledBusy()Z
    .locals 1
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->running:Z
    return v0
.end method

.method public startScheduledTask()Z
    .locals 1
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->running:Z
    if-nez v0, :done
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->startRun()V
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->running:Z
    if-eqz v0, :done
    invoke-virtual {p0}, Lcn/jim/wallethelper/WalletService;->showOverlay()V
    :done
    return v0
.end method

.method public stopAutoFromTile()V
    .locals 1
    const-string v0, "已关闭自动任务"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    return-void
.end method

.method public schedulePaused()Z
    .locals 1
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->paused:Z
    return v0
.end method
.method public resumeScheduled()V
    .locals 1
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->paused:Z
    if-eqz v0, :done
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->togglePause()V
    :done
    return-void
.end method
.method public stopForNewDay()V
    .locals 1
    const-string v0, "结束跨日或中断流程，重新检查任务"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    return-void
.end method
