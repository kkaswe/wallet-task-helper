.class public final Lcn/jim/wallethelper/ClaimProgress;
.super Ljava/lang/Object;
.source "ClaimProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jim/wallethelper/ClaimProgress$Decision;
    }
.end annotation


# instance fields
.field private attempts:I

.field private cancelled:Z

.field private rewardSeen:Z

.field private submittedAt:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public attempts()I
    .locals 1

    .line 18
    iget v0, p0, Lcn/jim/wallethelper/ClaimProgress;->attempts:I

    return v0
.end method

.method public decision(JZ)Lcn/jim/wallethelper/ClaimProgress$Decision;
    .locals 4

    .line 21
    iget v0, p0, Lcn/jim/wallethelper/ClaimProgress;->attempts:I

    if-nez v0, :cond_0

    sget-object p1, Lcn/jim/wallethelper/ClaimProgress$Decision;->WAIT:Lcn/jim/wallethelper/ClaimProgress$Decision;

    return-object p1

    .line 22
    :cond_0
    iget-boolean v0, p0, Lcn/jim/wallethelper/ClaimProgress;->cancelled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/jim/wallethelper/ClaimProgress;->rewardSeen:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x7d0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x7530

    .line 23
    :goto_0
    iget-wide v2, p0, Lcn/jim/wallethelper/ClaimProgress;->submittedAt:J

    sub-long/2addr p1, v2

    cmp-long p1, p1, v0

    if-gez p1, :cond_2

    sget-object p1, Lcn/jim/wallethelper/ClaimProgress$Decision;->WAIT:Lcn/jim/wallethelper/ClaimProgress$Decision;

    return-object p1

    .line 24
    :cond_2
    if-eqz p3, :cond_3

    iget-boolean p1, p0, Lcn/jim/wallethelper/ClaimProgress;->rewardSeen:Z

    if-nez p1, :cond_3

    iget p1, p0, Lcn/jim/wallethelper/ClaimProgress;->attempts:I

    const/4 p2, 0x2

    if-ge p1, p2, :cond_3

    sget-object p1, Lcn/jim/wallethelper/ClaimProgress$Decision;->RETRY:Lcn/jim/wallethelper/ClaimProgress$Decision;

    return-object p1

    .line 25
    :cond_3
    sget-object p1, Lcn/jim/wallethelper/ClaimProgress$Decision;->STOP:Lcn/jim/wallethelper/ClaimProgress$Decision;

    return-object p1
.end method

.method public gestureCancelled()V
    .locals 1

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jim/wallethelper/ClaimProgress;->cancelled:Z

    return-void
.end method

.method public reset()V
    .locals 3

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcn/jim/wallethelper/ClaimProgress;->attempts:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcn/jim/wallethelper/ClaimProgress;->submittedAt:J

    iput-boolean v0, p0, Lcn/jim/wallethelper/ClaimProgress;->rewardSeen:Z

    iput-boolean v0, p0, Lcn/jim/wallethelper/ClaimProgress;->cancelled:Z

    return-void
.end method

.method public restartWait(J)V
    .locals 0

    .line 17
    iput-wide p1, p0, Lcn/jim/wallethelper/ClaimProgress;->submittedAt:J

    return-void
.end method

.method public rewardSeen()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcn/jim/wallethelper/ClaimProgress;->rewardSeen:Z

    return v0
.end method

.method public sawReward()V
    .locals 1

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jim/wallethelper/ClaimProgress;->rewardSeen:Z

    return-void
.end method

.method public submitted(J)V
    .locals 2

    .line 12
    iget v0, p0, Lcn/jim/wallethelper/ClaimProgress;->attempts:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcn/jim/wallethelper/ClaimProgress;->rewardSeen:Z

    if-nez v0, :cond_0

    .line 13
    iget v0, p0, Lcn/jim/wallethelper/ClaimProgress;->attempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jim/wallethelper/ClaimProgress;->attempts:I

    iput-wide p1, p0, Lcn/jim/wallethelper/ClaimProgress;->submittedAt:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcn/jim/wallethelper/ClaimProgress;->cancelled:Z

    .line 14
    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Claim cannot be resubmitted"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
