.class Lcn/jim/wallethelper/tools/soda/SodaController$6;
.super Ljava/lang/Object;
.source "SodaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jim/wallethelper/tools/soda/SodaController;->overlay()V
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

    .line 71
    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$6;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$6;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    const-string v1, "\u5df2\u6682\u505c\uff0c\u8fd4\u56de\u5de5\u5177\u9875"

    invoke-static {v0, v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$3(Lcn/jim/wallethelper/tools/soda/SodaController;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$6;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$16(Lcn/jim/wallethelper/tools/soda/SodaController;)Lcn/jim/wallethelper/WalletService;

    move-result-object v1

    const-class v2, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$6;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$16(Lcn/jim/wallethelper/tools/soda/SodaController;)Lcn/jim/wallethelper/WalletService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/jim/wallethelper/WalletService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
