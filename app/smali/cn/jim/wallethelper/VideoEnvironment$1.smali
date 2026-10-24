.class Lcn/jim/wallethelper/VideoEnvironment$1;
.super Ljava/lang/Object;
.source "VideoEnvironment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jim/wallethelper/VideoEnvironment;->restore(Landroid/accessibilityservice/AccessibilityService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field applied:Z

.field stableSince:J

.field final synthetic val$c:Landroid/accessibilityservice/AccessibilityService;

.field final synthetic val$p:Landroid/content/SharedPreferences;

.field final synthetic val$started:J

.field final synthetic val$target:I


# direct methods
.method constructor <init>(Landroid/accessibilityservice/AccessibilityService;ILandroid/content/SharedPreferences;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcn/jim/wallethelper/VideoEnvironment$1;->val$c:Landroid/accessibilityservice/AccessibilityService;

    iput p2, p0, Lcn/jim/wallethelper/VideoEnvironment$1;->val$target:I

    iput-object p3, p0, Lcn/jim/wallethelper/VideoEnvironment$1;->val$p:Landroid/content/SharedPreferences;

    iput-wide p4, p0, Lcn/jim/wallethelper/VideoEnvironment$1;->val$started:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcn/jim/wallethelper/VideoEnvironment$1;->stableSince:J

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 48
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 50
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    :try_start_7
    iget-object v5, p0, Lcn/jim/wallethelper/VideoEnvironment$1;->val$c:Landroid/accessibilityservice/AccessibilityService;

    # invokes: Lcn/jim/wallethelper/VideoEnvironment;->audio(Landroid/content/Context;)Landroid/media/AudioManager;
    invoke-static {v5}, Lcn/jim/wallethelper/VideoEnvironment;->access$000(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v5

    .line 51
    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v7

    .line 52
    iget-boolean v8, p0, Lcn/jim/wallethelper/VideoEnvironment$1;->applied:Z

    if-eqz v8, :cond_74

    iget v8, p0, Lcn/jim/wallethelper/VideoEnvironment$1;->val$target:I

    if-eq v7, v8, :cond_1b

    goto :goto_74

    .line 56
    :cond_1b
    iget-wide v5, p0, Lcn/jim/wallethelper/VideoEnvironment$1;->stableSince:J

    const-wide/16 v8, 0x0

    cmp-long v5, v5, v8

    if-gez v5, :cond_25

    iput-wide v0, p0, Lcn/jim/wallethelper/VideoEnvironment$1;->stableSince:J

    .line 57
    :cond_25
    iget-wide v5, p0, Lcn/jim/wallethelper/VideoEnvironment$1;->stableSince:J

    sub-long v5, v0, v5

    const-wide/16 v8, 0x5dc

    cmp-long v5, v5, v8

    if-ltz v5, :cond_7e

    .line 58
    iget-object v5, p0, Lcn/jim/wallethelper/VideoEnvironment$1;->val$p:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "pending"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "wifi"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 59
    # setter for: Lcn/jim/wallethelper/VideoEnvironment;->restoring:Z
    invoke-static {v4}, Lcn/jim/wallethelper/VideoEnvironment;->access$102(Z)Z

    const/4 v5, 0x0

    sput-object v5, Lcn/jim/wallethelper/VideoEnvironment;->error:Ljava/lang/String;

    .line 60
    iget-object v5, p0, Lcn/jim/wallethelper/VideoEnvironment$1;->val$c:Landroid/accessibilityservice/AccessibilityService;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u5df2\u6062\u590d\u5a92\u4f53\u97f3\u91cf="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\uff0c\u5ef6\u8fdf\u590d\u6838\u901a\u8fc7\uff1b\u7f51\u7edc\u6062\u590d\u72b6\u6001\u53e6\u884c\u8bb0\u5f55"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcn/jim/wallethelper/VideoEnvironment;->log(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcn/jim/wallethelper/VideoEnvironment;->access$200(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 58
    :cond_6c
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "\u6062\u590d\u8bb0\u5f55\u4fdd\u5b58\u5931\u8d25"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 53
    :cond_74
    :goto_74
    iget v7, p0, Lcn/jim/wallethelper/VideoEnvironment$1;->val$target:I

    invoke-virtual {v5, v6, v7, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 54
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcn/jim/wallethelper/VideoEnvironment$1;->applied:Z

    iput-wide v2, p0, Lcn/jim/wallethelper/VideoEnvironment$1;->stableSince:J
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7e} :catch_7f

    .line 63
    :cond_7e
    goto :goto_a7

    :catch_7f
    move-exception v5

    iput-wide v2, p0, Lcn/jim/wallethelper/VideoEnvironment$1;->stableSince:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcn/jim/wallethelper/VideoEnvironment;->error:Ljava/lang/String;

    .line 64
    :goto_a7
    iget-wide v2, p0, Lcn/jim/wallethelper/VideoEnvironment$1;->val$started:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-ltz v0, :cond_d8

    .line 65
    # setter for: Lcn/jim/wallethelper/VideoEnvironment;->restoring:Z
    invoke-static {v4}, Lcn/jim/wallethelper/VideoEnvironment;->access$102(Z)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5a92\u4f53\u97f3\u91cf\u6062\u590d\u672a\u5b8c\u6210\uff0c\u76ee\u6807="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jim/wallethelper/VideoEnvironment$1;->val$target:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff1b\u4fdd\u7559\u6062\u590d\u8bb0\u5f55\uff0c\u670d\u52a1\u91cd\u8fde\u65f6\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jim/wallethelper/VideoEnvironment;->error:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcn/jim/wallethelper/VideoEnvironment$1;->val$c:Landroid/accessibilityservice/AccessibilityService;

    sget-object v1, Lcn/jim/wallethelper/VideoEnvironment;->error:Ljava/lang/String;

    # invokes: Lcn/jim/wallethelper/VideoEnvironment;->log(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcn/jim/wallethelper/VideoEnvironment;->access$200(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 68
    :cond_d8
    # getter for: Lcn/jim/wallethelper/VideoEnvironment;->recovery:Landroid/os/Handler;
    invoke-static {}, Lcn/jim/wallethelper/VideoEnvironment;->access$300()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69
    return-void
.end method
