.class public final Lcn/jim/wallethelper/ScheduleActivity;
.super Landroid/app/Activity;
.source "ScheduleActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/jim/wallethelper/ScheduleActivity;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcn/jim/wallethelper/ScheduleActivity;->show()V

    return-void
.end method

.method public static addEntry(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 2

    .line 9
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const-string v1, "\u81ea\u52a8\u4efb\u52a1 \u00b7 \u89e3\u9501\u8fd0\u884c"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lcn/jim/wallethelper/ScheduleActivity$1;

    invoke-direct {v1, p0}, Lcn/jim/wallethelper/ScheduleActivity$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 1

    .line 20
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Lcn/jim/wallethelper/ScheduleActivity$8;

    invoke-direct {p2, p0, p3}, Lcn/jim/wallethelper/ScheduleActivity$8;-><init>(Lcn/jim/wallethelper/ScheduleActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private show()V
    .locals 4

    .line 12
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Lcn/jim/wallethelper/ScheduleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41c00000    # 24.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {v1, v2, v3, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcn/jim/wallethelper/ScheduleActivity;->setContentView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->status(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n\u6bcf\u5929 7 \u70b9\u540e\u9996\u6b21\u89e3\u9501\u542f\u52a8\u5b8c\u6574\u6d41\u7a0b\uff0c\u6bcf\u5929\u6700\u591a\u81ea\u52a8\u542f\u52a8\u4e00\u6b21\u3002\u4ec5\u6b63\u5e38\u5b8c\u6210\u540e\u53d1\u9001\u7ed3\u679c\u901a\u77e5\uff0c\u65e0\u5e38\u9a7b\u901a\u77e5\u3002\u5173\u95ed\u5f00\u5173\u4f1a\u505c\u6b62\u5f53\u524d\u4efb\u52a1\u3002\n\n\u4f9d\u9760\u65e0\u969c\u788d\u670d\u52a1\u76d1\u542c\u89e3\u9501\uff1b\u7cfb\u7edf\u6e05\u7406\u8fdb\u7a0b\u53ef\u80fd\u4e2d\u65ad\uff0c\u8bf7\u5141\u8bb8\u540e\u53f0\u8fd0\u884c\uff0c\u5e76\u4fdd\u6301\u65e0\u969c\u788d\u670d\u52a1\u5f00\u542f\u3002\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 13
    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->enabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_58

    const-string v0, "\u5173\u95ed\u81ea\u52a8\u4efb\u52a1"

    goto :goto_5a

    :cond_58
    const-string v0, "\u5f00\u542f\u81ea\u52a8\u4efb\u52a1"

    :goto_5a
    new-instance v2, Lcn/jim/wallethelper/ScheduleActivity$2;

    invoke-direct {v2, p0}, Lcn/jim/wallethelper/ScheduleActivity$2;-><init>(Lcn/jim/wallethelper/ScheduleActivity;)V

    invoke-direct {p0, v1, v0, v2}, Lcn/jim/wallethelper/ScheduleActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 14
    new-instance v0, Lcn/jim/wallethelper/ScheduleActivity$3;

    invoke-direct {v0, p0}, Lcn/jim/wallethelper/ScheduleActivity$3;-><init>(Lcn/jim/wallethelper/ScheduleActivity;)V

    const-string v2, "\u6dfb\u52a0\u5230\u5feb\u6377\u8bbe\u7f6e\u5f00\u5173"

    invoke-direct {p0, v1, v2, v0}, Lcn/jim/wallethelper/ScheduleActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 15
    new-instance v0, Lcn/jim/wallethelper/ScheduleActivity$4;

    invoke-direct {v0, p0}, Lcn/jim/wallethelper/ScheduleActivity$4;-><init>(Lcn/jim/wallethelper/ScheduleActivity;)V

    const-string v2, "\u5141\u8bb8\u901a\u77e5\u63d0\u9192"

    invoke-direct {p0, v1, v2, v0}, Lcn/jim/wallethelper/ScheduleActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 16
    new-instance v0, Lcn/jim/wallethelper/ScheduleActivity$5;

    invoke-direct {v0, p0}, Lcn/jim/wallethelper/ScheduleActivity$5;-><init>(Lcn/jim/wallethelper/ScheduleActivity;)V

    const-string v2, "\u5f00\u542f\u65e0\u969c\u788d\u670d\u52a1"

    invoke-direct {p0, v1, v2, v0}, Lcn/jim/wallethelper/ScheduleActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 17
    new-instance v0, Lcn/jim/wallethelper/ScheduleActivity$6;

    invoke-direct {v0, p0}, Lcn/jim/wallethelper/ScheduleActivity$6;-><init>(Lcn/jim/wallethelper/ScheduleActivity;)V

    const-string v2, "\u540e\u53f0\u8fd0\u884c\u8bbe\u7f6e"

    invoke-direct {p0, v1, v2, v0}, Lcn/jim/wallethelper/ScheduleActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 18
    new-instance v0, Lcn/jim/wallethelper/ScheduleActivity$7;

    invoke-direct {v0, p0}, Lcn/jim/wallethelper/ScheduleActivity$7;-><init>(Lcn/jim/wallethelper/ScheduleActivity;)V

    const-string v2, "\u8fd4\u56de\u9996\u9875"

    invoke-direct {p0, v1, v2, v0}, Lcn/jim/wallethelper/ScheduleActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 19
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 10
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 11
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->attach(Landroid/content/Context;)V

    invoke-direct {p0}, Lcn/jim/wallethelper/ScheduleActivity;->show()V

    return-void
.end method
