.class public final Lcn/jim/wallethelper/WifiRetry;
.super Ljava/lang/Object;
.source "WifiRetry.java"


# static fields
.field private static active:Z

.field private static deadline:J

.field public static error:Ljava/lang/String;

.field private static generation:I

.field private static final handler:Landroid/os/Handler;

.field private static lastClick:J

.field private static opened:Z

.field private static restoring:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcn/jim/wallethelper/WifiRetry;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .line 11
    sget v0, Lcn/jim/wallethelper/WifiRetry;->generation:I

    return v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .registers 1

    .line 11
    invoke-static {p0}, Lcn/jim/wallethelper/WifiRetry;->wifi(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 1

    .line 11
    invoke-static {p0}, Lcn/jim/wallethelper/WifiRetry;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$302(Z)Z
    .registers 1

    .line 11
    sput-boolean p0, Lcn/jim/wallethelper/WifiRetry;->restoring:Z

    return p0
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 11
    invoke-static {p0, p1}, Lcn/jim/wallethelper/WifiRetry;->log(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Z
    .registers 1

    .line 11
    sget-boolean v0, Lcn/jim/wallethelper/WifiRetry;->opened:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .registers 1

    .line 11
    sput-boolean p0, Lcn/jim/wallethelper/WifiRetry;->opened:Z

    return p0
.end method

.method static synthetic access$600(Landroid/accessibilityservice/AccessibilityService;Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    invoke-static {p0, p1}, Lcn/jim/wallethelper/WifiRetry;->toggle(Landroid/accessibilityservice/AccessibilityService;Z)V

    return-void
.end method

.method static synthetic access$700()Landroid/os/Handler;
    .registers 1

    .line 11
    sget-object v0, Lcn/jim/wallethelper/WifiRetry;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static advance(Landroid/accessibilityservice/AccessibilityService;)I
    .registers 7

    .line 32
    sget-boolean v0, Lcn/jim/wallethelper/WifiRetry;->active:Z

    const/4 v1, -0x1

    if-nez v0, :cond_a

    const-string p0, "\u7f51\u7edc\u91cd\u8bd5\u5df2\u53d6\u6d88"

    sput-object p0, Lcn/jim/wallethelper/WifiRetry;->error:Ljava/lang/String;

    return v1

    .line 34
    :cond_a
    const/4 v0, 0x0

    :try_start_b
    invoke-static {p0}, Lcn/jim/wallethelper/WifiRetry;->wifi(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    sput-boolean v0, Lcn/jim/wallethelper/WifiRetry;->active:Z

    const-string v2, "\u5df2\u786e\u8ba4 Wi-Fi \u5173\u95ed\uff0c\u8fd4\u56de\u94b1\u5305\u6838\u5bf9\u6b21\u6570\u540e\u91cd\u8bd5"

    invoke-static {p0, v2}, Lcn/jim/wallethelper/WifiRetry;->log(Landroid/content/Context;Ljava/lang/String;)V

    return v3

    .line 35
    :cond_1e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcn/jim/wallethelper/WifiRetry;->deadline:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2c

    .line 36
    invoke-static {p0, v0}, Lcn/jim/wallethelper/WifiRetry;->toggle(Landroid/accessibilityservice/AccessibilityService;Z)V

    return v0

    .line 35
    :cond_2c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "\u5173\u95ed Wi-Fi \u8d85\u65f6\uff0c\u505c\u6b62\u91cd\u8bd5"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_34} :catch_34

    .line 37
    :catch_34
    move-exception v2

    sput-boolean v0, Lcn/jim/wallethelper/WifiRetry;->active:Z

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jim/wallethelper/WifiRetry;->error:Ljava/lang/String;

    sget-object v0, Lcn/jim/wallethelper/WifiRetry;->error:Ljava/lang/String;

    invoke-static {p0, v0}, Lcn/jim/wallethelper/WifiRetry;->log(Landroid/content/Context;Ljava/lang/String;)V

    return v1
.end method

.method public static begin(Landroid/accessibilityservice/AccessibilityService;)Z
    .registers 10

    .line 21
    sget-boolean v0, Lcn/jim/wallethelper/WifiRetry;->active:Z

    const/4 v1, 0x0

    if-nez v0, :cond_80

    sget-boolean v0, Lcn/jim/wallethelper/WifiRetry;->restoring:Z

    if-nez v0, :cond_80

    invoke-static {p0}, Lcn/jim/wallethelper/WifiRetry;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pending"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_80

    .line 23
    :cond_16
    :try_start_16
    invoke-static {p0}, Lcn/jim/wallethelper/WifiRetry;->wifi(Landroid/content/Context;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 24
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eq v0, v3, :cond_2d

    if-ne v0, v4, :cond_25

    goto :goto_2d

    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Wi-Fi \u6b63\u5728\u5207\u6362"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_2d
    :goto_2d
    invoke-static {p0}, Lcn/jim/wallethelper/WifiRetry;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "original"

    if-ne v0, v3, :cond_3b

    move v7, v4

    goto :goto_3c

    :cond_3b
    move v7, v1

    :goto_3c
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 26
    sget v2, Lcn/jim/wallethelper/WifiRetry;->generation:I

    add-int/2addr v2, v4

    sput v2, Lcn/jim/wallethelper/WifiRetry;->generation:I

    sput-boolean v1, Lcn/jim/wallethelper/WifiRetry;->opened:Z

    const-wide/16 v5, 0x0

    sput-wide v5, Lcn/jim/wallethelper/WifiRetry;->lastClick:J

    sput-boolean v4, Lcn/jim/wallethelper/WifiRetry;->active:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x4e20

    add-long/2addr v5, v7

    sput-wide v5, Lcn/jim/wallethelper/WifiRetry;->deadline:J

    .line 27
    if-ne v0, v3, :cond_65

    const-string v0, "\u8d85\u65f6\u540e\u5173\u95ed Wi-Fi\uff0c\u4ec5\u91cd\u8bd5\u4e00\u6b21"

    goto :goto_67

    :cond_65
    const-string v0, "Wi-Fi \u539f\u672c\u5173\u95ed\uff0c\u4ec5\u91cd\u65b0\u52a0\u8f7d\u89c6\u9891\u4e00\u6b21"

    :goto_67
    invoke-static {p0, v0}, Lcn/jim/wallethelper/WifiRetry;->log(Landroid/content/Context;Ljava/lang/String;)V

    return v4

    .line 25
    :cond_6b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "\u65e0\u6cd5\u4fdd\u5b58 Wi-Fi \u539f\u72b6\u6001"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_73} :catch_73

    .line 28
    :catch_73
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jim/wallethelper/WifiRetry;->error:Ljava/lang/String;

    sget-object v0, Lcn/jim/wallethelper/WifiRetry;->error:Ljava/lang/String;

    invoke-static {p0, v0}, Lcn/jim/wallethelper/WifiRetry;->log(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 21
    :cond_80
    :goto_80
    const-string p0, "\u4e0a\u6b21 Wi-Fi \u6062\u590d\u5c1a\u672a\u5b8c\u6210"

    sput-object p0, Lcn/jim/wallethelper/WifiRetry;->error:Ljava/lang/String;

    return v1
.end method

.method private static clickSwitch(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z
    .registers 9

    .line 80
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 82
    :cond_4
    :try_start_4
    invoke-static {p0}, Lcn/jim/wallethelper/WifiRetry;->id(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string v2, "com.android.settings:id/switch_widget"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4a

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 84
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v1

    if-eq v1, p1, :cond_49

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcn/jim/wallethelper/WifiRetry;->lastClick:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x708

    cmp-long p1, v3, v5

    if-lez p1, :cond_49

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcn/jim/wallethelper/WifiRetry;->lastClick:J

    .line 86
    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result p0

    return p0

    .line 88
    :cond_49
    return v2

    .line 90
    :cond_4a
    move v1, v0

    :goto_4b
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_6d

    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_55} :catch_6e

    if-eqz v3, :cond_6a

    :try_start_57
    invoke-static {v3, p1}, Lcn/jim/wallethelper/WifiRetry;->clickSwitch(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z

    move-result v4
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_65

    if-eqz v4, :cond_61

    :try_start_5d
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    return v2

    :cond_61
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_6a

    :catchall_65
    move-exception p0

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    throw p0
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_6a} :catch_6e

    :cond_6a
    :goto_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 91
    :cond_6d
    return v0

    .line 92
    :catch_6e
    move-exception p0

    return v0
.end method

.method private static hasWifiLabel(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 6

    .line 95
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 96
    :cond_4
    const-string v1, "com.android.settings:id/switch_text"

    invoke-static {p0}, Lcn/jim/wallethelper/WifiRetry;->id(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_1a

    const-string v1, ""

    goto :goto_1e

    :cond_1a
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_1e
    const-string v3, "WLAN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    return v2

    .line 97
    :cond_27
    move v1, v0

    :goto_28
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_46

    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_43

    :try_start_34
    invoke-static {v3}, Lcn/jim/wallethelper/WifiRetry;->hasWifiLabel(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v4
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_3e

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    if-eqz v4, :cond_43

    return v2

    :catchall_3e
    move-exception p0

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    throw p0

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 98
    :cond_46
    return v0
.end method

.method private static id(Landroid/view/accessibility/AccessibilityNodeInfo;)Ljava/lang/String;
    .registers 5

    .line 77
    :try_start_0
    const-class v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    const-string v1, "getViewIdResourceName"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    const-string p0, ""

    return-object p0
.end method

.method private static launchSettings(Landroid/content/Context;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 64
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_3c

    .line 65
    const-string v1, "setPendingIntentCreatorBackgroundActivityStartMode"

    invoke-static {v1}, Lcn/jim/wallethelper/WifiRetry;->options(Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 66
    const/high16 v2, 0x54000000

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    const/16 v3, 0x8d

    invoke-static {p0, v3, v0, v2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const-string v0, "setPendingIntentBackgroundActivityStartMode"

    invoke-static {v0}, Lcn/jim/wallethelper/WifiRetry;->options(Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 68
    goto :goto_40

    :cond_3c
    move-object v1, p0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 69
    :goto_40
    const/4 p0, 0x1

    sput-boolean p0, Lcn/jim/wallethelper/WifiRetry;->opened:Z

    .line 70
    return-void
.end method

.method private static log(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89c6\u9891\u7f51\u7edc\u91cd\u8bd5\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jim/wallethelper/LocalLog;->add(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static options(Ljava/lang/String;)Landroid/app/ActivityOptions;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    const-class v0, Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "makeBasic"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityOptions;

    .line 73
    const-class v2, Landroid/app/ActivityOptions;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v2, p0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    const-class v1, Landroid/app/ActivityOptions;

    const-string v2, "MODE_BACKGROUND_ACTIVITY_START_ALLOWED"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-object v0
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 17
    const-string v0, "video_wifi_retry"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static restore(Landroid/accessibilityservice/AccessibilityService;)V
    .registers 10

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcn/jim/wallethelper/WifiRetry;->active:Z

    .line 42
    sget-boolean v1, Lcn/jim/wallethelper/WifiRetry;->restoring:Z

    if-nez v1, :cond_3f

    invoke-static {p0}, Lcn/jim/wallethelper/WifiRetry;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pending"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_3f

    .line 43
    :cond_14
    const/4 v1, 0x1

    sput-boolean v1, Lcn/jim/wallethelper/WifiRetry;->restoring:Z

    sput-boolean v0, Lcn/jim/wallethelper/WifiRetry;->opened:Z

    const-wide/16 v2, 0x0

    sput-wide v2, Lcn/jim/wallethelper/WifiRetry;->lastClick:J

    .line 44
    sget v2, Lcn/jim/wallethelper/WifiRetry;->generation:I

    add-int/lit8 v4, v2, 0x1

    sput v4, Lcn/jim/wallethelper/WifiRetry;->generation:I

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v5, 0x4e20

    add-long v7, v1, v5

    .line 46
    invoke-static {p0}, Lcn/jim/wallethelper/WifiRetry;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "original"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 47
    new-instance v3, Lcn/jim/wallethelper/WifiRetry$1;

    move-object v6, p0

    invoke-direct/range {v3 .. v8}, Lcn/jim/wallethelper/WifiRetry$1;-><init>(IZLandroid/accessibilityservice/AccessibilityService;J)V

    .line 60
    invoke-virtual {v3}, Lcn/jim/wallethelper/WifiRetry$1;->run()V

    .line 61
    return-void

    .line 42
    :cond_3f
    :goto_3f
    return-void
.end method

.method public static state(Landroid/content/Context;)I
    .registers 3

    .line 39
    sget-boolean v0, Lcn/jim/wallethelper/WifiRetry;->restoring:Z

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    goto :goto_16

    :cond_6
    invoke-static {p0}, Lcn/jim/wallethelper/WifiRetry;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pending"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, -0x1

    goto :goto_16

    :cond_15
    move p0, v1

    :goto_16
    return p0
.end method

.method private static toggle(Landroid/accessibilityservice/AccessibilityService;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_28

    :try_start_6
    const-string v1, "com.android.settings"

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_11

    const-string v2, ""

    goto :goto_15

    :cond_11
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v2

    :goto_15
    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-static {v0}, Lcn/jim/wallethelper/WifiRetry;->hasWifiLabel(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 104
    const/4 p0, 0x1

    sput-boolean p0, Lcn/jim/wallethelper/WifiRetry;->opened:Z

    invoke-static {v0, p1}, Lcn/jim/wallethelper/WifiRetry;->clickSwitch(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z

    goto :goto_2f

    .line 105
    :cond_28
    sget-boolean p1, Lcn/jim/wallethelper/WifiRetry;->opened:Z

    if-nez p1, :cond_2f

    invoke-static {p0}, Lcn/jim/wallethelper/WifiRetry;->launchSettings(Landroid/content/Context;)V
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_35

    .line 106
    :cond_2f
    :goto_2f
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 107
    :cond_34
    return-void

    .line 106
    :catchall_35
    move-exception p0

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_3b
    throw p0
.end method

.method private static wifi(Landroid/content/Context;)Landroid/net/wifi/WifiManager;
    .registers 2

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    return-object p0
.end method
