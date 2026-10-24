.class Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$6;
.super Ljava/lang/Object;
.source "SodaToolsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;


# direct methods
.method constructor <init>(Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$6;->this$0:Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 29
    invoke-static {}, Lcn/jim/wallethelper/tools/soda/SodaController;->stop()V

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$6;->this$0:Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;

    invoke-virtual {v0}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->finish()V

    return-void
.end method
