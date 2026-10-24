.class public Lcn/jim/wallethelper/TaskRules$Item;
.super Ljava/lang/Object;
.source "TaskRules.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jim/wallethelper/TaskRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public h:I

.field public index:I

.field public text:Ljava/lang/String;

.field public viewId:Ljava/lang/String;

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 8

    .line 139
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcn/jim/wallethelper/TaskRules$Item;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIILjava/lang/String;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-static {p1}, Lcn/jim/wallethelper/TaskRules;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    .line 144
    iput p2, p0, Lcn/jim/wallethelper/TaskRules$Item;->x:I

    .line 145
    iput p3, p0, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    .line 146
    iput p4, p0, Lcn/jim/wallethelper/TaskRules$Item;->w:I

    .line 147
    iput p5, p0, Lcn/jim/wallethelper/TaskRules$Item;->h:I

    .line 148
    iput p6, p0, Lcn/jim/wallethelper/TaskRules$Item;->index:I

    .line 149
    iput-object p7, p0, Lcn/jim/wallethelper/TaskRules$Item;->viewId:Ljava/lang/String;

    .line 150
    return-void
.end method


# virtual methods
.method public cy()I
    .locals 2

    .line 153
    iget v0, p0, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    iget v1, p0, Lcn/jim/wallethelper/TaskRules$Item;->h:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method
