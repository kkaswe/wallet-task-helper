.method public startWalletVideo()V
    .locals 3
    iget-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->running:Z
    if-eqz v0, :idle
    const-string v0, "任务正在运行，请先停止后再单独运行视频"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    return-void
    :idle
    const-string v0, "开始单独运行视频任务"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    invoke-virtual {p0}, Lcn/jim/wallethelper/WalletService;->showOverlay()V
    const-string v0, "com.hihonor.wallet"
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->wallet:Ljava/lang/String;
    const/4 v0, 0x1
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->videoOnly:Z
    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService;->running:Z
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->keepScreen(Z)V
    invoke-static {p0}, Lcn/jim/wallethelper/WalletEntry;->open(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :opened
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    return-void
    :opened
    const-string v0, "视频任务结束"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->beginVideo(Ljava/lang/String;)V
    return-void
.end method

.method private beginVideo(Ljava/lang/String;)V
    .locals 3
    iput-object p1, p0, Lcn/jim/wallethelper/WalletService;->videoFinishMessage:Ljava/lang/String;
    new-instance v0, Lcn/jim/wallethelper/WalletVideo;
    invoke-direct {v0}, Lcn/jim/wallethelper/WalletVideo;-><init>()V
    iput-object v0, p0, Lcn/jim/wallethelper/WalletService;->videoTask:Lcn/jim/wallethelper/WalletVideo;
    const-string v0, "VIDEO"
    const-wide/16 v1, 0x3e8
    invoke-direct {p0, v0, v1, v2}, Lcn/jim/wallethelper/WalletService;->transition(Ljava/lang/String;J)V
    const-string v0, "开始视频模块：定位卡片，按实际奖励状态领取"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    return-void
.end method

.method private videoStep(Lcn/jim/wallethelper/WalletService$Snapshot;)V
    .locals 6
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->videoTask:Lcn/jim/wallethelper/WalletVideo;
    if-eqz v0, :missing
    iget-object v1, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->nodes:Ljava/util/List;
    iget-object v2, p1, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;
    iget v3, p0, Lcn/jim/wallethelper/WalletService;->screenW:I
    iget v4, p0, Lcn/jim/wallethelper/WalletService;->screenH:I
    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/jim/wallethelper/WalletVideo;->step(Ljava/util/List;Ljava/lang/String;II)I
    move-result v5
    iget-object v1, v0, Lcn/jim/wallethelper/WalletVideo;->message:Ljava/lang/String;
    if-eqz v1, :noted
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->note(Ljava/lang/String;)V
    :noted
    if-ltz v5, :failed
    const/4 v1, 0x1
    if-ne v5, v1, :scroll
    iget-object v1, v0, Lcn/jim/wallethelper/WalletVideo;->summary:Ljava/lang/String;
    iget-boolean v2, p0, Lcn/jim/wallethelper/WalletService;->videoOnly:Z
    if-eqz v2, :continue_pass
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    return-void
    :continue_pass
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    iget-object v3, p0, Lcn/jim/wallethelper/WalletService;->videoFinishMessage:Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, "；"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    return-void
    :scroll
    const/4 v1, 0x2
    if-ne v5, v1, :click
    int-to-float v3, v3
    int-to-float v4, v4
    const v1, 0x3f4ccccd
    mul-float v2, v3, v1
    mul-float v1, v4, v1
    const v3, 0x3eb33333
    mul-float v4, v4, v3
    invoke-direct {p0, v2, v1, v2, v4}, Lcn/jim/wallethelper/WalletService;->swipe(FFFF)V
    goto :wait
    :click
    const/4 v1, 0x3
    if-ne v5, v1, :open
    iget v1, v0, Lcn/jim/wallethelper/WalletVideo;->index:I
    invoke-direct {p0, p1, v1}, Lcn/jim/wallethelper/WalletService;->click(Lcn/jim/wallethelper/WalletService$Snapshot;I)Z
    move-result v1
    if-eqz v1, :click_failed
    goto :wait
    :open
    const/4 v1, 0x4
    if-ne v5, v1, :dismiss
    invoke-static {p0}, Lcn/jim/wallethelper/WalletEntry;->open(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :wait
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    return-void
    :dismiss
    const/4 v1, 0x5
    if-ne v5, v1, :wait
    int-to-float v3, v3
    int-to-float v4, v4
    const v1, 0x3f666666
    mul-float v3, v3, v1
    const v1, 0x3e19999a
    mul-float v4, v4, v1
    invoke-direct {p0, v3, v4}, Lcn/jim/wallethelper/WalletService;->tapAt(FF)Z
    :wait
    const-wide/16 v1, 0x12c
    invoke-direct {p0, v1, v2}, Lcn/jim/wallethelper/WalletService;->waitFor(J)V
    return-void
    :failed
    iget-object v1, v0, Lcn/jim/wallethelper/WalletVideo;->summary:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    return-void
    :click_failed
    const-string v1, "视频按钮点击未送达，已停止，请检查浮窗是否遮挡"
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    return-void
    :missing
    const-string v1, "视频任务状态丢失，已停止"
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    return-void
.end method
