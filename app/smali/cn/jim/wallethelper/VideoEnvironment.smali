.class public final Lcn/jim/wallethelper/VideoEnvironment;
.super Ljava/lang/Object;
.source "VideoEnvironment.java"


# static fields
.field public static error:Ljava/lang/String;

.field private static ready:Z

.field private static final recovery:Landroid/os/Handler;

.field private static restoring:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/jim/wallethelper/VideoEnvironment;->recovery:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Landroid/media/AudioManager;
    .registers 1

    .line 10
    invoke-static {p0}, Lcn/jim/wallethelper/VideoEnvironment;->audio(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Z)Z
    .registers 1

    .line 10
    sput-boolean p0, Lcn/jim/wallethelper/VideoEnvironment;->restoring:Z

    return p0
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 10
    invoke-static {p0, p1}, Lcn/jim/wallethelper/VideoEnvironment;->log(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .registers 1

    .line 10
    sget-object v0, Lcn/jim/wallethelper/VideoEnvironment;->recovery:Landroid/os/Handler;

    return-object v0
.end method

.method private static audio(Landroid/content/Context;)Landroid/media/AudioManager;
    .registers 2

    .line 16
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method

.method private static log(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89c6\u9891\u8bbe\u7f6e\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jim/wallethelper/LocalLog;->add(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 15
    const-string v0, "video_environment"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static prepare(Landroid/accessibilityservice/AccessibilityService;)I
    .registers 8

    .line 19
    const-string v0, "pending"

    sget-boolean v1, Lcn/jim/wallethelper/VideoEnvironment;->ready:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    return v2

    .line 21
    :cond_8
    :try_start_8
    invoke-static {p0}, Lcn/jim/wallethelper/VideoEnvironment;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 22
    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 23
    invoke-static {p0}, Lcn/jim/wallethelper/VideoEnvironment;->restore(Landroid/accessibilityservice/AccessibilityService;)V

    .line 24
    return v3

    .line 26
    :cond_17
    invoke-static {p0}, Lcn/jim/wallethelper/VideoEnvironment;->audio(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    .line 27
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v6, "volume"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "wifi"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 28
    invoke-static {p0}, Lcn/jim/wallethelper/VideoEnvironment;->audio(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v5, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 29
    invoke-static {p0}, Lcn/jim/wallethelper/VideoEnvironment;->audio(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_6d

    .line 30
    sput-boolean v2, Lcn/jim/wallethelper/VideoEnvironment;->ready:Z

    const/4 v0, 0x0

    sput-object v0, Lcn/jim/wallethelper/VideoEnvironment;->error:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u4fdd\u5b58\u539f\u5a92\u4f53\u97f3\u91cf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff0c\u73b0\u8bbe\u4e3a 0\uff1bWi-Fi \u672a\u64cd\u4f5c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jim/wallethelper/VideoEnvironment;->log(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    .line 29
    :cond_6d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u5a92\u4f53\u97f3\u91cf\u672a\u5f52\u96f6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u65e0\u6cd5\u4fdd\u5b58\u5a92\u4f53\u97f3\u91cf"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_7d} :catch_7d

    .line 31
    :catch_7d
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u89c6\u9891\u51c6\u5907\u5931\u8d25\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jim/wallethelper/VideoEnvironment;->error:Ljava/lang/String;

    sget-object v0, Lcn/jim/wallethelper/VideoEnvironment;->error:Ljava/lang/String;

    invoke-static {p0, v0}, Lcn/jim/wallethelper/VideoEnvironment;->log(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static restorationState(Landroid/content/Context;)I
    .registers 4

    .line 33
    sget-boolean v0, Lcn/jim/wallethelper/VideoEnvironment;->restoring:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    goto :goto_19

    :cond_6
    invoke-static {p0}, Lcn/jim/wallethelper/VideoEnvironment;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pending"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 p0, -0x1

    goto :goto_19

    :cond_15
    invoke-static {p0}, Lcn/jim/wallethelper/WifiRetry;->state(Landroid/content/Context;)I

    move-result p0

    :goto_19
    return p0
.end method

.method public static restore(Landroid/accessibilityservice/AccessibilityService;)V
    .registers 9

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcn/jim/wallethelper/VideoEnvironment;->ready:Z

    .line 36
    invoke-static {p0}, Lcn/jim/wallethelper/WifiRetry;->restore(Landroid/accessibilityservice/AccessibilityService;)V

    .line 37
    sget-boolean v1, Lcn/jim/wallethelper/VideoEnvironment;->restoring:Z

    if-eqz v1, :cond_b

    return-void

    .line 38
    :cond_b
    invoke-static {p0}, Lcn/jim/wallethelper/VideoEnvironment;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 39
    const-string v1, "pending"

    invoke-interface {v5, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_18

    return-void

    .line 40
    :cond_18
    const/4 v1, 0x1

    sput-boolean v1, Lcn/jim/wallethelper/VideoEnvironment;->restoring:Z

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 42
    const-string v1, "volume"

    invoke-interface {v5, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u6062\u590d\u5a92\u4f53\u97f3\u91cf\uff0c\u76ee\u6807="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcn/jim/wallethelper/VideoEnvironment;->log(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    new-instance v2, Lcn/jim/wallethelper/VideoEnvironment$1;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcn/jim/wallethelper/VideoEnvironment$1;-><init>(Landroid/accessibilityservice/AccessibilityService;ILandroid/content/SharedPreferences;J)V

    .line 70
    invoke-virtual {v2}, Lcn/jim/wallethelper/VideoEnvironment$1;->run()V

    .line 71
    return-void
.end method
