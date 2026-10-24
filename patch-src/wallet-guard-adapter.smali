.method private guardWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z
    .locals 5
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;
    iget-object v1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->wallet:Ljava/lang/String;
    iget-boolean v3, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->outsideWalletWindow:Z
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->isStore(Ljava/lang/String;)Z
    move-result v4
    invoke-static {v0, v1, v2, v3, v4}, Lcn/jim/wallethelper/WalletGuard;->shouldReturn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    move-result v1
    if-eqz v1, :done
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->autoReturnPhase:Ljava/lang/String;
    const/4 v0, 0x0
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->returnRecovery:Lcn/jim/wallethelper/ReturnRecovery;
    const-string v0, "当前不是钱包，自动切回并恢复当前任务"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->returnToWallet()V
    const/4 v1, 0x1
    :done
    return v1
.end method

.method private refreshDisplayForReturn()V
    .locals 4
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->realDisplay()Landroid/util/DisplayMetrics;
    move-result-object v0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I
    if-lez v1, :done
    if-lez v2, :done
    iget v3, p0, Lcn/jim/wallethelper/WalletService;->screenW:I
    if-ne v1, v3, :update
    iget v3, p0, Lcn/jim/wallethelper/WalletService;->screenH:I
    if-eq v2, v3, :done
    :update
    iput v1, p0, Lcn/jim/wallethelper/WalletService;->screenW:I
    iput v2, p0, Lcn/jim/wallethelper/WalletService;->screenH:I
    const-string v0, "屏幕尺寸变化，已更新手势范围，继续原计时和任务"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    :done
    return-void
.end method
