.class Lcn/jim/wallethelper/ScheduleActivity$3;
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

    .line 14
    iput-object p1, p0, Lcn/jim/wallethelper/ScheduleActivity$3;->this$0:Lcn/jim/wallethelper/ScheduleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 14
    iget-object v0, p0, Lcn/jim/wallethelper/ScheduleActivity$3;->this$0:Lcn/jim/wallethelper/ScheduleActivity;

    invoke-static {v0}, Lcn/jim/wallethelper/TileEntry;->add(Landroid/app/Activity;)V

    return-void
.end method
