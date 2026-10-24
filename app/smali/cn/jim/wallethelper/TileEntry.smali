.class public final Lcn/jim/wallethelper/TileEntry;
.super Ljava/lang/Object;
.source "TileEntry.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/app/Activity;)V
    .locals 10

    .line 9
    const/4 v0, 0x1

    :try_start_1
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "android.graphics.drawable.Icon"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "ic_auto_toggle"

    const-string v5, "drawable"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 11
    const-string v4, "createWithResource"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p0, v3}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "requestAddTileService"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/ComponentName;

    aput-object v9, v7, v8

    const-class v8, Ljava/lang/CharSequence;

    aput-object v8, v7, v0

    aput-object v2, v7, v5

    const-class v2, Ljava/util/concurrent/Executor;

    const/4 v5, 0x3

    aput-object v2, v7, v5

    const-class v2, Ljava/util/function/Consumer;

    const/4 v5, 0x4

    aput-object v2, v7, v5

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcn/jim/wallethelper/WalletTileService;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "\u94b1\u5305\u81ea\u52a8\u4efb\u52a1"

    new-instance v6, Lcn/jim/wallethelper/TileEntry$1;

    invoke-direct {v6, p0}, Lcn/jim/wallethelper/TileEntry$1;-><init>(Landroid/app/Activity;)V

    new-instance v7, Lcn/jim/wallethelper/TileEntry$2;

    invoke-direct {v7, p0}, Lcn/jim/wallethelper/TileEntry$2;-><init>(Landroid/app/Activity;)V

    filled-new-array {v4, v5, v3, v6, v7}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_77} :catch_78

    .line 13
    goto :goto_82

    :catch_78
    move-exception v1

    const-string v1, "\u8bf7\u4e0b\u62c9\u5feb\u6377\u8bbe\u7f6e\uff0c\u70b9\u7f16\u8f91\uff0c\u5c06\u94b1\u5305\u81ea\u52a8\u4efb\u52a1\u62d6\u5165\u5f00\u5173\u533a"

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_82
    return-void
.end method
