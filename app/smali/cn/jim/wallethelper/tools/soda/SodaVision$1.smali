.class Lcn/jim/wallethelper/tools/soda/SodaVision$1;
.super Ljava/lang/Object;
.source "SodaVision.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jim/wallethelper/tools/soda/SodaVision;->finish(Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;Lcn/jim/wallethelper/tools/soda/SodaVision$Result;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jim/wallethelper/tools/soda/SodaVision;

.field private final synthetic val$error:Ljava/lang/String;

.field private final synthetic val$listener:Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;

.field private final synthetic val$result:Lcn/jim/wallethelper/tools/soda/SodaVision$Result;


# direct methods
.method constructor <init>(Lcn/jim/wallethelper/tools/soda/SodaVision;Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;Lcn/jim/wallethelper/tools/soda/SodaVision$Result;Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$1;->this$0:Lcn/jim/wallethelper/tools/soda/SodaVision;

    iput-object p2, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$1;->val$listener:Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;

    iput-object p3, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$1;->val$result:Lcn/jim/wallethelper/tools/soda/SodaVision$Result;

    iput-object p4, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$1;->val$error:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 36
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$1;->this$0:Lcn/jim/wallethelper/tools/soda/SodaVision;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/jim/wallethelper/tools/soda/SodaVision;->access$0(Lcn/jim/wallethelper/tools/soda/SodaVision;Z)V

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$1;->this$0:Lcn/jim/wallethelper/tools/soda/SodaVision;

    invoke-static {v0}, Lcn/jim/wallethelper/tools/soda/SodaVision;->access$1(Lcn/jim/wallethelper/tools/soda/SodaVision;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$1;->val$listener:Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$1;->val$result:Lcn/jim/wallethelper/tools/soda/SodaVision$Result;

    iget-object v2, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$1;->val$error:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;->ready(Lcn/jim/wallethelper/tools/soda/SodaVision$Result;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
