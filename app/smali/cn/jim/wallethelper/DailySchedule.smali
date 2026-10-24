.class public final Lcn/jim/wallethelper/DailySchedule;
.super Ljava/lang/Object;
.source "DailySchedule.java"


# static fields
.field private static final ACTION:Ljava/lang/String; = "cn.jim.wallethelper.DAILY_0700"

.field private static final SCHEMA:Ljava/lang/String; = "wallet-schedule-3"

.field private static attached:Z

.field private static generation:I

.field private static final handler:Landroid/os/Handler;

.field private static opening:Z

.field private static restoreRetries:I

.field private static waitingRestore:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcn/jim/wallethelper/DailySchedule;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .line 9
    sput-boolean p0, Lcn/jim/wallethelper/DailySchedule;->waitingRestore:Z

    return p0
.end method

.method static synthetic access$100()I
    .registers 1

    .line 9
    sget v0, Lcn/jim/wallethelper/DailySchedule;->generation:I

    return v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1

    .line 9
    sput-boolean p0, Lcn/jim/wallethelper/DailySchedule;->opening:Z

    return p0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;)V
    .registers 2

    .line 9
    invoke-static {p0, p1}, Lcn/jim/wallethelper/DailySchedule;->notifyUser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;)Z
    .registers 1

    .line 9
    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->unlocked(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 3

    .line 9
    invoke-static {p0, p1, p2}, Lcn/jim/wallethelper/DailySchedule;->done(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z
    .registers 2

    .line 9
    invoke-static {p0, p1}, Lcn/jim/wallethelper/DailySchedule;->hasText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 1

    .line 9
    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->clickSavings(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800()Landroid/os/Handler;
    .registers 1

    .line 9
    sget-object v0, Lcn/jim/wallethelper/DailySchedule;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private static alarm(Landroid/content/Context;)Landroid/app/AlarmManager;
    .registers 2

    .line 21
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    return-object p0
.end method

.method public static attach(Landroid/content/Context;)V
    .registers 9

    .line 49
    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->ensure(Landroid/content/Context;)V

    .line 50
    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    const-string v1, ""

    const-string v2, "schema"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "wallet-schedule-3"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pending"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 53
    const-string v0, "\u8ba1\u5212\u7248\u672c\u5df2\u66f4\u65b0\uff0c\u4fdd\u7559\u6bcf\u65e5\u8fd0\u884c\u8bb0\u5f55"

    invoke-static {p0, v0}, Lcn/jim/wallethelper/LocalLog;->add(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    :cond_2d
    sget-boolean v0, Lcn/jim/wallethelper/DailySchedule;->attached:Z

    if-nez v0, :cond_7d

    .line 56
    new-instance v0, Lcn/jim/wallethelper/DailySchedule$1;

    invoke-direct {v0, p0}, Lcn/jim/wallethelper/DailySchedule$1;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 58
    :try_start_3d
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-lt v2, v3, :cond_6d

    const-class v2, Landroid/content/Context;

    const-string v3, "registerReceiver"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/content/BroadcastReceiver;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Landroid/content/IntentFilter;

    aput-object v6, v5, v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v0, v1, v5}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_74

    :cond_6d
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_74
    sput-boolean v4, Lcn/jim/wallethelper/DailySchedule;->attached:Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_76} :catch_77

    goto :goto_7d

    :catch_77
    move-exception v0

    const-string v0, "\u89e3\u9501\u540e\u7eed\u6267\u884c\u76d1\u542c\u4e0d\u53ef\u7528"

    invoke-static {p0, v0}, Lcn/jim/wallethelper/LocalLog;->add(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    :cond_7d
    :goto_7d
    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->attempt(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public static attempt(Landroid/content/Context;)V
    .registers 8

    .line 71
    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->enabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c4

    sget-boolean v0, Lcn/jim/wallethelper/DailySchedule;->opening:Z

    if-nez v0, :cond_c4

    invoke-static {p0}, Lcn/jim/wallethelper/RunLifecycle;->held(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_c4

    .line 72
    :cond_12
    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    const-string v2, "pending"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {}, Lcn/jim/wallethelper/DailySchedule;->day()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_3d
    return-void

    .line 74
    :cond_3e
    sget-object v2, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;

    .line 75
    const/4 v0, 0x0

    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Lcn/jim/wallethelper/WalletService;->scheduledBusy()Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string v1, "\u89e3\u9501\u8ba1\u5212\uff1a\u5df2\u6709\u4efb\u52a1\u8fd0\u884c\uff0c\u4ec5\u8df3\u8fc7\u672c\u6b21\u542f\u52a8"

    invoke-static {p0, v1, v0}, Lcn/jim/wallethelper/DailySchedule;->done(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    .line 76
    :cond_4f
    if-eqz v2, :cond_b8

    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->unlocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_59

    move-object v3, p0

    goto :goto_b9

    .line 77
    :cond_59
    invoke-static {p0}, Lcn/jim/wallethelper/VideoEnvironment;->restorationState(Landroid/content/Context;)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_8c

    .line 78
    sget-boolean v0, Lcn/jim/wallethelper/DailySchedule;->waitingRestore:Z

    if-nez v0, :cond_82

    sget v0, Lcn/jim/wallethelper/DailySchedule;->restoreRetries:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcn/jim/wallethelper/DailySchedule;->restoreRetries:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_82

    .line 79
    sput-boolean v3, Lcn/jim/wallethelper/DailySchedule;->waitingRestore:Z

    sget v0, Lcn/jim/wallethelper/DailySchedule;->generation:I

    .line 80
    invoke-static {v2}, Lcn/jim/wallethelper/VideoEnvironment;->restore(Landroid/accessibilityservice/AccessibilityService;)V

    .line 81
    sget-object v1, Lcn/jim/wallethelper/DailySchedule;->handler:Landroid/os/Handler;

    new-instance v2, Lcn/jim/wallethelper/DailySchedule$2;

    invoke-direct {v2, v0, p0}, Lcn/jim/wallethelper/DailySchedule$2;-><init>(ILandroid/content/Context;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    goto :goto_8b

    :cond_82
    sget-boolean v0, Lcn/jim/wallethelper/DailySchedule;->waitingRestore:Z

    if-nez v0, :cond_8b

    const-string v0, "\u5a92\u4f53\u97f3\u91cf\u6062\u590d\u672a\u5b8c\u6210\uff0c\u4fdd\u7559\u8ba1\u5212\uff0c\u7b49\u5f85\u4e0b\u6b21\u89e3\u9501\u91cd\u8bd5"

    invoke-static {p0, v0}, Lcn/jim/wallethelper/DailySchedule;->notifyUser(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    :cond_8b
    :goto_8b
    return-void

    .line 85
    :cond_8c
    sput v0, Lcn/jim/wallethelper/DailySchedule;->restoreRetries:I

    .line 86
    sput-boolean v3, Lcn/jim/wallethelper/DailySchedule;->opening:Z

    invoke-static {v2}, Lcn/jim/wallethelper/WalletEntry;->open(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 87
    if-eqz v1, :cond_9c

    sput-boolean v0, Lcn/jim/wallethelper/DailySchedule;->opening:Z

    invoke-static {p0, v1}, Lcn/jim/wallethelper/DailySchedule;->notifyUser(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_9c
    sget v0, Lcn/jim/wallethelper/DailySchedule;->generation:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcn/jim/wallethelper/DailySchedule;->generation:I

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x7530

    add-long v4, v3, v5

    .line 90
    sget-object v6, Lcn/jim/wallethelper/DailySchedule;->handler:Landroid/os/Handler;

    new-instance v0, Lcn/jim/wallethelper/DailySchedule$3;

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcn/jim/wallethelper/DailySchedule$3;-><init>(ILcn/jim/wallethelper/WalletService;Landroid/content/Context;J)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    return-void

    .line 76
    :cond_b8
    move-object v3, p0

    :goto_b9
    if-nez v2, :cond_be

    const-string p0, "\u8bf7\u5f00\u542f\u65e0\u969c\u788d\u670d\u52a1\uff0c\u518d\u6253\u5f00\u52a9\u624b\u7ee7\u7eed\u4eca\u65e5\u8ba1\u5212"

    goto :goto_c0

    :cond_be
    const-string p0, "\u8bf7\u89e3\u9501\u624b\u673a\uff0c\u52a9\u624b\u4f1a\u7ee7\u7eed\u4eca\u65e5\u89e3\u9501\u8ba1\u5212"

    :goto_c0
    invoke-static {v3, p0}, Lcn/jim/wallethelper/DailySchedule;->notifyUser(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_c4
    :goto_c4
    return-void
.end method

.method public static cancelOpening(Landroid/content/Context;)V
    .registers 3

    .line 17
    sget-boolean v0, Lcn/jim/wallethelper/DailySchedule;->opening:Z

    if-eqz v0, :cond_1a

    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pending"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "\u81ea\u52a8\u542f\u52a8\u5df2\u53d6\u6d88\uff0c\u4eca\u65e5\u53ef\u5728\u4e0b\u6b21\u89e3\u9501\u540e\u91cd\u8bd5"

    invoke-static {p0, v0}, Lcn/jim/wallethelper/LocalLog;->add(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1a
    const/4 p0, 0x0

    sput-boolean p0, Lcn/jim/wallethelper/DailySchedule;->opening:Z

    sget p0, Lcn/jim/wallethelper/DailySchedule;->generation:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcn/jim/wallethelper/DailySchedule;->generation:I

    return-void
.end method

.method private static clickAncestor(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 4

    .line 126
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    .line 127
    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-eqz p0, :cond_31

    const/16 v2, 0x8

    if-ge v1, v2, :cond_31

    .line 128
    nop

    .line 130
    :try_start_d
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_20

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->performAction(I)Z

    move-result v2
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_2c

    if-eqz v2, :cond_20

    .line 132
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 130
    const/4 p0, 0x1

    return p0

    .line 131
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParent()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_2c

    .line 132
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 133
    nop

    .line 127
    add-int/lit8 v1, v1, 0x1

    move-object p0, v2

    goto :goto_6

    .line 132
    :catchall_2c
    move-exception v0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    throw v0

    .line 135
    :cond_31
    if-eqz p0, :cond_36

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 136
    :cond_36
    return v0
.end method

.method private static clickSavings(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .registers 6

    .line 119
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_d
    const-string v1, "\u7701\u94b1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 120
    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->clickAncestor(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v0

    if-eqz v0, :cond_23

    return v1

    .line 122
    :cond_23
    const/4 v0, 0x0

    move v2, v0

    :goto_25
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_43

    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_40

    :try_start_31
    invoke-static {v3}, Lcn/jim/wallethelper/DailySchedule;->clickSavings(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v4
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_3b

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    if-eqz v4, :cond_40

    return v1

    :catchall_3b
    move-exception p0

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    throw p0

    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 123
    :cond_43
    return v0
.end method

.method public static completed(Landroid/content/Context;)V
    .registers 3

    .line 69
    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->cancelOpening(Landroid/content/Context;)V

    const-string v0, "\u4eca\u65e5\u4efb\u52a1\u5df2\u5b8c\u6210\uff0c\u672c\u65e5\u4e0d\u518d\u81ea\u52a8\u542f\u52a8"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcn/jim/wallethelper/DailySchedule;->done(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method private static day()Ljava/lang/String;
    .registers 3

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static done(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 5

    .line 65
    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pending"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 66
    if-eqz p2, :cond_19

    const-string p2, "last"

    invoke-static {}, Lcn/jim/wallethelper/DailySchedule;->day()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    :cond_19
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p0, p1}, Lcn/jim/wallethelper/LocalLog;->add(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcn/jim/wallethelper/ResidentService;->refresh()V

    .line 68
    return-void
.end method

.method public static enabled(Landroid/content/Context;)Z
    .registers 3

    .line 24
    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "enabled"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static ensure(Landroid/content/Context;)V
    .registers 3

    .line 31
    :try_start_0
    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->alarm(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->pi(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    move-exception v0

    .line 32
    :goto_d
    invoke-static {p0}, Lcn/jim/wallethelper/ResidentService;->request(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public static exact(Landroid/content/Context;)Z
    .registers 5

    .line 22
    const/4 v0, 0x0

    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_23

    const-class v1, Landroid/app/AlarmManager;

    const-string v2, "canScheduleExactAlarms"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->alarm(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object p0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_21} :catch_25

    if-eqz p0, :cond_24

    :cond_23
    const/4 v0, 0x1

    :cond_24
    return v0

    :catch_25
    move-exception p0

    return v0
.end method

.method private static hasText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z
    .registers 7

    .line 114
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_a

    move-object v0, v1

    goto :goto_e

    :cond_a
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_e
    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_48

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1c

    goto :goto_20

    :cond_1c
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_20
    invoke-virtual {p1, v1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_48

    .line 115
    :cond_27
    const/4 v0, 0x0

    move v1, v0

    :goto_29
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_47

    invoke-virtual {p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    if-eqz v3, :cond_44

    :try_start_35
    invoke-static {v3, p1}, Lcn/jim/wallethelper/DailySchedule;->hasText(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;)Z

    move-result v4
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_3f

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    if-eqz v4, :cond_44

    return v2

    :catchall_3f
    move-exception p0

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    throw p0

    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 116
    :cond_47
    return v0

    .line 114
    :cond_48
    :goto_48
    return v2
.end method

.method public static next(J)J
    .registers 2

    .line 20
    invoke-static {p0, p1}, Lcn/jim/wallethelper/ScheduleTime;->next(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static notifyUser(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5b9a\u65f6\u8ba1\u5212\u5f85\u5904\u7406\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/jim/wallethelper/LocalLog;->add(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public static onUnlocked(Landroid/content/Context;)V
    .registers 7

    .line 41
    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->enabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->unlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_4d

    .line 42
    :cond_d
    sget-object v0, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;

    invoke-static {p0, v0}, Lcn/jim/wallethelper/RunLifecycle;->onUnlock(Landroid/content/Context;Lcn/jim/wallethelper/WalletService;)I

    move-result v0

    .line 43
    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    return-void

    .line 44
    :cond_17
    const/4 v2, 0x2

    if-eq v0, v2, :cond_31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v4, "last"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcn/jim/wallethelper/UnlockPolicy;->due(ZJLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    return-void

    .line 45
    :cond_31
    const/4 v0, 0x0

    sput v0, Lcn/jim/wallethelper/DailySchedule;->restoreRetries:I

    .line 46
    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pending"

    invoke-static {}, Lcn/jim/wallethelper/DailySchedule;->day()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->attempt(Landroid/content/Context;)V

    .line 47
    return-void

    .line 41
    :cond_4d
    :goto_4d
    return-void
.end method

.method private static p(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 18
    const-string v0, "daily_schedule"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static pi(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 4

    .line 23
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/jim/wallethelper/ScheduleReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "cn.jim.wallethelper.DAILY_0700"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x90

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static receive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 2

    .line 62
    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->ensure(Landroid/content/Context;)V

    return-void
.end method

.method public static setEnabled(Landroid/content/Context;Z)V
    .registers 4

    .line 26
    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pending"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 27
    if-nez p1, :cond_2b

    const/4 p1, 0x0

    sput-boolean p1, Lcn/jim/wallethelper/DailySchedule;->opening:Z

    sget p1, Lcn/jim/wallethelper/DailySchedule;->generation:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcn/jim/wallethelper/DailySchedule;->generation:I

    sget-object p1, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;

    if-eqz p1, :cond_2b

    sget-object p1, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;

    invoke-virtual {p1}, Lcn/jim/wallethelper/WalletService;->stopAutoFromTile()V

    .line 28
    :cond_2b
    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->ensure(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public static status(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 35
    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->enabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string p0, "\u81ea\u52a8\u4efb\u52a1\u5df2\u5173\u95ed"

    return-object p0

    .line 36
    :cond_9
    invoke-static {}, Lcn/jim/wallethelper/ResidentService;->active()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "\u65e0\u969c\u788d\u89e3\u9501\u76d1\u542c\u5df2\u8fde\u63a5"

    goto :goto_14

    :cond_12
    const-string v0, "\u8bf7\u5f00\u542f\u65e0\u969c\u788d\u670d\u52a1"

    .line 37
    :goto_14
    invoke-static {}, Lcn/jim/wallethelper/DailySchedule;->day()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "last"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string p0, "\u4eca\u65e5\u81ea\u52a8\u8ba1\u5212\u5df2\u5904\u7406"

    goto :goto_46

    :cond_2d
    invoke-static {}, Lcn/jim/wallethelper/DailySchedule;->day()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "pending"

    invoke-interface {p0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_44

    const-string p0, "\u4eca\u65e5\u89e3\u9501\u5df2\u89e6\u53d1\uff0c\u7b49\u5f85\u8fdb\u5165\u4efb\u52a1\u9875"

    goto :goto_46

    :cond_44
    const-string p0, "\u7b49\u5f85\u89e3\u9501\u89e6\u53d1"

    .line 38
    :goto_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6bcf\u5929 05:00 \u540e\u9996\u6b21\u89e3\u9501\u8fd0\u884c\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;

    if-nez v0, :cond_65

    const-string v4, "\n\u8bf7\u5f00\u542f\u65e0\u969c\u788d\u670d\u52a1"

    :cond_65
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static unlocked(Landroid/content/Context;)Z
    .registers 2

    .line 63
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method
