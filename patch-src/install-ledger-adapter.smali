.method private initInstallLedger()V
    .locals 1
    new-instance v0, Lcn/jim/wallethelper/TaskInstallLedger;
    invoke-direct {v0, p0}, Lcn/jim/wallethelper/TaskInstallLedger;-><init>(Landroid/content/Context;)V
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->installLedger:Lcn/jim/wallethelper/TaskInstallLedger;
    return-void
.end method

.method private logInstallLedger()V
    .locals 2
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->installLedger:Lcn/jim/wallethelper/TaskInstallLedger;
    if-eqz v0, :done
    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskInstallLedger;->takeMessage()Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    move-result v0
    if-nez v0, :done
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    :done
    return-void
.end method

.method private recordTaskDownload(Lcn/jim/wallethelper/TaskRules$Row;)V
    .locals 3
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->installLedger:Lcn/jim/wallethelper/TaskInstallLedger;
    if-eqz v0, :done
    iget v1, p1, Lcn/jim/wallethelper/TaskRules$Row;->section:I
    iget-object v2, p1, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;
    invoke-virtual {v0, v1, v2}, Lcn/jim/wallethelper/TaskInstallLedger;->requested(ILjava/lang/String;)V
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->logInstallLedger()V
    :done
    return-void
.end method

.method private collectNewTaskInstalls()V
    .locals 1
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->installLedger:Lcn/jim/wallethelper/TaskInstallLedger;
    if-eqz v0, :done
    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskInstallLedger;->scan()V
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->logInstallLedger()V
    :done
    return-void
.end method

.method private finishWithUninstall(Ljava/lang/String;)V
    .locals 3
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->installLedger:Lcn/jim/wallethelper/TaskInstallLedger;
    if-eqz v0, :no_cleanup
    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskInstallLedger;->prepare()I
    move-result v0
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->logInstallLedger()V
    if-eqz v0, :no_cleanup
    const-string v0, "UNINSTALL"
    const-wide/16 v1, 0x384
    invoke-direct {p0, v0, v1, v2}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V
    const-string v0, "本轮任务结束，开始卸载已确认的新下载应用"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    return-void
    :no_cleanup
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    return-void
.end method

.method private uninstallStep(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    .locals 6
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->installLedger:Lcn/jim/wallethelper/TaskInstallLedger;
    if-eqz v0, :missing
    iget-object v1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;
    iget-object v2, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J
    move-result-wide v3
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/jim/wallethelper/TaskInstallLedger;->step(Ljava/util/List;Ljava/lang/String;J)I
    move-result v5
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->logInstallLedger()V
    const/4 v1, -0x3
    if-ne v5, v1, :maybe_click
    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskInstallLedger;->summary()Ljava/lang/String;
    move-result-object v1
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    return-void
    :maybe_click
    if-ltz v5, :done
    invoke-direct {p0, p1, v5}, Lcn/jim/wallethelper/WalletService;->click(Lcn/jim/wallethelper/WalletService$Snapshot;I)Z
    move-result v1
    if-nez v1, :done
    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskInstallLedger;->clickFailed()V
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->logInstallLedger()V
    :done
    return-void
    :missing
    const-string v0, "没有本轮安装记录，已结束"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    return-void
.end method
