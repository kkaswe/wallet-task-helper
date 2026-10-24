.class Lcn/jim/wallethelper/WalletService$1;
.super Ljava/lang/Object;
.source "WalletService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jim/wallethelper/WalletService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jim/wallethelper/WalletService;


# direct methods
.method constructor <init>(Lcn/jim/wallethelper/WalletService;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcn/jim/wallethelper/WalletService$1;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 58
    :try_start_0
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService$1;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {v0}, Lcn/jim/wallethelper/WalletService;->access$0(Lcn/jim/wallethelper/WalletService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService$1;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {v0}, Lcn/jim/wallethelper/WalletService;->access$1(Lcn/jim/wallethelper/WalletService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService$1;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {v0}, Lcn/jim/wallethelper/WalletService;->access$2(Lcn/jim/wallethelper/WalletService;)J

    move-result-wide v0

    iget-object v2, p0, Lcn/jim/wallethelper/WalletService$1;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {v2}, Lcn/jim/wallethelper/WalletService;->access$3(Lcn/jim/wallethelper/WalletService;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService$1;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {v0}, Lcn/jim/wallethelper/WalletService;->access$4(Lcn/jim/wallethelper/WalletService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    :catch_0
    move-exception v0

    .line 60
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService$1;->this$0:Lcn/jim/wallethelper/WalletService;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6267\u884c\u5f02\u5e38\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff1b\u8bf7\u5bfc\u51fa\u8bca\u65ad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/jim/wallethelper/WalletService;->access$5(Lcn/jim/wallethelper/WalletService;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService$1;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jim/wallethelper/LocalLog;->add(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService$1;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {v0}, Lcn/jim/wallethelper/WalletService;->access$6(Lcn/jim/wallethelper/WalletService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    return-void
.end method
