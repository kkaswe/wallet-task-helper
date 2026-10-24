.class Lcn/jim/wallethelper/tools/soda/SodaVision$2;
.super Ljava/lang/Object;
.source "SodaVision.java"

# interfaces
.implements Landroid/accessibilityservice/AccessibilityService$TakeScreenshotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jim/wallethelper/tools/soda/SodaVision;->request(Landroid/accessibilityservice/AccessibilityService;Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jim/wallethelper/tools/soda/SodaVision;

.field private final synthetic val$listener:Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;

.field private final synthetic val$service:Landroid/accessibilityservice/AccessibilityService;

.field private final synthetic val$sourcePackage:Ljava/lang/String;

.field private final synthetic val$sourceWindow:I

.field private final synthetic val$when:J


# direct methods
.method constructor <init>(Lcn/jim/wallethelper/tools/soda/SodaVision;Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;Landroid/accessibilityservice/AccessibilityService;Ljava/lang/String;IJ)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->this$0:Lcn/jim/wallethelper/tools/soda/SodaVision;

    iput-object p2, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->val$listener:Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;

    iput-object p3, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->val$service:Landroid/accessibilityservice/AccessibilityService;

    iput-object p4, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->val$sourcePackage:Ljava/lang/String;

    iput p5, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->val$sourceWindow:I

    iput-wide p6, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->val$when:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcn/jim/wallethelper/tools/soda/SodaVision$2;)Lcn/jim/wallethelper/tools/soda/SodaVision;
    .locals 0

    .line 44
    iget-object p0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->this$0:Lcn/jim/wallethelper/tools/soda/SodaVision;

    return-object p0
.end method


# virtual methods
.method public onFailure(I)V
    .locals 4

    .line 45
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->this$0:Lcn/jim/wallethelper/tools/soda/SodaVision;

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->val$listener:Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u622a\u56fe\u5931\u8d25("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ")\uff1a\u8bf7\u5173\u95ed\u518d\u5f00\u542f\u65e0\u969c\u788d\uff1b\u53d7\u4fdd\u62a4\u9875\u9762\u65e0\u6cd5\u622a\u56fe"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcn/jim/wallethelper/tools/soda/SodaVision;->access$2(Lcn/jim/wallethelper/tools/soda/SodaVision;Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;Lcn/jim/wallethelper/tools/soda/SodaVision$Result;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)V
    .locals 13

    .line 47
    invoke-virtual {p1}, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v9

    .line 48
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->this$0:Lcn/jim/wallethelper/tools/soda/SodaVision;

    invoke-static {v0}, Lcn/jim/wallethelper/tools/soda/SodaVision;->access$1(Lcn/jim/wallethelper/tools/soda/SodaVision;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Landroid/hardware/HardwareBuffer;->close()V

    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->this$0:Lcn/jim/wallethelper/tools/soda/SodaVision;

    invoke-static {p1, v1}, Lcn/jim/wallethelper/tools/soda/SodaVision;->access$0(Lcn/jim/wallethelper/tools/soda/SodaVision;Z)V

    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->val$service:Landroid/accessibilityservice/AccessibilityService;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->val$sourcePackage:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->val$sourceWindow:I

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 51
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 52
    :cond_2
    const/4 v10, 0x0

    if-nez v1, :cond_3

    invoke-virtual {v9}, Landroid/hardware/HardwareBuffer;->close()V

    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->this$0:Lcn/jim/wallethelper/tools/soda/SodaVision;

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->val$listener:Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;

    const-string v1, "\u622a\u56fe\u671f\u95f4\u5e94\u7528\u7a97\u53e3\u53d8\u5316\uff0c\u672c\u5e27\u5df2\u4e22\u5f03"

    invoke-static {p1, v0, v10, v1}, Lcn/jim/wallethelper/tools/soda/SodaVision;->access$2(Lcn/jim/wallethelper/tools/soda/SodaVision;Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;Lcn/jim/wallethelper/tools/soda/SodaVision$Result;Ljava/lang/String;)V

    return-void

    .line 53
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->this$0:Lcn/jim/wallethelper/tools/soda/SodaVision;

    invoke-static {v0}, Lcn/jim/wallethelper/tools/soda/SodaVision;->access$3(Lcn/jim/wallethelper/tools/soda/SodaVision;)Ljava/util/concurrent/ExecutorService;

    move-result-object v11

    new-instance v12, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;

    iget-object v4, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->val$listener:Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;

    iget-wide v5, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->val$when:J

    iget-object v7, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->val$sourcePackage:Ljava/lang/String;

    iget v8, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->val$sourceWindow:I

    move-object v0, v12

    move-object v1, p0

    move-object v2, v9

    move-object v3, p1

    invoke-direct/range {v0 .. v8}, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;-><init>(Lcn/jim/wallethelper/tools/soda/SodaVision$2;Landroid/hardware/HardwareBuffer;Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;JLjava/lang/String;I)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {v9}, Landroid/hardware/HardwareBuffer;->close()V

    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->this$0:Lcn/jim/wallethelper/tools/soda/SodaVision;

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->val$listener:Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;

    const-string v1, "\u8bc6\u522b\u5df2\u505c\u6b62"

    invoke-static {p1, v0, v10, v1}, Lcn/jim/wallethelper/tools/soda/SodaVision;->access$2(Lcn/jim/wallethelper/tools/soda/SodaVision;Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;Lcn/jim/wallethelper/tools/soda/SodaVision$Result;Ljava/lang/String;)V

    .line 71
    :goto_0
    return-void
.end method
