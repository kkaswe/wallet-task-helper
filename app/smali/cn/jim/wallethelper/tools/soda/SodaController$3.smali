.class Lcn/jim/wallethelper/tools/soda/SodaController$3;
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

    .line 68
    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$3;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$3;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$3;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$1(Lcn/jim/wallethelper/tools/soda/SodaController;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$8(Lcn/jim/wallethelper/tools/soda/SodaController;Z)V

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$3;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$9(Lcn/jim/wallethelper/tools/soda/SodaController;)V

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$3;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$10(Lcn/jim/wallethelper/tools/soda/SodaController;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$3;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$1(Lcn/jim/wallethelper/tools/soda/SodaController;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u7ee7\u7eed"

    goto :goto_0

    :cond_0
    const-string v1, "\u6682\u505c"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$3;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$3;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$1(Lcn/jim/wallethelper/tools/soda/SodaController;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$11(Lcn/jim/wallethelper/tools/soda/SodaController;Z)V

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$3;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$12(Lcn/jim/wallethelper/tools/soda/SodaController;)Lcn/jim/wallethelper/tools/soda/AdSession;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/jim/wallethelper/tools/soda/AdSession;->lastProgress:J

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$3;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$3;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$12(Lcn/jim/wallethelper/tools/soda/SodaController;)Lcn/jim/wallethelper/tools/soda/AdSession;

    move-result-object v1

    iget-wide v1, v1, Lcn/jim/wallethelper/tools/soda/AdSession;->lastProgress:J

    invoke-static {v0, v1, v2}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$13(Lcn/jim/wallethelper/tools/soda/SodaController;J)V

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$3;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$3;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$1(Lcn/jim/wallethelper/tools/soda/SodaController;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u5df2\u6682\u505c"

    goto :goto_1

    :cond_1
    const-string v1, "\u7ee7\u7eed\u8bc6\u522b\u5e7f\u544a"

    :goto_1
    invoke-static {v0, v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$14(Lcn/jim/wallethelper/tools/soda/SodaController;Ljava/lang/String;)V

    return-void
.end method
