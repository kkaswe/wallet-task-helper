.class Lcn/jim/wallethelper/InstallMonitor$1;
.super Ljava/lang/Object;
.source "InstallMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jim/wallethelper/InstallMonitor;->start(Lcn/jim/wallethelper/TaskInstallLedger;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$ledger:Lcn/jim/wallethelper/TaskInstallLedger;


# direct methods
.method constructor <init>(Lcn/jim/wallethelper/TaskInstallLedger;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcn/jim/wallethelper/InstallMonitor$1;->val$ledger:Lcn/jim/wallethelper/TaskInstallLedger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 9
    invoke-static {}, Lcn/jim/wallethelper/InstallMonitor;->access$000()Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_7

    return-void

    .line 10
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcn/jim/wallethelper/InstallMonitor$1;->val$ledger:Lcn/jim/wallethelper/TaskInstallLedger;

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskInstallLedger;->scan()V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-exception v0

    .line 11
    :goto_e
    invoke-static {}, Lcn/jim/wallethelper/InstallMonitor;->access$100()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12
    return-void
.end method
