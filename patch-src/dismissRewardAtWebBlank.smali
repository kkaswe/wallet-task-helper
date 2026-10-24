.method private dismissRewardAtWebBlank(Lcn/jim/wallethelper/WalletService$Snapshot;)Z
    .locals 8
    iget-object v0, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;
    iget v1, p0, Lcn/jim/wallethelper/WalletService;->screenW:I
    iget v2, p0, Lcn/jim/wallethelper/WalletService;->screenH:I
    iget v3, p0, Lcn/jim/wallethelper/WalletService;->rewardDismissAttempts:I
    mul-int/lit8 v3, v3, 0x3
    const/4 v4, 0x0
    :blank_loop
    invoke-static {v0, v1, v2, v3}, Lcn/jim/wallethelper/RewardDismissRules;->point(Ljava/util/List;III)[F
    move-result-object v5
    if-eqz v5, :blank_next
    const/4 v6, 0x0
    aget v6, v5, v6
    const/4 v7, 0x1
    aget v7, v5, v7
    invoke-direct {p0, v6, v7}, Lcn/jim/wallethelper/WalletService;->tapAt(FF)Z
    move-result v6
    if-eqz v6, :blank_next
    invoke-static {v5}, Lcn/jim/wallethelper/RewardDismissRules;->describe([F)Ljava/lang/String;
    move-result-object v5
    invoke-static {p0, v5}, Lcn/jim/wallethelper/LocalLog;->add(Landroid/content/Context;Ljava/lang/String;)V
    const/4 v6, 0x1
    return v6
    :blank_next
    add-int/lit8 v3, v3, 0x1
    add-int/lit8 v4, v4, 0x1
    const/4 v5, 0x3
    if-lt v4, v5, :blank_loop
    const/4 v6, 0x0
    return v6
.end method
