.class Lcn/jim/wallethelper/tools/soda/SodaController$4;
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

    .line 69
    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$4;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 69
    invoke-static {}, Lcn/jim/wallethelper/tools/soda/SodaController;->stop()V

    return-void
.end method
