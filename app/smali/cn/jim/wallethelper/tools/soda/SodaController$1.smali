.class Lcn/jim/wallethelper/tools/soda/SodaController$1;
.super Ljava/lang/Object;
.source "SodaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jim/wallethelper/tools/soda/SodaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jim/wallethelper/tools/soda/SodaController;


# direct methods
.method constructor <init>(Lcn/jim/wallethelper/tools/soda/SodaController;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$1;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 41
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$1;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$0(Lcn/jim/wallethelper/tools/soda/SodaController;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$1;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$1(Lcn/jim/wallethelper/tools/soda/SodaController;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$1;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$2(Lcn/jim/wallethelper/tools/soda/SodaController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$1;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8bc6\u522b\u5f02\u5e38\uff0c\u8bf7\u5bfc\u51fa\u6c7d\u6c34\u8bca\u65ad\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$3(Lcn/jim/wallethelper/tools/soda/SodaController;Ljava/lang/String;)V

    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$1;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$0(Lcn/jim/wallethelper/tools/soda/SodaController;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$1;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$4(Lcn/jim/wallethelper/tools/soda/SodaController;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    :cond_2
    return-void
.end method
