.class public final Lcn/jim/wallethelper/InstallMonitor;
.super Ljava/lang/Object;
.source "InstallMonitor.java"


# static fields
.field private static final h:Landroid/os/Handler;

.field private static poll:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcn/jim/wallethelper/InstallMonitor;->h:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Runnable;
    .locals 1

    .line 3
    sget-object v0, Lcn/jim/wallethelper/InstallMonitor;->poll:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .line 3
    sget-object v0, Lcn/jim/wallethelper/InstallMonitor;->h:Landroid/os/Handler;

    return-object v0
.end method

.method public static start(Lcn/jim/wallethelper/TaskInstallLedger;)V
    .locals 1

    .line 7
    invoke-static {}, Lcn/jim/wallethelper/InstallMonitor;->stop()V

    .line 8
    new-instance v0, Lcn/jim/wallethelper/InstallMonitor$1;

    invoke-direct {v0, p0}, Lcn/jim/wallethelper/InstallMonitor$1;-><init>(Lcn/jim/wallethelper/TaskInstallLedger;)V

    sput-object v0, Lcn/jim/wallethelper/InstallMonitor;->poll:Ljava/lang/Runnable;

    .line 13
    sget-object p0, Lcn/jim/wallethelper/InstallMonitor;->h:Landroid/os/Handler;

    sget-object v0, Lcn/jim/wallethelper/InstallMonitor;->poll:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    return-void
.end method

.method public static stop()V
    .locals 2

    .line 15
    sget-object v0, Lcn/jim/wallethelper/InstallMonitor;->poll:Ljava/lang/Runnable;

    if-eqz v0, :cond_b

    sget-object v0, Lcn/jim/wallethelper/InstallMonitor;->h:Landroid/os/Handler;

    sget-object v1, Lcn/jim/wallethelper/InstallMonitor;->poll:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_b
    const/4 v0, 0x0

    sput-object v0, Lcn/jim/wallethelper/InstallMonitor;->poll:Ljava/lang/Runnable;

    return-void
.end method
