.class Lcn/jim/wallethelper/DailySchedule$1;
.super Landroid/content/BroadcastReceiver;
.source "DailySchedule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jim/wallethelper/DailySchedule;->attach(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcn/jim/wallethelper/DailySchedule$1;->val$c:Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 56
    iget-object p1, p0, Lcn/jim/wallethelper/DailySchedule$1;->val$c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/jim/wallethelper/DailySchedule;->onUnlocked(Landroid/content/Context;)V

    return-void
.end method
