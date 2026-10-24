.class public final Lcn/jim/wallethelper/ResidentService;
.super Landroid/app/Service;
.source "ResidentService.java"


# static fields
.field public static error:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static active()Z
    .locals 1

    .line 7
    sget-object v0, Lcn/jim/wallethelper/WalletService;->instance:Lcn/jim/wallethelper/WalletService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static refresh()V
    .locals 0

    .line 13
    return-void
.end method

.method public static request(Landroid/content/Context;)V
    .locals 3

    .line 9
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/jim/wallethelper/ResidentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 10
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const/16 v2, 0x91

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 11
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 v0, 0x90

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 12
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 15
    const/4 p1, 0x0

    return-object p1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 14
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcn/jim/wallethelper/ResidentService;->stopForeground(Z)V

    invoke-virtual {p0}, Lcn/jim/wallethelper/ResidentService;->stopSelf()V

    const/4 p1, 0x2

    return p1
.end method
