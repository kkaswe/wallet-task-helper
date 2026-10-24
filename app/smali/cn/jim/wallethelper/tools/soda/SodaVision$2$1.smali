.class Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;
.super Ljava/lang/Object;
.source "SodaVision.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jim/wallethelper/tools/soda/SodaVision$2;->onSuccess(Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/jim/wallethelper/tools/soda/SodaVision$2;

.field private final synthetic val$buffer:Landroid/hardware/HardwareBuffer;

.field private final synthetic val$listener:Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;

.field private final synthetic val$result:Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;

.field private final synthetic val$sourcePackage:Ljava/lang/String;

.field private final synthetic val$sourceWindow:I

.field private final synthetic val$when:J


# direct methods
.method constructor <init>(Lcn/jim/wallethelper/tools/soda/SodaVision$2;Landroid/hardware/HardwareBuffer;Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;JLjava/lang/String;I)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;->this$1:Lcn/jim/wallethelper/tools/soda/SodaVision$2;

    iput-object p2, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;->val$buffer:Landroid/hardware/HardwareBuffer;

    iput-object p3, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;->val$result:Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;

    iput-object p4, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;->val$listener:Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;

    iput-wide p5, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;->val$when:J

    iput-object p7, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;->val$sourcePackage:Ljava/lang/String;

    iput p8, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;->val$sourceWindow:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .line 54
    move-object/from16 v1, p0

    .line 56
    :try_start_0
    iget-object v0, v1, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;->val$buffer:Landroid/hardware/HardwareBuffer;

    iget-object v3, v1, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;->val$result:Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 57
    if-eqz v3, :cond_4

    .line 58
    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 59
    :try_start_2
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 60
    if-ge v10, v11, :cond_3

    .line 61
    int-to-float v0, v11

    const/high16 v6, 0x43ab0000    # 342.0f

    mul-float/2addr v0, v6

    int-to-float v6, v10

    div-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v6, 0x1

    const/16 v7, 0x156

    invoke-static {v5, v7, v0, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 62
    mul-int/lit16 v6, v0, 0x156

    :try_start_3
    new-array v6, v6, [I

    const/16 v17, 0x0

    const/16 v18, 0x156

    const/4 v14, 0x0

    const/16 v15, 0x156

    const/16 v16, 0x0

    move-object v12, v9

    move-object v13, v6

    move/from16 v19, v0

    invoke-virtual/range {v12 .. v19}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 63
    int-to-float v8, v0

    const v12, 0x3e3851ec    # 0.18f

    mul-float/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/16 v12, 0xb4

    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    mul-int/lit16 v12, v8, 0x156

    new-array v13, v12, [I

    invoke-static {v6, v4, v13, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iget-object v4, v1, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;->this$1:Lcn/jim/wallethelper/tools/soda/SodaVision$2;

    invoke-static {v4}, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->access$0(Lcn/jim/wallethelper/tools/soda/SodaVision$2;)Lcn/jim/wallethelper/tools/soda/SodaVision;

    move-result-object v4

    invoke-static {v4}, Lcn/jim/wallethelper/tools/soda/SodaVision;->access$4(Lcn/jim/wallethelper/tools/soda/SodaVision;)Lcn/jim/wallethelper/tools/soda/HeaderVision;

    move-result-object v4

    invoke-virtual {v4, v13, v7, v8}, Lcn/jim/wallethelper/tools/soda/HeaderVision;->detect([III)Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;

    move-result-object v4

    .line 65
    iget-object v12, v1, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;->this$1:Lcn/jim/wallethelper/tools/soda/SodaVision$2;

    invoke-static {v12}, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->access$0(Lcn/jim/wallethelper/tools/soda/SodaVision$2;)Lcn/jim/wallethelper/tools/soda/SodaVision;

    move-result-object v12

    invoke-static {v12}, Lcn/jim/wallethelper/tools/soda/SodaVision;->access$5(Lcn/jim/wallethelper/tools/soda/SodaVision;)Lcn/jim/wallethelper/tools/soda/PopupVision;

    move-result-object v12

    invoke-virtual {v12, v6, v7, v0}, Lcn/jim/wallethelper/tools/soda/PopupVision;->detect([III)Lcn/jim/wallethelper/tools/soda/PopupVision$Result;

    move-result-object v0

    .line 66
    iget-object v6, v1, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;->this$1:Lcn/jim/wallethelper/tools/soda/SodaVision$2;

    invoke-static {v6}, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->access$0(Lcn/jim/wallethelper/tools/soda/SodaVision$2;)Lcn/jim/wallethelper/tools/soda/SodaVision;

    move-result-object v6

    invoke-static {v6}, Lcn/jim/wallethelper/tools/soda/SodaVision;->access$6(Lcn/jim/wallethelper/tools/soda/SodaVision;)Lcn/jim/wallethelper/tools/soda/LiveVision;

    move-result-object v6

    invoke-virtual {v6, v13, v7, v8}, Lcn/jim/wallethelper/tools/soda/LiveVision;->detect([III)Lcn/jim/wallethelper/tools/soda/LiveVision$Result;

    move-result-object v12

    .line 67
    iget-object v6, v1, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;->this$1:Lcn/jim/wallethelper/tools/soda/SodaVision$2;

    invoke-static {v6}, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->access$0(Lcn/jim/wallethelper/tools/soda/SodaVision$2;)Lcn/jim/wallethelper/tools/soda/SodaVision;

    move-result-object v15

    iget-object v14, v1, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;->val$listener:Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;

    new-instance v13, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;

    iget-wide v7, v1, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;->val$when:J

    iget-object v6, v1, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;->val$sourcePackage:Ljava/lang/String;

    iget v2, v1, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;->val$sourceWindow:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v17, v6

    move-object v6, v13

    move-wide/from16 v18, v7

    move-object v7, v4

    move-object v8, v0

    move-object v4, v9

    move-object v9, v12

    move-object v0, v13

    move-wide/from16 v12, v18

    move-object v1, v14

    move-object/from16 v14, v17

    move-object/from16 v17, v3

    move-object v3, v15

    move v15, v2

    :try_start_4
    invoke-direct/range {v6 .. v15}, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;-><init>(Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;Lcn/jim/wallethelper/tools/soda/PopupVision$Result;Lcn/jim/wallethelper/tools/soda/LiveVision$Result;IIJLjava/lang/String;I)V

    const/4 v2, 0x0

    invoke-static {v3, v1, v0, v2}, Lcn/jim/wallethelper/tools/soda/SodaVision;->access$2(Lcn/jim/wallethelper/tools/soda/SodaVision;Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;Lcn/jim/wallethelper/tools/soda/SodaVision$Result;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 68
    nop

    .line 69
    if-eqz v4, :cond_0

    if-eq v4, v5, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move-object/from16 v1, p0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    move-object/from16 v1, p0

    move-object v9, v4

    move-object/from16 v3, v17

    goto :goto_5

    .line 69
    :catchall_1
    move-exception v0

    move-object/from16 v17, v3

    move-object v4, v9

    :goto_0
    move-object v2, v4

    goto/16 :goto_7

    .line 68
    :catch_1
    move-exception v0

    move-object/from16 v17, v3

    move-object v4, v9

    goto :goto_5

    .line 60
    :cond_3
    move-object/from16 v17, v3

    :try_start_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "\u8bf7\u4f7f\u7528\u7ad6\u5c4f"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 69
    :catchall_2
    move-exception v0

    goto :goto_1

    .line 68
    :catch_2
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_4

    .line 69
    :catchall_3
    move-exception v0

    move-object/from16 v17, v3

    :goto_1
    const/4 v2, 0x0

    goto :goto_7

    .line 68
    :catch_3
    move-exception v0

    move-object/from16 v17, v3

    goto :goto_4

    .line 69
    :catchall_4
    move-exception v0

    move-object/from16 v17, v3

    :goto_2
    const/4 v2, 0x0

    const/4 v5, 0x0

    goto :goto_7

    .line 68
    :catch_4
    move-exception v0

    move-object/from16 v17, v3

    goto :goto_3

    .line 57
    :cond_4
    move-object/from16 v17, v3

    :try_start_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "empty bitmap"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 69
    :catchall_5
    move-exception v0

    goto :goto_2

    .line 68
    :catch_5
    move-exception v0

    move-object/from16 v3, v17

    goto :goto_3

    .line 69
    :catchall_6
    move-exception v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v17, 0x0

    goto :goto_7

    .line 68
    :catch_6
    move-exception v0

    const/4 v3, 0x0

    :goto_3
    const/4 v5, 0x0

    :goto_4
    const/4 v9, 0x0

    :goto_5
    :try_start_7
    iget-object v2, v1, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;->this$1:Lcn/jim/wallethelper/tools/soda/SodaVision$2;

    invoke-static {v2}, Lcn/jim/wallethelper/tools/soda/SodaVision$2;->access$0(Lcn/jim/wallethelper/tools/soda/SodaVision$2;)Lcn/jim/wallethelper/tools/soda/SodaVision;

    move-result-object v2

    iget-object v4, v1, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;->val$listener:Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u622a\u56fe\u8bc6\u522b\u5931\u8d25\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v2, v4, v6, v0}, Lcn/jim/wallethelper/tools/soda/SodaVision;->access$2(Lcn/jim/wallethelper/tools/soda/SodaVision;Lcn/jim/wallethelper/tools/soda/SodaVision$Listener;Lcn/jim/wallethelper/tools/soda/SodaVision$Result;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 69
    if-eqz v9, :cond_5

    if-eq v9, v5, :cond_5

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    :goto_6
    iget-object v0, v1, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;->val$buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 70
    return-void

    .line 69
    :catchall_7
    move-exception v0

    move-object/from16 v17, v3

    move-object v2, v9

    :goto_7
    if-eqz v2, :cond_8

    if-eq v2, v5, :cond_8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_9
    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    iget-object v2, v1, Lcn/jim/wallethelper/tools/soda/SodaVision$2$1;->val$buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->close()V

    throw v0
.end method
