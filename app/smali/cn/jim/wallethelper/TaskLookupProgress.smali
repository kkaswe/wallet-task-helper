.class public final Lcn/jim/wallethelper/TaskLookupProgress;
.super Ljava/lang/Object;
.source "TaskLookupProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jim/wallethelper/TaskLookupProgress$Decision;
    }
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private moduleSeen:Z

.field private passes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcn/jim/wallethelper/TaskLookupProgress;->key:Ljava/lang/String;

    .line 4
    return-void
.end method


# virtual methods
.method public finishPass()Lcn/jim/wallethelper/TaskLookupProgress$Decision;
    .locals 2

    .line 16
    iget v0, p0, Lcn/jim/wallethelper/TaskLookupProgress;->passes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/jim/wallethelper/TaskLookupProgress;->passes:I

    .line 17
    iget v0, p0, Lcn/jim/wallethelper/TaskLookupProgress;->passes:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    sget-object v0, Lcn/jim/wallethelper/TaskLookupProgress$Decision;->RETRY:Lcn/jim/wallethelper/TaskLookupProgress$Decision;

    return-object v0

    .line 18
    :cond_0
    iget-boolean v0, p0, Lcn/jim/wallethelper/TaskLookupProgress;->moduleSeen:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcn/jim/wallethelper/TaskLookupProgress$Decision;->SKIP_UNCONFIRMED:Lcn/jim/wallethelper/TaskLookupProgress$Decision;

    goto :goto_0

    :cond_1
    sget-object v0, Lcn/jim/wallethelper/TaskLookupProgress$Decision;->PAUSE_UNREADABLE:Lcn/jim/wallethelper/TaskLookupProgress$Decision;

    :goto_0
    return-object v0
.end method

.method public observe(Ljava/lang/String;Z)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcn/jim/wallethelper/TaskLookupProgress;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/jim/wallethelper/TaskLookupProgress;->reset()V

    iput-object p1, p0, Lcn/jim/wallethelper/TaskLookupProgress;->key:Ljava/lang/String;

    .line 13
    :cond_0
    iget-boolean p1, p0, Lcn/jim/wallethelper/TaskLookupProgress;->moduleSeen:Z

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcn/jim/wallethelper/TaskLookupProgress;->moduleSeen:Z

    .line 14
    return-void
.end method

.method public passes()I
    .locals 1

    .line 20
    iget v0, p0, Lcn/jim/wallethelper/TaskLookupProgress;->passes:I

    return v0
.end method

.method public reset()V
    .locals 1

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcn/jim/wallethelper/TaskLookupProgress;->key:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcn/jim/wallethelper/TaskLookupProgress;->passes:I

    iput-boolean v0, p0, Lcn/jim/wallethelper/TaskLookupProgress;->moduleSeen:Z

    return-void
.end method
