.class public final Lcn/jim/wallethelper/tools/soda/SodaVision$Result;
.super Ljava/lang/Object;
.source "SodaVision.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jim/wallethelper/tools/soda/SodaVision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field public final captured:J

.field public final header:Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;

.field public final height:I

.field public final live:Lcn/jim/wallethelper/tools/soda/LiveVision$Result;

.field public final popup:Lcn/jim/wallethelper/tools/soda/PopupVision$Result;

.field public final sourcePackage:Ljava/lang/String;

.field public final sourceWindow:I

.field public final width:I


# direct methods
.method constructor <init>(Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;Lcn/jim/wallethelper/tools/soda/PopupVision$Result;Lcn/jim/wallethelper/tools/soda/LiveVision$Result;IIJLjava/lang/String;I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->header:Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;

    iput-object p2, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->popup:Lcn/jim/wallethelper/tools/soda/PopupVision$Result;

    iput-object p3, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->live:Lcn/jim/wallethelper/tools/soda/LiveVision$Result;

    iput p4, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->width:I

    iput p5, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->height:I

    iput-wide p6, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->captured:J

    iput-object p8, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->sourcePackage:Ljava/lang/String;

    iput p9, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->sourceWindow:I

    return-void
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .locals 4

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sourcePackage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sourceWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->sourceWindow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requestedAtMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->captured:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " live="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->live:Lcn/jim/wallethelper/tools/soda/LiveVision$Result;

    iget-boolean v1, v1, Lcn/jim/wallethelper/tools/soda/LiveVision$Result;->recognized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " liveCloseScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->live:Lcn/jim/wallethelper/tools/soda/LiveVision$Result;

    iget-wide v1, v1, Lcn/jim/wallethelper/tools/soda/LiveVision$Result;->closeScore:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " liveContextScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->live:Lcn/jim/wallethelper/tools/soda/LiveVision$Result;

    iget-wide v1, v1, Lcn/jim/wallethelper/tools/soda/LiveVision$Result;->contextScore:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " headerSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->header:Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;

    iget-boolean v1, v1, Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " waiting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->header:Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;

    iget-boolean v1, v1, Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;->waiting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " successScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->header:Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;

    iget-wide v1, v1, Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;->successScore:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " waitScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->header:Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;

    iget-wide v1, v1, Lcn/jim/wallethelper/tools/soda/HeaderVision$Result;->waitScore:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " popup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->popup:Lcn/jim/wallethelper/tools/soda/PopupVision$Result;

    iget-boolean v1, v1, Lcn/jim/wallethelper/tools/soda/PopupVision$Result;->continuation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " claimLocated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->popup:Lcn/jim/wallethelper/tools/soda/PopupVision$Result;

    iget-object v1, v1, Lcn/jim/wallethelper/tools/soda/PopupVision$Result;->claim:Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " exitLocated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->popup:Lcn/jim/wallethelper/tools/soda/PopupVision$Result;

    iget-object v1, v1, Lcn/jim/wallethelper/tools/soda/PopupVision$Result;->exit:Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " claimScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->popup:Lcn/jim/wallethelper/tools/soda/PopupVision$Result;

    iget-wide v1, v1, Lcn/jim/wallethelper/tools/soda/PopupVision$Result;->claimScore:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " freeScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->popup:Lcn/jim/wallethelper/tools/soda/PopupVision$Result;

    iget-wide v1, v1, Lcn/jim/wallethelper/tools/soda/PopupVision$Result;->freeScore:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " againScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->popup:Lcn/jim/wallethelper/tools/soda/PopupVision$Result;

    iget-wide v1, v1, Lcn/jim/wallethelper/tools/soda/PopupVision$Result;->againScore:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x(Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;)F
    .locals 1

    .line 21
    invoke-virtual {p1}, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->centerX()I

    move-result p1

    iget v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->width:I

    mul-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x43ab0000    # 342.0f

    div-float/2addr p1, v0

    return p1
.end method

.method public y(Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;)F
    .locals 1

    .line 22
    invoke-virtual {p1}, Lcn/jim/wallethelper/tools/soda/HeaderVision$Match;->centerY()I

    move-result p1

    iget v0, p0, Lcn/jim/wallethelper/tools/soda/SodaVision$Result;->width:I

    mul-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x43ab0000    # 342.0f

    div-float/2addr p1, v0

    return p1
.end method
