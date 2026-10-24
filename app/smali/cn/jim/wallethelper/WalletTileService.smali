.class public final Lcn/jim/wallethelper/WalletTileService;
.super Landroid/service/quicksettings/TileService;
.source "WalletTileService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcn/jim/wallethelper/WalletTileService;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletTileService;->refreshTile()V

    return-void
.end method

.method private refreshTile()V
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcn/jim/wallethelper/WalletTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v1, "\u94b1\u5305\u81ea\u52a8\u4efb\u52a1"

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Lcn/jim/wallethelper/DailySchedule;->enabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x2

    goto :goto_15

    :cond_14
    const/4 v1, 0x1

    :goto_15
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .line 6
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    new-instance v0, Lcn/jim/wallethelper/WalletTileService$1;

    invoke-direct {v0, p0}, Lcn/jim/wallethelper/WalletTileService$1;-><init>(Lcn/jim/wallethelper/WalletTileService;)V

    invoke-virtual {p0}, Lcn/jim/wallethelper/WalletTileService;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0, v0}, Lcn/jim/wallethelper/WalletTileService;->unlockAndRun(Ljava/lang/Runnable;)V

    goto :goto_15

    :cond_12
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_15
    return-void
.end method

.method public onStartListening()V
    .locals 0

    .line 4
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    invoke-direct {p0}, Lcn/jim/wallethelper/WalletTileService;->refreshTile()V

    return-void
.end method
