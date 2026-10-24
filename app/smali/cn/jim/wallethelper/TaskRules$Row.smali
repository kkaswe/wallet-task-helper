.class public Lcn/jim/wallethelper/TaskRules$Row;
.super Ljava/lang/Object;
.source "TaskRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jim/wallethelper/TaskRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# instance fields
.field public index:I

.field public name:Ljava/lang/String;

.field public section:I

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    .line 167
    iput-object p2, p0, Lcn/jim/wallethelper/TaskRules$Row;->status:Ljava/lang/String;

    .line 168
    iput p3, p0, Lcn/jim/wallethelper/TaskRules$Row;->section:I

    .line 169
    iput p4, p0, Lcn/jim/wallethelper/TaskRules$Row;->index:I

    .line 170
    return-void
.end method


# virtual methods
.method public key()Ljava/lang/String;
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/jim/wallethelper/TaskRules$Row;->section:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jim/wallethelper/TaskRules$Row;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
