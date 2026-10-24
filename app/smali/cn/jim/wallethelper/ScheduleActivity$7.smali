.class Lcn/jim/wallethelper/ScheduleActivity$7;
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

    .line 18
    iput-object p1, p0, Lcn/jim/wallethelper/ScheduleActivity$7;->this$0:Lcn/jim/wallethelper/ScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 18
    iget-object v0, p0, Lcn/jim/wallethelper/ScheduleActivity$7;->this$0:Lcn/jim/wallethelper/ScheduleActivity;

    invoke-virtual {v0}, Lcn/jim/wallethelper/ScheduleActivity;->finish()V

    return-void
.end method
