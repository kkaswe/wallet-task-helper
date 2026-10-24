.class Lcn/jim/wallethelper/DailySchedule$2;
.super Ljava/lang/Object;
.source "DailySchedule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jim/wallethelper/DailySchedule;->attempt(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$restoreToken:I


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    iput p1, p0, Lcn/jim/wallethelper/DailySchedule$2;->val$restoreToken:I

    iput-object p2, p0, Lcn/jim/wallethelper/DailySchedule$2;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 81
    const/4 v0, 0x0

    # setter for: Lcn/jim/wallethelper/DailySchedule;->waitingRestore:Z
    invoke-static {v0}, Lcn/jim/wallethelper/DailySchedule;->access$002(Z)Z

    iget v0, p0, Lcn/jim/wallethelper/DailySchedule$2;->val$restoreToken:I

    # getter for: Lcn/jim/wallethelper/DailySchedule;->generation:I
    invoke-static {}, Lcn/jim/wallethelper/DailySchedule;->access$100()I

    move-result v1

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcn/jim/wallethelper/DailySchedule$2;->val$c:Landroid/content/Context;

    invoke-static {v0}, Lcn/jim/wallethelper/DailySchedule;->attempt(Landroid/content/Context;)V

    :cond_11
    return-void
.end method
