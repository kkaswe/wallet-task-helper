.class public final Lcn/jim/wallethelper/WalletEntry;
.super Ljava/lang/Object;
.source "WalletEntry.java"


# static fields
.field public static lastRoute:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static open(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .line 19
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.hihonor.wallet"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 20
    if-nez v0, :cond_f

    const-string p0, "\u672a\u627e\u5230\u8363\u8000\u94b1\u5305\uff0c\u8bf7\u786e\u8ba4\u5df2\u5b89\u88c5\u4e14\u672a\u505c\u7528"

    return-object p0

    .line 21
    :cond_f
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_18

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 22
    :cond_18
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_50

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v1, v2, :cond_50

    .line 24
    const-string v1, "setPendingIntentCreatorBackgroundActivityStartMode"

    invoke-static {v1}, Lcn/jim/wallethelper/WalletEntry;->options(Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 25
    nop

    .line 27
    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 25
    const/16 v2, 0x8a

    const/high16 v3, 0x54000000

    invoke-static {p0, v2, v0, v3, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 28
    const-string v1, "setPendingIntentBackgroundActivityStartMode"

    invoke-static {v1}, Lcn/jim/wallethelper/WalletEntry;->options(Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 29
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 30
    const-string p0, "PendingIntent/IntentSender"

    sput-object p0, Lcn/jim/wallethelper/WalletEntry;->lastRoute:Ljava/lang/String;

    .line 31
    goto :goto_58

    .line 22
    :cond_50
    move-object v2, p0

    .line 32
    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 33
    const-string p0, "Activity"

    sput-object p0, Lcn/jim/wallethelper/WalletEntry;->lastRoute:Ljava/lang/String;
    :try_end_58
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_58} :catch_a7
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_58} :catch_7e
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_58} :catch_5a

    .line 35
    :goto_58
    const/4 p0, 0x0

    return-object p0

    .line 41
    :catch_5a
    move-exception v0

    move-object p0, v0

    .line 42
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6682\u65f6\u65e0\u6cd5\u6253\u5f00\u8363\u8000\u94b1\u5305\uff08"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\uff09\uff0c\u8bf7\u4ece\u684c\u9762\u6253\u5f00"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 38
    :catch_7e
    move-exception v0

    move-object p0, v0

    .line 39
    nop

    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_8b

    check-cast p0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 40
    :cond_8b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u94b1\u5305\u540e\u53f0\u542f\u52a8\u53c2\u6570\u4e0d\u53ef\u7528\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 36
    :catch_a7
    move-exception v0

    .line 37
    const-string p0, "\u94b1\u5305\u542f\u52a8\u5165\u53e3\u5df2\u5931\u6548\uff0c\u8bf7\u91cd\u8bd5"

    return-object p0
.end method

.method private static options(Ljava/lang/String;)Landroid/app/ActivityOptions;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 47
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

    .line 48
    const-class v2, Landroid/app/ActivityOptions;

    const-string v4, "MODE_BACKGROUND_ACTIVITY_START_ALLOWED"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 49
    const-class v3, Landroid/app/ActivityOptions;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v3, p0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-object v0
.end method
