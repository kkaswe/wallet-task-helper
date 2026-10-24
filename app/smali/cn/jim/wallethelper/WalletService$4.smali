.class Lcn/jim/wallethelper/WalletService$4;
.super Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
.source "WalletService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jim/wallethelper/WalletService;->returnToWallet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jim/wallethelper/WalletService;

.field private final synthetic val$endY:F

.field private final synthetic val$stroke:Landroid/accessibilityservice/GestureDescription$StrokeDescription;

.field private final synthetic val$x:F


# direct methods
.method constructor <init>(Lcn/jim/wallethelper/WalletService;FFLandroid/accessibilityservice/GestureDescription$StrokeDescription;)V
    .locals 0

    .line 929
    iput-object p1, p0, Lcn/jim/wallethelper/WalletService$4;->this$0:Lcn/jim/wallethelper/WalletService;

    iput p2, p0, Lcn/jim/wallethelper/WalletService$4;->val$x:F

    iput p3, p0, Lcn/jim/wallethelper/WalletService$4;->val$endY:F

    iput-object p4, p0, Lcn/jim/wallethelper/WalletService$4;->val$stroke:Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Landroid/accessibilityservice/GestureDescription;)V
    .locals 1

    .line 940
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService$4;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {p1}, Lcn/jim/wallethelper/WalletService;->access$0(Lcn/jim/wallethelper/WalletService;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/jim/wallethelper/WalletService$4;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {p1}, Lcn/jim/wallethelper/WalletService;->access$1(Lcn/jim/wallethelper/WalletService;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/jim/wallethelper/WalletService$4;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {p1}, Lcn/jim/wallethelper/WalletService;->access$15(Lcn/jim/wallethelper/WalletService;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RECENTS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/jim/wallethelper/WalletService$4;->this$0:Lcn/jim/wallethelper/WalletService;

    const-string v0, "\u5207\u6362\u5e94\u7528\u624b\u52bf\u88ab\u53d6\u6d88\uff0c\u8bf7\u624b\u52a8\u5207\u56de\u94b1\u5305\u540e\u7ee7\u7eed"

    # RECENTS timeout performs the bounded return retry.

    .line 941
    :cond_0
    return-void
.end method

.method public onCompleted(Landroid/accessibilityservice/GestureDescription;)V
    .locals 9

    .line 933
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget p1, p0, Lcn/jim/wallethelper/WalletService$4;->val$x:F

    iget v0, p0, Lcn/jim/wallethelper/WalletService$4;->val$endY:F

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 934
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService$4;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {p1}, Lcn/jim/wallethelper/WalletService;->access$0(Lcn/jim/wallethelper/WalletService;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/jim/wallethelper/WalletService$4;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {p1}, Lcn/jim/wallethelper/WalletService;->access$1(Lcn/jim/wallethelper/WalletService;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/jim/wallethelper/WalletService$4;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {p1}, Lcn/jim/wallethelper/WalletService;->access$15(Lcn/jim/wallethelper/WalletService;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "RECENTS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 935
    :goto_0
    iget-object v2, p0, Lcn/jim/wallethelper/WalletService$4;->val$stroke:Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    if-eqz p1, :cond_1

    const/16 v0, 0x226

    :cond_1
    int-to-long v4, v0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v0, v2

    move-wide v2, v7

    invoke-virtual/range {v0 .. v6}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->continueStroke(Landroid/graphics/Path;JJZ)Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    move-result-object v0

    .line 936
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService$4;->this$0:Lcn/jim/wallethelper/WalletService;

    new-instance v2, Landroid/accessibilityservice/GestureDescription$Builder;

    invoke-direct {v2}, Landroid/accessibilityservice/GestureDescription$Builder;-><init>()V

    invoke-virtual {v2, v0}, Landroid/accessibilityservice/GestureDescription$Builder;->addStroke(Landroid/accessibilityservice/GestureDescription$StrokeDescription;)Landroid/accessibilityservice/GestureDescription$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accessibilityservice/GestureDescription$Builder;->build()Landroid/accessibilityservice/GestureDescription;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Lcn/jim/wallethelper/WalletService;->dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 937
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/jim/wallethelper/WalletService$4;->this$0:Lcn/jim/wallethelper/WalletService;

    const-string v0, "\u5e95\u90e8\u4e0a\u6ed1\u505c\u987f\u624b\u52bf\u672a\u5b8c\u6210\uff0c\u8bf7\u624b\u52a8\u5207\u56de\u94b1\u5305\u540e\u7ee7\u7eed"

    # RECENTS timeout performs the bounded return retry.

    .line 938
    :cond_2
    return-void
.end method
