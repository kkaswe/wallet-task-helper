.method private recovery()Lcn/jim/wallethelper/ReturnRecovery;
    .locals 1
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->returnRecovery:Lcn/jim/wallethelper/ReturnRecovery;
    if-nez v0, :done
    new-instance v0, Lcn/jim/wallethelper/ReturnRecovery;
    invoke-direct {v0}, Lcn/jim/wallethelper/ReturnRecovery;-><init>()V
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->returnRecovery:Lcn/jim/wallethelper/ReturnRecovery;
    :done
    return-object v0
.end method

.method private rememberCleanupTarget(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    .locals 4
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->claimSubmitted:Z
    if-nez v0, :done
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->returningFromDownload:Z
    if-nez v0, :done
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;
    if-eqz v0, :done
    iget-object v1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;
    iget-object v3, p0, Lcn/jim/wallethelper/WalletService;->home:Ljava/lang/String;
    invoke-static {v1, v3}, Lcn/jim/wallethelper/ReturnRecovery;->eligible(Ljava/lang/String;Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :done
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->label(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->recovery()Lcn/jim/wallethelper/ReturnRecovery;
    move-result-object v0
    invoke-virtual {v0, v1, v2, v3}, Lcn/jim/wallethelper/ReturnRecovery;->remember(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :done
    return-void
.end method

.method private retryWalletReturn()V
    .locals 2
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->recovery()Lcn/jim/wallethelper/ReturnRecovery;
    move-result-object v0
    invoke-virtual {v0}, Lcn/jim/wallethelper/ReturnRecovery;->retryAllowed()Z
    move-result v1
    if-eqz v1, :failed
    const-string v0, "未确认回到钱包，自动重试切回（1/1）"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->returnToWallet()V
    return-void
    :failed
    const-string v0, "重试后仍未切回钱包，请手动切回后继续"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->pause(Ljava/lang/String;)V
    return-void
.end method

.method private cleanupRecents(Lcn/jim/wallethelper/WalletService$Snapshot;)Z
    .locals 7
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->recovery()Lcn/jim/wallethelper/ReturnRecovery;
    move-result-object v0
    iget-object v1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->nodes:Ljava/util/List;
    iget v2, p0, Lcn/jim/wallethelper/WalletService;->screenW:I
    iget v3, p0, Lcn/jim/wallethelper/WalletService;->screenH:I
    iget-object v4, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J
    move-result-wide v5
    invoke-virtual/range {v0 .. v6}, Lcn/jim/wallethelper/ReturnRecovery;->next(Ljava/util/List;IILandroid/view/View;J)[F
    move-result-object v1
    if-eqz v1, :message
    const/4 v2, 0x0
    aget v2, v1, v2
    const/4 v3, 0x1
    aget v3, v1, v3
    const/4 v4, 0x2
    aget v4, v1, v4
    const/4 v5, 0x3
    aget v5, v1, v5
    invoke-direct {p0, v2, v3, v4, v5}, Lcn/jim/wallethelper/WalletService;->swipeTask(FFFF)Z
    move-result v1
    if-nez v1, :message
    invoke-virtual {v0}, Lcn/jim/wallethelper/ReturnRecovery;->failed()V
    :message
    iget-object v1, v0, Lcn/jim/wallethelper/ReturnRecovery;->message:Ljava/lang/String;
    if-eqz v1, :waiting
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    :waiting
    invoke-virtual {v0}, Lcn/jim/wallethelper/ReturnRecovery;->waiting()Z
    move-result v0
    return v0
.end method
