.class Lcn/jim/wallethelper/WalletService$2;
.super Ljava/lang/Object;
.source "WalletService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jim/wallethelper/WalletService;->showOverlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ox:I

.field oy:I

.field sx:F

.field sy:F

.field final synthetic this$0:Lcn/jim/wallethelper/WalletService;


# direct methods
.method constructor <init>(Lcn/jim/wallethelper/WalletService;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcn/jim/wallethelper/WalletService$2;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 185
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 186
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcn/jim/wallethelper/WalletService$2;->sx:F

    .line 187
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcn/jim/wallethelper/WalletService$2;->sy:F

    .line 188
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService$2;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {p1}, Lcn/jim/wallethelper/WalletService;->access$7(Lcn/jim/wallethelper/WalletService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lcn/jim/wallethelper/WalletService$2;->ox:I

    .line 189
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService$2;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {p1}, Lcn/jim/wallethelper/WalletService;->access$7(Lcn/jim/wallethelper/WalletService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcn/jim/wallethelper/WalletService$2;->oy:I

    .line 190
    return v0

    .line 192
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 193
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService$2;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {p1}, Lcn/jim/wallethelper/WalletService;->access$7(Lcn/jim/wallethelper/WalletService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p0, Lcn/jim/wallethelper/WalletService$2;->ox:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcn/jim/wallethelper/WalletService$2;->sx:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 194
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService$2;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {p1}, Lcn/jim/wallethelper/WalletService;->access$7(Lcn/jim/wallethelper/WalletService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p0, Lcn/jim/wallethelper/WalletService$2;->oy:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v3, p0, Lcn/jim/wallethelper/WalletService$2;->sy:F

    sub-float/2addr p2, v3

    float-to-int p2, p2

    add-int/2addr v1, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 195
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService$2;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {p1}, Lcn/jim/wallethelper/WalletService;->access$8(Lcn/jim/wallethelper/WalletService;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcn/jim/wallethelper/WalletService$2;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {p2}, Lcn/jim/wallethelper/WalletService;->access$9(Lcn/jim/wallethelper/WalletService;)Landroid/widget/LinearLayout;

    move-result-object p2

    iget-object v1, p0, Lcn/jim/wallethelper/WalletService$2;->this$0:Lcn/jim/wallethelper/WalletService;

    invoke-static {v1}, Lcn/jim/wallethelper/WalletService;->access$7(Lcn/jim/wallethelper/WalletService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    return v0

    .line 198
    :cond_1
    return v0
.end method
