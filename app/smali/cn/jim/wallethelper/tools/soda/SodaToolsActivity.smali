.class public final Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;
.super Landroid/app/Activity;
.source "SodaToolsActivity.java"


# instance fields
.field private count:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->open(Z)V

    return-void
.end method

.method static synthetic access$1(Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->diagnostics()V

    return-void
.end method

.method public static addEntry(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 4

    .line 15
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "\u989d\u5916\u5de5\u5177 \u00b7 \u6c7d\u6c34\u97f3\u4e50"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 16
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    new-instance p1, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$1;

    invoke-direct {p1, p0}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    return-void
.end method

.method private button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3

    .line 31
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p1, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$7;

    invoke-direct {p1, p0, p3}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$7;-><init>(Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private diagnostics()V
    .locals 4

    .line 58
    const-string v0, "soda_tool"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "diagnostic"

    const-string v2, "\u6682\u65e0\u6c7d\u6c34\u8bca\u65ad\u3002\u8bf7\u5728\u5e7f\u544a\u9875\u9762\u70b9\u51fb\u7ad6\u6392\u6d6e\u7a97\u7684\u8bca\u65ad\u3002"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u6c7d\u6c34\u97f3\u4e50\u8bca\u65ad"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u5173\u95ed"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$8;

    invoke-direct {v2, p0, v0}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$8;-><init>(Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;Ljava/lang/String;)V

    const-string v0, "\u5bfc\u51fa"

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 60
    return-void
.end method

.method private open(Z)V
    .locals 7

    .line 33
    const-string v0, "\u8bf7\u8f93\u5165 0\u20149999 \u6b21"

    .line 34
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 35
    :try_start_0
    iget-object v2, p0, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->count:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    if-ltz v2, :cond_2

    const/16 v3, 0x270f

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0, v1}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "count_v2"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 38
    if-nez v2, :cond_1

    invoke-static {}, Lcn/jim/wallethelper/tools/soda/SodaController;->stop()V

    const-string p1, "\u5df2\u8bbe\u7f6e\u4e3a 0 \u6b21\uff0c\u4e0d\u6267\u884c\u5e7f\u544a\u4efb\u52a1"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 39
    :cond_1
    sget-object v0, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;

    if-nez v0, :cond_4

    const-string p1, "\u8bf7\u5148\u5728\u94b1\u5305\u52a9\u624b\u9996\u9875\u5f00\u542f\u65e0\u969c\u788d\u670d\u52a1"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 36
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 35
    :catch_0
    move-exception p1

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 34
    :cond_3
    const/16 v2, 0x32

    .line 42
    :cond_4
    invoke-virtual {p0}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 44
    invoke-virtual {v0, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_b

    .line 47
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_7

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "\u672a\u627e\u5230\u5df2\u5b89\u88c5\u7684\u6c7d\u6c34\u97f3\u4e50"

    goto :goto_2

    :cond_6
    const-string p1, "\u53d1\u73b0\u591a\u4e2a\u6c7d\u6c34\u97f3\u4e50\u5165\u53e3\uff0c\u8bf7\u5148\u4fdd\u7559\u4e00\u4e2a\u5165\u53e3"

    :goto_2
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 48
    :cond_7
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 49
    if-nez v0, :cond_8

    const-string p1, "\u6c7d\u6c34\u97f3\u4e50\u6ca1\u6709\u53ef\u6253\u5f00\u7684\u5165\u53e3"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->toast(Ljava/lang/String;)V

    return-void

    .line 51
    :cond_8
    if-eqz p1, :cond_9

    :try_start_1
    sget-object p1, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;

    invoke-static {p1, v1, v2}, Lcn/jim/wallethelper/tools/soda/SodaController;->start(Lcn/jim/wallethelper/WalletService;Ljava/lang/String;I)V

    goto :goto_3

    .line 52
    :cond_9
    sget-object p1, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;

    if-eqz p1, :cond_a

    invoke-static {}, Lcn/jim/wallethelper/tools/soda/SodaController;->stop()V

    sget-object p1, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;

    invoke-virtual {p1}, Lcn/jim/wallethelper/WalletService;->enterExtraTool()V

    sget-object p1, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;

    invoke-virtual {p1}, Lcn/jim/wallethelper/WalletService;->exitExtraTool()V

    .line 53
    :cond_a
    :goto_3
    invoke-virtual {p0, v0}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    goto :goto_4

    :catch_1
    move-exception p1

    invoke-static {}, Lcn/jim/wallethelper/tools/soda/SodaController;->stop()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6253\u5f00\u5931\u8d25\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->toast(Ljava/lang/String;)V

    .line 55
    :goto_4
    return-void

    .line 44
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 45
    invoke-virtual {v3, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u6c7d\u6c34\u97f3\u4e50"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_c
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private toast(Ljava/lang/String;)V
    .locals 1

    .line 56
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    new-instance p1, Landroid/widget/ScrollView;

    invoke-direct {p1, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x18

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->setContentView(Landroid/view/View;)V

    .line 22
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "\u989d\u5916\u5de5\u5177 / \u6c7d\u6c34\u97f3\u4e50"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 23
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6253\u5f00\u6c7d\u6c34\u97f3\u4e50\u540e\uff0c\u8fdb\u5165\u514d\u8d39\u542c\u7684\u5e7f\u544a\u9875\u9762\u3002\u652f\u6301\u65e0\u969c\u788d\u6587\u5b57\u4e0e\u672c\u673a\u622a\u56fe\u8bc6\u522b\u3002\u9996\u6b21\u5347\u7ea7\u540e\u8bf7\u5173\u95ed\u518d\u5f00\u542f\u65e0\u969c\u788d\u670d\u52a1\u3002\u52a9\u624b\u68c0\u67e5\u53f3\u4e0a\u89d2\uff1a\u6709\u5012\u8ba1\u65f6\u5219\u7b49\u5f85\uff1b\u65e0\u5012\u8ba1\u65f6\u6216\u9886\u53d6\u6210\u529f\u65f6\u70b9\u5173\u95ed\u3002\u9886\u53d6\u6210\u529f\u540e\u7684\u5929\u6570\u798f\u5229\u5f39\u7a97\u4f1a\u70b9\u51fb\u9886\u53d6\u3002\n\n\u8fde\u7eed\u89c2\u770b\u8fbe\u5230\u8bbe\u5b9a\u6b21\u6570\u540e\u9000\u51fa\uff1b\u4e0b\u4e00\u6761\u5165\u53e3\u4e0d\u660e\u786e\u65f6\u7b49\u5f85\u4f60\u624b\u52a8\u6253\u5f00\u3002\u94b1\u5305\u548c\u6b64\u5de5\u5177\u53ea\u80fd\u8fd0\u884c\u4e00\u4e2a\uff0c\u5207\u6362\u65f6\u505c\u6b62\u53e6\u4e00\u9879\u3002\n\n\u4e0d\u4f1a\u70b9\u51fb\u5e7f\u544a\u4e2d\u7684\u4e0b\u8f7d\u3001\u8d2d\u4e70\u6216\u7533\u8bf7\u6309\u94ae\u3002"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 24
    new-instance p1, Landroid/widget/EditText;

    invoke-direct {p1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->count:Landroid/widget/EditText;

    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->count:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->count:Landroid/widget/EditText;

    const-string v1, "\u672c\u6b21\u5e7f\u544a\u6570\uff080\u20149999\uff0c0\u4e0d\u6267\u884c\uff09"

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->count:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "count_v2"

    const/16 v3, 0x32

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->count:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 25
    new-instance p1, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$2;

    invoke-direct {p1, p0}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$2;-><init>(Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;)V

    const-string v1, "\u6253\u5f00\u6c7d\u6c34\u97f3\u4e50"

    invoke-direct {p0, v0, v1, p1}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 26
    new-instance p1, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$3;

    invoke-direct {p1, p0}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$3;-><init>(Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;)V

    const-string v1, "\u542f\u52a8\u5e7f\u544a\u52a9\u624b\u5e76\u6253\u5f00\u6c7d\u6c34"

    invoke-direct {p0, v0, v1, p1}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 27
    new-instance p1, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$4;

    invoke-direct {p1, p0}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$4;-><init>(Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;)V

    const-string v1, "\u505c\u6b62\u5e7f\u544a\u52a9\u624b"

    invoke-direct {p0, v0, v1, p1}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 28
    new-instance p1, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$5;

    invoke-direct {p1, p0}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$5;-><init>(Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;)V

    const-string v1, "\u67e5\u770b / \u5bfc\u51fa\u6c7d\u6c34\u8bca\u65ad"

    invoke-direct {p0, v0, v1, p1}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 29
    new-instance p1, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$6;

    invoke-direct {p1, p0}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$6;-><init>(Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;)V

    const-string v1, "\u8fd4\u56de\u94b1\u5305\u52a9\u624b"

    invoke-direct {p0, v0, v1, p1}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 30
    return-void
.end method
