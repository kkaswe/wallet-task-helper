.class Lcn/jim/wallethelper/tools/soda/SodaController$2;
.super Ljava/lang/Object;
.source "SodaController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jim/wallethelper/tools/soda/SodaController;->overlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field px:I

.field py:I

.field final synthetic this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

.field x:F

.field y:F


# direct methods
.method constructor <init>(Lcn/jim/wallethelper/tools/soda/SodaController;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$2;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 65
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$2;->x:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$2;->y:F

    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$2;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {p1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$5(Lcn/jim/wallethelper/tools/soda/SodaController;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$2;->px:I

    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$2;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {p1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$5(Lcn/jim/wallethelper/tools/soda/SodaController;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$2;->py:I

    return v0

    .line 66
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$2;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {p1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$5(Lcn/jim/wallethelper/tools/soda/SodaController;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$2;->px:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcn/jim/wallethelper/tools/soda/SodaController$2;->x:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$2;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {p1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$5(Lcn/jim/wallethelper/tools/soda/SodaController;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$2;->py:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iget v3, p0, Lcn/jim/wallethelper/tools/soda/SodaController$2;->y:F

    sub-float/2addr p2, v3

    float-to-int p2, p2

    add-int/2addr v1, p2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$2;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {p1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$6(Lcn/jim/wallethelper/tools/soda/SodaController;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcn/jim/wallethelper/tools/soda/SodaController$2;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {p2}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$7(Lcn/jim/wallethelper/tools/soda/SodaController;)Landroid/widget/LinearLayout;

    move-result-object p2

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaController$2;->this$0:Lcn/jim/wallethelper/tools/soda/SodaController;

    invoke-static {v1}, Lcn/jim/wallethelper/tools/soda/SodaController;->access$5(Lcn/jim/wallethelper/tools/soda/SodaController;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return v0
.end method
