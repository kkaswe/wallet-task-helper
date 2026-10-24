# Minimal ownership / input bridge. Soda never enters wallet task dispatch.
.method public enterExtraTool()V
    .locals 2
    const-string v0, "已切换到额外工具"
    invoke-direct {p0, v0}, Lcn/jim/wallethelper/WalletService;->stop(Ljava/lang/String;)V
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;
    if-eqz v0, :done
    const/16 v1, 0x8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :done
    return-void
.end method

.method public exitExtraTool()V
    .locals 2
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService;->overlay:Landroid/widget/LinearLayout;
    if-eqz v0, :done
    const/4 v1, 0x0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :done
    return-void
.end method

.method public extraTap(FF)Z
    .locals 8
    new-instance v0, Landroid/graphics/Path;
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V
    new-instance v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    move-object v2, v0
    const-wide/16 v3, 0x0
    const-wide/16 v5, 0x50
    invoke-direct/range {v1 .. v6}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJ)V
    new-instance v0, Landroid/accessibilityservice/GestureDescription$Builder;
    invoke-direct {v0}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V
    invoke-virtual {v0, v1}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;
    invoke-virtual {v0}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;
    move-result-object v0
    const/4 v1, 0x0
    invoke-virtual {p0, v0, v1, v1}, Landroid/accessibilityservice/AccessibilityService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z
    move-result v0
    return v0
.end method
