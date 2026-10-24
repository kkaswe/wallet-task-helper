.class Lcn/jim/wallethelper/WalletService$3;
.super Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
.source "WalletService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jim/wallethelper/WalletService;->tapAt(FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jim/wallethelper/WalletService;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lcn/jim/wallethelper/WalletService;I)V
    .locals 0

    .line 845
    iput-object p1, p0, Lcn/jim/wallethelper/WalletService$3;->this$0:Lcn/jim/wallethelper/WalletService;

    iput p2, p0, Lcn/jim/wallethelper/WalletService$3;->val$id:I

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/accessibilityservice/GestureDescription;)V
    .locals 2

    .line 851
    iget p1, p0, Lcn/jim/wallethelper/WalletService$3;->val$id:I

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService$3;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {v0}, Lcn/jim/wallethelper/WalletService;->access$10(Lcn/jim/wallethelper/WalletService;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcn/jim/wallethelper/WalletService$3;->this$0:Lcn/jim/wallethelper/WalletService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cancelled #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/jim/wallethelper/WalletService$3;->val$id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jim/wallethelper/WalletService;->access$11(Lcn/jim/wallethelper/WalletService;Ljava/lang/String;)V

    .line 852
    :cond_0
    iget p1, p0, Lcn/jim/wallethelper/WalletService$3;->val$id:I

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService$3;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {v0}, Lcn/jim/wallethelper/WalletService;->access$12(Lcn/jim/wallethelper/WalletService;)I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcn/jim/wallethelper/WalletService$3;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {p1}, Lcn/jim/wallethelper/WalletService;->access$13(Lcn/jim/wallethelper/WalletService;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/jim/wallethelper/WalletService$3;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {p1}, Lcn/jim/wallethelper/WalletService;->access$14(Lcn/jim/wallethelper/WalletService;)Lcn/jim/wallethelper/ClaimProgress;

    move-result-object p1

    invoke-virtual {p1}, Lcn/jim/wallethelper/ClaimProgress;->gestureCancelled()V

    .line 853
    :cond_1
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService$3;->this$0:Lcn/jim/wallethelper/WalletService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u70b9\u6309\u624b\u52bf\u88ab\u53d6\u6d88 #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/jim/wallethelper/WalletService$3;->val$id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jim/wallethelper/LocalLog;->add(Landroid/content/Context;Ljava/lang/String;)V

    .line 854
    return-void
.end method

.method public onCompleted(Landroid/accessibilityservice/GestureDescription;)V
    .locals 2

    .line 847
    iget p1, p0, Lcn/jim/wallethelper/WalletService$3;->val$id:I

    iget-object v0, p0, Lcn/jim/wallethelper/WalletService$3;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {v0}, Lcn/jim/wallethelper/WalletService;->access$10(Lcn/jim/wallethelper/WalletService;)I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcn/jim/wallethelper/WalletService$3;->this$0:Lcn/jim/wallethelper/WalletService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "completed #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/jim/wallethelper/WalletService$3;->val$id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jim/wallethelper/WalletService;->access$11(Lcn/jim/wallethelper/WalletService;Ljava/lang/String;)V

    .line 848
    :cond_0
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService$3;->this$0:Lcn/jim/wallethelper/WalletService;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u70b9\u6309\u624b\u52bf\u5b8c\u6210 #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/jim/wallethelper/WalletService$3;->val$id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff08\u4e0d\u7b49\u4e8e\u4efb\u52a1\u5df2\u5b8c\u6210\uff09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/jim/wallethelper/LocalLog;->add(Landroid/content/Context;Ljava/lang/String;)V

    .line 849
    return-void
.end method
