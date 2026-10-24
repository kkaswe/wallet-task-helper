.class public Lcn/jim/wallethelper/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final EXPORT:I = 0x2c


# instance fields
.field private debugPage:Z

.field private status:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 116
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 118
    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 119
    invoke-virtual {v0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 p3, 0x38

    invoke-virtual {p0, p3}, Lcn/jim/wallethelper/MainActivity;->dp(I)I

    move-result p3

    const/4 v1, -0x1

    invoke-direct {p2, v1, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    return-void
.end method

.method dp(I)I
    .locals 1

    .line 30
    int-to-float p1, p1

    invoke-virtual {p0}, Lcn/jim/wallethelper/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method synthetic lambda$0$cn-jim-wallethelper-MainActivity(Landroid/view/View;)V
    .locals 2

    .line 51
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 52
    const-string v0, "\u5f00\u542f\u524d\u8bf7\u4e86\u89e3"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 54
    nop

    .line 53
    const-string v0, "\u5f00\u542f\u540e\uff0c\u52a9\u624b\u53ef\u4ee5\u8bfb\u53d6\u5c4f\u5e55\u63a7\u4ef6\u3001\u70b9\u51fb\u548c\u5207\u6362\u5e94\u7528\u3002\u53ea\u6709\u70b9\u51fb\u60ac\u6d6e\u63a7\u5236\u6761\u7684\u5f00\u59cb\u540e\u624d\u6267\u884c\u4efb\u52a1\u3002\n\n\u6240\u6709\u5904\u7406\u548c\u65e5\u5fd7\u5747\u5728\u624b\u673a\u672c\u5730\uff0c\u4e0d\u7533\u8bf7\u8054\u7f51\u6743\u9650\u3002\u4e0d\u4f1a\u81ea\u52a8\u540c\u610f\u76ee\u6807\u5e94\u7528\u7684\u534f\u8bae\u3001\u767b\u5f55\u6216\u5151\u6362\u4f1a\u5458\u3002\u4f60\u53ef\u4ee5\u968f\u65f6\u6682\u505c\u3001\u505c\u6b62\u6216\u5173\u95ed\u65e0\u969c\u788d\u670d\u52a1\u3002"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 57
    nop

    .line 58
    new-instance v0, Lcn/jim/wallethelper/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcn/jim/wallethelper/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcn/jim/wallethelper/MainActivity;)V

    .line 56
    const-string v1, "\u524d\u5f80\u8bbe\u7f6e"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 59
    const-string v0, "\u53d6\u6d88"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$1$cn-jim-wallethelper-MainActivity(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 58
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/jim/wallethelper/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method synthetic lambda$2$cn-jim-wallethelper-MainActivity(Landroid/view/View;)V
    .locals 1

    .line 65
    sget-object p1, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 66
    sget-object p1, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;

    invoke-virtual {p1}, Lcn/jim/wallethelper/WalletService;->showOverlay()V

    .line 67
    const-string p1, "\u8bf7\u6253\u5f00\u94b1\u5305\u7684\u4efb\u52a1\u9875\uff0c\u518d\u70b9\u5f00\u59cb"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 68
    goto :goto_0

    :cond_0
    const-string p1, "\u8bf7\u5148\u5f00\u542f\u65e0\u969c\u788d\u670d\u52a1"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 69
    :goto_0
    return-void
.end method

.method synthetic lambda$3$cn-jim-wallethelper-MainActivity(Landroid/view/View;)V
    .locals 2

    .line 74
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 75
    const-string v0, "\u8fd0\u884c\u65e5\u5fd7"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 76
    const-string v0, "run.log"

    invoke-static {p0, v0}, Lcn/jim/wallethelper/LocalLog;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 77
    const-string v0, "\u5173\u95ed"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method synthetic lambda$4$cn-jim-wallethelper-MainActivity(Landroid/view/View;)V
    .locals 2

    .line 84
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    const-string v0, "text/plain"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 86
    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 87
    const-string v0, "android.intent.extra.TITLE"

    const-string v1, "wallet-diagnostics.txt"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 83
    nop

    .line 88
    const/16 v0, 0x2c

    invoke-virtual {p0, p1, v0}, Lcn/jim/wallethelper/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 89
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 125
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 126
    const/16 v0, 0x2c

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    if-eqz p3, :cond_3

    .line 127
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcn/jim/wallethelper/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 128
    nop

    .line 129
    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "\u94b1\u5305\u4efb\u52a1\u52a9\u624b 0.1.57\n\n"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    const-string v0, "run.log"

    invoke-static {p0, v0}, Lcn/jim/wallethelper/LocalLog;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 131
    const-string v0, "\n--- \u624b\u52a8\u6355\u83b7\u7684\u9875\u9762 ---\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 132
    const-string v0, "screen.txt"

    invoke-static {p0, v0}, Lcn/jim/wallethelper/LocalLog;->read(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 129
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 133
    const-string v0, "UTF-8"

    invoke-virtual {p3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    .line 128
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 134
    const-string p3, "\u5df2\u5bfc\u51fa"

    const/4 v0, 0x0

    invoke-static {p0, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    if-eqz p2, :cond_3

    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    :cond_0
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p1, :cond_1

    if-eq p1, p2, :cond_2

    :try_start_3
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move-object p1, p2

    :cond_2
    :goto_0
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    .line 136
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u5bfc\u51fa\u5931\u8d25\uff1a"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 139
    :cond_3
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcn/jim/wallethelper/MainActivity;->show()V

    .line 20
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 24
    invoke-super {p0}, Landroid/app/Activity;->onResume()V
    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->attach(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcn/jim/wallethelper/MainActivity;->refreshStatus()V
    return-void
.end method

.method refreshStatus()V
    .locals 2
    iget-object v0, p0, Lcn/jim/wallethelper/MainActivity;->status:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcn/jim/wallethelper/MainActivity;->status:Landroid/widget/TextView;

    sget-object v1, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;

    if-nez v1, :cond_0

    const-string v1, "\u65e0\u969c\u788d\u670d\u52a1\u672a\u5f00\u542f"

    goto :goto_0

    :cond_0
    const-string v1, "\u65e0\u969c\u788d\u670d\u52a1\u5df2\u8fde\u63a5 \u00b7 \u53ef\u663e\u793a\u63a7\u5236\u6761"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :cond_1
    return-void
.end method

.method show()V
    .locals 7
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcn/jim/wallethelper/MainActivity;->debugPage:Z

    .line 34
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 37
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcn/jim/wallethelper/MainActivity;->dp(I)I

    move-result v3

    const/16 v4, 0x28

    invoke-virtual {p0, v4}, Lcn/jim/wallethelper/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {p0, v2}, Lcn/jim/wallethelper/MainActivity;->dp(I)I

    move-result v2

    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Lcn/jim/wallethelper/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {v1, v3, v4, v2, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 38
    const/16 v2, 0xf8

    const/16 v3, 0xfa

    const/16 v4, 0xf7

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 40
    invoke-virtual {p0, v0}, Lcn/jim/wallethelper/MainActivity;->setContentView(Landroid/view/View;)V

    .line 41
    const/16 v0, 0x1a

    const/16 v2, 0x2c

    invoke-static {v0, v5, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    const-string v2, "\u94b1\u5305\u4efb\u52a1\u52a9\u624b"

    const/16 v3, 0x1c

    invoke-virtual {p0, v1, v2, v3, v0}, Lcn/jim/wallethelper/MainActivity;->text(Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    .line 42
    const-string v0, "\u4e2a\u4eba\u6d4b\u8bd5\u7248 0.1.57"

    const/16 v2, 0xe

    const v3, -0xbbbbbc

    invoke-virtual {p0, v1, v0, v2, v3}, Lcn/jim/wallethelper/MainActivity;->text(Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    .line 43
    const/16 v0, 0x64

    const/16 v4, 0x19

    const/16 v5, 0xea

    invoke-static {v5, v0, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    const-string v4, "四个模块，一次启动"

    const/16 v5, 0x15

    invoke-virtual {p0, v1, v4, v5, v0}, Lcn/jim/wallethelper/MainActivity;->text(Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    .line 44
    const-string v0, "\u8fde\u7eed2\u5929\u4f53\u9a8c\uff1a16\u79d2\n\u6d4f\u89c8\u5e94\u7528\uff1a11\u79d2\n\u4e0b\u8f7d\u5e76\u4f53\u9a8c\uff1a16\u79d2"

    const/16 v4, 0x12

    const/high16 v5, -0x1000000

    invoke-virtual {p0, v1, v0, v4, v5}, Lcn/jim/wallethelper/MainActivity;->text(Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    .line 45
    const-string v0, "下载可并行，体验逐个进行。第二轮及卸载完成后再看视频，领取至每日上限；明日领应用保留。"

    const/16 v4, 0x10

    invoke-virtual {p0, v1, v0, v4, v3}, Lcn/jim/wallethelper/MainActivity;->text(Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    .line 46
    const/16 v0, 0x63

    const/16 v4, 0x3f

    const/16 v6, 0x1b

    invoke-static {v6, v0, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    const-string v4, ""

    const/16 v6, 0xf

    invoke-virtual {p0, v1, v4, v6, v0}, Lcn/jim/wallethelper/MainActivity;->text(Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcn/jim/wallethelper/MainActivity;->status:Landroid/widget/TextView;

    .line 47
    nop

    .line 48
    nop

    .line 49
    nop

    .line 50
    new-instance v0, Lcn/jim/wallethelper/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcn/jim/wallethelper/MainActivity$$ExternalSyntheticLambda0;-><init>(Lcn/jim/wallethelper/MainActivity;)V

    .line 47
    const-string v4, "\u2460 \u5f00\u542f\u65e0\u969c\u788d\u670d\u52a1"

    invoke-virtual {p0, v1, v4, v0}, Lcn/jim/wallethelper/MainActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 61
    nop

    .line 62
    nop

    .line 63
    nop

    .line 64
    new-instance v0, Lcn/jim/wallethelper/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcn/jim/wallethelper/MainActivity$$ExternalSyntheticLambda1;-><init>(Lcn/jim/wallethelper/MainActivity;)V

    .line 61
    const-string v4, "\u2461 \u663e\u793a\u60ac\u6d6e\u63a7\u5236\u6761"

    invoke-virtual {p0, v1, v4, v0}, Lcn/jim/wallethelper/MainActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcn/jim/wallethelper/WalletEntryClick;
    invoke-direct {v0, p0}, Lcn/jim/wallethelper/WalletEntryClick;-><init>(Landroid/app/Activity;)V
    const-string v4, "③ 打开荣耀钱包"
    invoke-virtual {p0, v1, v4, v0}, Lcn/jim/wallethelper/MainActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V



    invoke-static {p0, v1}, Lcn/jim/wallethelper/ScheduleActivity;->addEntry(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    invoke-static {p0, v1}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->addEntry(Landroid/app/Activity;Landroid/widget/LinearLayout;)V


    .line 70
    nop

    .line 71
    nop

    .line 72
    nop

    .line 73


    .line 79
    nop

    .line 80
    nop

    .line 81
    nop

    .line 82



    new-instance v0, Lcn/jim/wallethelper/DebugNavigationClick;
    const/4 v4, 0x1
    invoke-direct {v0, p0, v4}, Lcn/jim/wallethelper/DebugNavigationClick;-><init>(Lcn/jim/wallethelper/MainActivity;Z)V
    const-string v4, "调试"
    invoke-virtual {p0, v1, v4, v0}, Lcn/jim/wallethelper/MainActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 90
    const-string v0, "\u4f7f\u7528\u65b9\u6cd5"

    const/16 v4, 0x14

    invoke-virtual {p0, v1, v0, v4, v5}, Lcn/jim/wallethelper/MainActivity;->text(Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    .line 91
    nop

    .line 92
    nop

    .line 93
    nop

    .line 96
    nop

    .line 97
    nop

    .line 91
    const-string v0, "打开钱包 → 省钱 → 天天领会员，点击控制条的开始。控制条标题可拖动。\n\n请保持手机解锁、亮屏。折叠状态或屏幕尺寸改变时会暂停；回到钱包任务页后停止并重新开始。\n\n日志及问题排查请进入调试。"

    invoke-virtual {p0, v1, v0, v6, v3}, Lcn/jim/wallethelper/MainActivity;->text(Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    .line 98
    nop

    .line 99
    nop

    .line 100
    nop

    .line 101
    nop

    .line 102
    nop

    .line 98


    .line 103
    invoke-virtual {p0}, Lcn/jim/wallethelper/MainActivity;->refreshStatus()V
    return-void
.end method

.method showDebug()V
    .locals 7

    .line 34
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 37
    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Lcn/jim/wallethelper/MainActivity;->dp(I)I

    move-result v3

    const/16 v4, 0x28

    invoke-virtual {p0, v4}, Lcn/jim/wallethelper/MainActivity;->dp(I)I

    move-result v4

    invoke-virtual {p0, v2}, Lcn/jim/wallethelper/MainActivity;->dp(I)I

    move-result v2

    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Lcn/jim/wallethelper/MainActivity;->dp(I)I

    move-result v6

    invoke-virtual {v1, v3, v4, v2, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 38
    const/16 v2, 0xf8

    const/16 v3, 0xfa

    const/16 v4, 0xf7

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 39
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 40
    invoke-virtual {p0, v0}, Lcn/jim/wallethelper/MainActivity;->setContentView(Landroid/view/View;)V


    const/4 v0, 0x1
    iput-boolean v0, p0, Lcn/jim/wallethelper/MainActivity;->debugPage:Z
    const/4 v0, 0x0
    iput-object v0, p0, Lcn/jim/wallethelper/MainActivity;->status:Landroid/widget/TextView;
    const-string v0, "调试"
    const/16 v2, 0x1c
    const v3, -0xbbbbbc
    invoke-virtual {p0, v1, v0, v2, v3}, Lcn/jim/wallethelper/MainActivity;->text(Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    new-instance v0, Lcn/jim/wallethelper/DebugNavigationClick;
    const/4 v4, 0x0
    invoke-direct {v0, p0, v4}, Lcn/jim/wallethelper/DebugNavigationClick;-><init>(Lcn/jim/wallethelper/MainActivity;Z)V
    const-string v4, "返回首页"
    invoke-virtual {p0, v1, v4, v0}, Lcn/jim/wallethelper/MainActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    new-instance v0, Lcn/jim/wallethelper/VideoTaskClick;
    invoke-direct {v0, p0}, Lcn/jim/wallethelper/VideoTaskClick;-><init>(Landroid/app/Activity;)V
    const-string v4, "仅运行视频领会员（自动领取至上限）"
    invoke-virtual {p0, v1, v4, v0}, Lcn/jim/wallethelper/MainActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    new-instance v0, Lcn/jim/wallethelper/RestartCheckClick;
    invoke-direct {v0, p0}, Lcn/jim/wallethelper/RestartCheckClick;-><init>(Landroid/app/Activity;)V
    const-string v4, "后台检查钱包重开（20秒）"
    invoke-virtual {p0, v1, v4, v0}, Lcn/jim/wallethelper/MainActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    new-instance v0, Lcn/jim/wallethelper/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcn/jim/wallethelper/MainActivity$$ExternalSyntheticLambda2;-><init>(Lcn/jim/wallethelper/MainActivity;)V

    .line 70
    const-string v4, "\u67e5\u770b\u8fd0\u884c\u65e5\u5fd7"

    invoke-virtual {p0, v1, v4, v0}, Lcn/jim/wallethelper/MainActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    new-instance v0, Lcn/jim/wallethelper/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcn/jim/wallethelper/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcn/jim/wallethelper/MainActivity;)V

    .line 79
    const-string v4, "\u5bfc\u51fa\u65e5\u5fd7\u4e0e\u9875\u9762\u8bca\u65ad"

    invoke-virtual {p0, v1, v4, v0}, Lcn/jim/wallethelper/MainActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    const-string v0, "页面诊断：先在目标页面暂停任务，点击浮窗的诊断，再到这里导出日志与页面诊断。\n\n后台重开检查用于单独验证钱包重新打开，检查时请保持手机解锁。"
    const/16 v2, 0xf
    const v3, -0xbbbbbc
    invoke-virtual {p0, v1, v0, v2, v3}, Lcn/jim/wallethelper/MainActivity;->text(Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;
    return-void
.end method

.method public onBackPressed()V
    .locals 1
    iget-boolean v0, p0, Lcn/jim/wallethelper/MainActivity;->debugPage:Z
    if-eqz v0, :leave
    invoke-virtual {p0}, Lcn/jim/wallethelper/MainActivity;->show()V
    return-void
    :leave
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    return-void
.end method


.method text(Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;
    .locals 1

    .line 106
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    int-to-float p2, p3

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 109
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    const/16 p2, 0xa

    invoke-virtual {p0, p2}, Lcn/jim/wallethelper/MainActivity;->dp(I)I

    move-result p3

    invoke-virtual {p0, p2}, Lcn/jim/wallethelper/MainActivity;->dp(I)I

    move-result p2

    const/4 p4, 0x0

    invoke-virtual {v0, p4, p3, p4, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 111
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    return-object v0
.end method

