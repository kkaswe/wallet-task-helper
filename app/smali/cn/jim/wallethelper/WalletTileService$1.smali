.class Lcn/jim/wallethelper/WalletTileService$1;
.super Ljava/lang/Object;
.source "WalletTileService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jim/wallethelper/WalletTileService;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jim/wallethelper/WalletTileService;


# direct methods
.method constructor <init>(Lcn/jim/wallethelper/WalletTileService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 6
    iput-object p1, p0, Lcn/jim/wallethelper/WalletTileService$1;->this$0:Lcn/jim/wallethelper/WalletTileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 6
    iget-object v0, p0, Lcn/jim/wallethelper/WalletTileService$1;->this$0:Lcn/jim/wallethelper/WalletTileService;

    iget-object v1, p0, Lcn/jim/wallethelper/WalletTileService$1;->this$0:Lcn/jim/wallethelper/WalletTileService;

    invoke-static {v1}, Lcn/jim/wallethelper/DailySchedule;->enabled(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcn/jim/wallethelper/DailySchedule;->setEnabled(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcn/jim/wallethelper/WalletTileService$1;->this$0:Lcn/jim/wallethelper/WalletTileService;

    invoke-static {v0}, Lcn/jim/wallethelper/WalletTileService;->access$000(Lcn/jim/wallethelper/WalletTileService;)V

    return-void
.end method
