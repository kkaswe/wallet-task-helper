.class Lcn/jim/wallethelper/ScheduleActivity$5;
.super Ljava/lang/Object;
.source "ScheduleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jim/wallethelper/ScheduleActivity;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jim/wallethelper/ScheduleActivity;


# direct methods
.method constructor <init>(Lcn/jim/wallethelper/ScheduleActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 16
    iput-object p1, p0, Lcn/jim/wallethelper/ScheduleActivity$5;->this$0:Lcn/jim/wallethelper/ScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 16
    iget-object v0, p0, Lcn/jim/wallethelper/ScheduleActivity$5;->this$0:Lcn/jim/wallethelper/ScheduleActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.ACCESSIBILITY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/jim/wallethelper/ScheduleActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
