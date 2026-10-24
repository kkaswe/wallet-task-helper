# Only section 2: a missing row in the current wallet list is retired, not searched globally.
.method private handleRefreshedDownload(Lcn/jim/wallethelper/WalletService$Snapshot;)Z
    .locals 6
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;
    if-eqz v0, :ignore
    iget v1, v0, Lcn/jim/wallethelper/TaskRules$Row;->section:I
    const/4 v2, 0x2
    if-ne v1, v2, :ignore
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService;->phase:Ljava/lang/String;
    const-string v2, "VERIFY"
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :check_wallet
    const-string v2, "CLAIM_READY"
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-nez v2, :check_wallet
    const-string v2, "CLAIM"
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v2
    if-eqz v2, :ignore
    :check_wallet
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->isWallet(Lcn/jim/wallethelper/WalletService$Snapshot;)Z
    move-result v1
    if-eqz v1, :ignore
    invoke-direct {p0, p1}, Lcn/jim/wallethelper/WalletService;->currentRow(Lcn/jim/wallethelper/WalletService$Snapshot;)Lcn/jim/wallethelper/TaskRules$Row;
    move-result-object v1
    if-nez v1, :ignore
    invoke-direct {p0}, Lcn/jim/wallethelper/WalletService;->now()J
    move-result-wide v1
    iget-wide v3, p0, Lcn/jim/wallethelper/WalletService;->phaseStarted:J
    sub-long/2addr v1, v3
    const-wide/16 v3, 0xbb8
    cmp-long v1, v1, v3
    if-ltz v1, :handled

    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;
    move-result-object v1
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->missingUnconfirmed:Ljava/util/Set;
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->settled:Ljava/util/Set;
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService;->pending:Ljava/util/Set;
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    new-instance v2, Ljava/lang/StringBuilder;
    const-string v1, "下载体验原应用已不在当前列表，按刷新处理，不再回查；领取未确认，继续新任务："
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    iget-object v1, v0, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V

    const/4 v1, 0x0
    iput-object v1, p0, Lcn/jim/wallethelper/WalletService;->current:Lcn/jim/wallethelper/TaskRules$Row;
    iput-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->seeking:Z
    iput-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->claimSubmitted:Z
    iput-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->claimWaitAfterReturn:Z
    iput-boolean v1, p0, Lcn/jim/wallethelper/WalletService;->claimLookupTried:Z
    iput v1, p0, Lcn/jim/wallethelper/WalletService;->stable:I
    iput v1, p0, Lcn/jim/wallethelper/WalletService;->pages:I
    const-string v0, ""
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->previousSignature:Ljava/lang/String;
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->claimProgress:Lcn/jim/wallethelper/ClaimProgress;
    invoke-virtual {v0}, Lcn/jim/wallethelper/ClaimProgress;->reset()V
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->taskLookup:Lcn/jim/wallethelper/TaskLookupProgress;
    invoke-virtual {v0}, Lcn/jim/wallethelper/TaskLookupProgress;->reset()V
    const/4 v0, -0x1
    iput v0, p0, Lcn/jim/wallethelper/WalletService;->claimGestureId:I
    const-string v0, "SCAN"
    const-wide/16 v1, 0x2bc
    invoke-direct {p0, v0, v1, v2}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V
    :handled
    const/4 v0, 0x1
    return v0
    :ignore
    const/4 v0, 0x0
    return v0
.end method
