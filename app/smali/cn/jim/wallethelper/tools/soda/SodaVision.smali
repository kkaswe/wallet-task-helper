.class public final Lcn/jim/wallethelper/tools/soda/SodaVision;
.super Ljava/lang/Object;
.source "SodaVision.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;,
        Lcn/jim/wallethelper/tools/soda/SodaVision$Result;
    }
.end annotation


# instance fields
.field private busy:Z

.field private volatile closed:Z

.field private final header:Lcn/jim/wallethelper/tools/soda/HeaderVision;

.field private final live:Lcn/jim/wallethelper/tools/soda/LiveVision;

.field private final main:Landroid/os/Handler;

.field private final popup:Lcn/jim/wallethelper/tools/soda/PopupVision;

.field private final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision;->main:Landroid/os/Handler;

    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision;->worker:Ljava/util/concurrent/ExecutorService;

    .line 29
    new-instance v0, Lcn/jim/wallethelper/tools/soda/HeaderVision;

    const-string v1, "success"

    invoke-static {p1, v1}, Lcn/jim/wallethelper/tools/soda/SodaVision;->t(Landroid/content/Context;Ljava/lang/String;)Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    move-result-object v1

    const-string v2, "waiting"

    invoke-static {p1, v2}, Lcn/jim/wallethelper/tools/soda/SodaVision;->t(Landroid/content/Context;Ljava/lang/String;)Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    move-result-object v2

    const-string v3, "close"

    invoke-static {p1, v3}, Lcn/jim/wallethelper/tools/soda/SodaVision;->t(Landroid/content/Context;Ljava/lang/String;)Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcn/jim/wallethelper/tools/soda/HeaderVision;-><init>(Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;)V

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision;->header:Lcn/jim/wallethelper/tools/soda/HeaderVision;

    new-instance v0, Lcn/jim/wallethelper/tools/soda/PopupVision;

    const-string v1, "claim"

    invoke-static {p1, v1}, Lcn/jim/wallethelper/tools/soda/SodaVision;->t(Landroid/content/Context;Ljava/lang/String;)Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    move-result-object v5

    const-string v1, "free"

    invoke-static {p1, v1}, Lcn/jim/wallethelper/tools/soda/SodaVision;->t(Landroid/content/Context;Ljava/lang/String;)Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    move-result-object v6

    const-string v1, "again"

    invoke-static {p1, v1}, Lcn/jim/wallethelper/tools/soda/SodaVision;->t(Landroid/content/Context;Ljava/lang/String;)Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    move-result-object v7

    const-string v1, "exit"

    invoke-static {p1, v1}, Lcn/jim/wallethelper/tools/soda/SodaVision;->t(Landroid/content/Context;Ljava/lang/String;)Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    move-result-object v8

    const-string v1, "claim-coin"

    invoke-static {p1, v1}, Lcn/jim/wallethelper/tools/soda/SodaVision;->t(Landroid/content/Context;Ljava/lang/String;)Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    move-result-object v9

    const-string v1, "prompt-coin"

    invoke-static {p1, v1}, Lcn/jim/wallethelper/tools/soda/SodaVision;->t(Landroid/content/Context;Ljava/lang/String;)Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    move-result-object v10

    const-string v1, "exit-coin"

    invoke-static {p1, v1}, Lcn/jim/wallethelper/tools/soda/SodaVision;->t(Landroid/content/Context;Ljava/lang/String;)Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    move-result-object v11

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcn/jim/wallethelper/tools/soda/PopupVision;-><init>(Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;)V

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision;->popup:Lcn/jim/wallethelper/tools/soda/PopupVision;

    new-instance v0, Lcn/jim/wallethelper/tools/soda/LiveVision;

    const-string v1, "live-close"

    invoke-static {p1, v1}, Lcn/jim/wallethelper/tools/soda/SodaVision;->t(Landroid/content/Context;Ljava/lang/String;)Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    move-result-object v1

    const-string v2, "live-more"

    invoke-static {p1, v2}, Lcn/jim/wallethelper/tools/soda/SodaVision;->t(Landroid/content/Context;Ljava/lang/String;)Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcn/jim/wallethelper/tools/soda/LiveVision;-><init>(Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;)V

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision;->live:Lcn/jim/wallethelper/tools/soda/LiveVision;

    return-void
.end method

.method static synthetic access$0(Lcn/jim/wallethelper/tools/soda/SodaVision;Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision;->busy:Z

    return-void
.end method

.method static synthetic access$1(Lcn/jim/wallethelper/tools/soda/SodaVision;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision;->closed:Z

    return p0
.end method

.method static synthetic access$2(Lcn/jim/wallethelper/tools/soda/SodaVision;Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;Lcn/jim/wallethelper/tools/soda/SodaVision$Result;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcn/jim/wallethelper/tools/soda/SodaVision;->finish(Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;Lcn/jim/wallethelper/tools/soda/SodaVision$Result;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcn/jim/wallethelper/tools/soda/SodaVision;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision;->worker:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$4(Lcn/jim/wallethelper/tools/soda/SodaVision;)Lcn/jim/wallethelper/tools/soda/HeaderVision;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision;->header:Lcn/jim/wallethelper/tools/soda/HeaderVision;

    return-object p0
.end method

.method static synthetic access$5(Lcn/jim/wallethelper/tools/soda/SodaVision;)Lcn/jim/wallethelper/tools/soda/PopupVision;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision;->popup:Lcn/jim/wallethelper/tools/soda/PopupVision;

    return-object p0
.end method

.method static synthetic access$6(Lcn/jim/wallethelper/tools/soda/SodaVision;)Lcn/jim/wallethelper/tools/soda/LiveVision;
    .locals 0

    .line 25
    iget-object p0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision;->live:Lcn/jim/wallethelper/tools/soda/LiveVision;

    return-object p0
.end method

.method private finish(Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;Lcn/jim/wallethelper/tools/soda/SodaVision$Result;Ljava/lang/String;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision;->main:Landroid/os/Handler;

    new-instance v1, Lcn/jim/wallethelper/tools/soda/SodaVision$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/jim/wallethelper/tools/soda/SodaVision$1;-><init>(Lcn/jim/wallethelper/tools/soda/SodaVision;Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;Lcn/jim/wallethelper/tools/soda/SodaVision$Result;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static t(Landroid/content/Context;Ljava/lang/String;)Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "soda/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".png"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 32
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    new-array v10, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    new-instance v0, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;

    invoke-direct {v0, v8, v9, v10}, Lcn/jim/wallethelper/tools/soda/HeaderVision$Template;-><init>(II[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision;->closed:Z

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision;->worker:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision;->main:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public request(Landroid/accessibilityservice/AccessibilityService;Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;)V
    .locals 11

    .line 38
    iget-boolean v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision;->closed:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision;->busy:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 39
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    const-string p1, "\u622a\u56fe\u8bc6\u522b\u9700\u8981Android 11\u53ca\u4ee5\u4e0a"

    invoke-interface {p2, v2, p1}, Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;->ready(Lcn/jim/wallethelper/tools/soda/SodaVision$Result;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_1
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 41
    if-nez v0, :cond_2

    const-string p1, "\u622a\u56fe\u524d\u65e0\u6cd5\u786e\u8ba4\u5e94\u7528\u7a97\u53e3"

    invoke-interface {p2, v2, p1}, Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;->ready(Lcn/jim/wallethelper/tools/soda/SodaVision$Result;Ljava/lang/String;)V

    return-void

    .line 42
    :cond_2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v8

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision;->busy:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 44
    :try_start_0
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityService;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcn/jim/wallethelper/tools/soda/SodaVision$2;

    move-object v3, v1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v3 .. v10}, Lcn/jim/wallethelper/tools/soda/SodaVision$2;-><init>(Lcn/jim/wallethelper/tools/soda/SodaVision;Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;Landroid/accessibilityservice/AccessibilityService;Ljava/lang/String;IJ)V

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1}, Landroid/accessibilityservice/AccessibilityService;->takeScreenshot(ILjava/util/concurrent/Executor;Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    :catch_0
    move-exception p1

    const-string p1, "\u622a\u56fe\u4e0d\u53ef\u7528\uff0c\u8bf7\u5173\u95ed\u518d\u5f00\u542f\u65e0\u969c\u788d\u670d\u52a1"

    invoke-direct {p0, p2, v2, p1}, Lcn/jim/wallethelper/tools/soda/SodaVision;->finish(Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;Lcn/jim/wallethelper/tools/soda/SodaVision$Result;Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 38
    :cond_3
    :goto_1
    return-void
.end method
