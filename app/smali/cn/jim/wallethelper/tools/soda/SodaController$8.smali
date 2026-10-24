.class Lcn/jim/wallethelper/tools/soda/SodaController$8;
.super Ljava/lang/Object;
.source "SodaController.java"

# interfaces
.implements Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jim/wallethelper/tools/soda/SodaController;->readVision(Lcn/jim/wallethelper/tools/soda/SodaController$Screen;J)Lcn/jim/wallethelper/tools/soda/SodaVision$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

.field private final synthetic val$epoch:I

.field private final synthetic val$key:Ljava/lang/String;

.field private final synthetic val$s:Lcn/jim/wallethelper/tools/soda/SodaController$Screen;


# direct methods
.method constructor <init>(Lcn/jim/wallethelper/tools/soda/SodaController;ILjava/lang/String;Lcn/jim/wallethelper/tools/soda/SodaController$Screen;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$8;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    iput p2, p0, Lcn/jim/wallethelper/tools/soda/SodaController$8;->val$epoch:I

    iput-object p3, p0, Lcn/jim/wallethelper/tools/soda/SodaController$8;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcn/jim/wallethelper/tools/soda/SodaController$8;->val$s:Lcn/jim/wallethelper/tools/soda/SodaController$Screen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ready(Lcn/jim/wallethelper/tools/soda/SodaVision$Result;Ljava/lang/String;)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$8;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$17(Lcn/jim/wallethelper/tools/soda/SodaController;Z)V

    .line 200
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$8;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$0(Lcn/jim/wallethelper/tools/soda/SodaController;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$8;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$1(Lcn/jim/wallethelper/tools/soda/SodaController;)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$8;->val$epoch:I

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$8;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$18(Lcn/jim/wallethelper/tools/soda/SodaController;)I

    move-result v1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$8;->val$key:Ljava/lang/String;

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$8;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$19(Lcn/jim/wallethelper/tools/soda/SodaController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 201
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$8;->val$s:Lcn/jim/wallethelper/tools/soda/SodaController$Screen;

    iget-object v0, v0, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$8;->val$s:Lcn/jim/wallethelper/tools/soda/SodaController$Screen;

    iget v0, v0, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->windowId:I

    iget v1, p1, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->sourceWindow:I

    if-eq v0, v1, :cond_2

    .line 202
    :cond_1
    iget-object p2, p0, Lcn/jim/wallethelper/tools/soda/SodaController$8;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$20(Lcn/jim/wallethelper/tools/soda/SodaController;Lcn/jim/wallethelper/tools/soda/SodaVision$Result;)V

    iget-object p2, p0, Lcn/jim/wallethelper/tools/soda/SodaController$8;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    const-string v0, "\u8bc6\u522b\u7a97\u53e3\u5df2\u53d8\u5316\uff0c\u7b49\u5f85\u65b0\u622a\u56fe"

    invoke-static {p2, v0}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$21(Lcn/jim/wallethelper/tools/soda/SodaController;Ljava/lang/String;)V

    iget-object p2, p0, Lcn/jim/wallethelper/tools/soda/SodaController$8;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->describe()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " discarded=true"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$22(Lcn/jim/wallethelper/tools/soda/SodaController;Ljava/lang/String;)V

    return-void

    .line 204
    :cond_2
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$8;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {v0, p1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$20(Lcn/jim/wallethelper/tools/soda/SodaController;Lcn/jim/wallethelper/tools/soda/SodaVision$Result;)V

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$8;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    if-nez p2, :cond_3

    const-string p2, ""

    :cond_3
    invoke-static {v0, p2}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$21(Lcn/jim/wallethelper/tools/soda/SodaController;Ljava/lang/String;)V

    .line 205
    iget-object p2, p0, Lcn/jim/wallethelper/tools/soda/SodaController$8;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$8;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {p1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$23(Lcn/jim/wallethelper/tools/soda/SodaController;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->describe()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p2, p1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$22(Lcn/jim/wallethelper/tools/soda/SodaController;Ljava/lang/String;)V

    .line 206
    return-void

    .line 200
    :cond_5
    :goto_1
    return-void
.end method
