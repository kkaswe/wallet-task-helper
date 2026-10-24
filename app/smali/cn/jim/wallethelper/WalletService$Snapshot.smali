.class final Lcn/jim/wallethelper/WalletService$Snapshot;
.super Ljava/lang/Object;
.source "WalletService.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jim/wallethelper/WalletService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Snapshot"
.end annotation


# instance fields
.field final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/jim/wallethelper/TaskRules$Item;",
            ">;"
        }
    .end annotation
.end field

.field final nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field outsideWalletWindow:Z

.field pkg:Ljava/lang/String;

.field windowId:I


# direct methods
.method constructor <init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jim/wallethelper/WalletService$Snapshot;->nodes:Ljava/util/List;

    .line 1183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    .line 1184
    const-string v0, ""

    iput-object v0, p0, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;

    .line 1185
    const/4 v0, -0x1

    iput v0, p0, Lcn/jim/wallethelper/WalletService$Snapshot;->windowId:I

    .line 1186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletService$Snapshot;->outsideWalletWindow:Z

    .line 1189
    if-eqz p1, :cond_0

    .line 1190
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v1

    iput v1, p0, Lcn/jim/wallethelper/WalletService$Snapshot;->windowId:I

    .line 1191
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/jim/wallethelper/WalletService$Snapshot;->pkg:Ljava/lang/String;

    .line 1192
    invoke-virtual {p0, p1, v0}, Lcn/jim/wallethelper/WalletService$Snapshot;->walk(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    .line 1194
    :cond_0
    iget-object p1, p0, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    new-instance v0, Lcn/jim/wallethelper/WalletService$Snapshot$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcn/jim/wallethelper/WalletService$Snapshot$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcn/jim/wallethelper/WalletService$Snapshot$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcn/jim/wallethelper/WalletService$Snapshot$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1195
    return-void
.end method

.method static synthetic lambda$0(Lcn/jim/wallethelper/TaskRules$Item;)I
    .locals 0

    .line 1194
    iget p0, p0, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    return p0
.end method

.method static synthetic lambda$1(Lcn/jim/wallethelper/TaskRules$Item;)I
    .locals 0

    .line 1194
    iget p0, p0, Lcn/jim/wallethelper/TaskRules$Item;->x:I

    return p0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1239
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService$Snapshot;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1240
    return-void

    .line 1239
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_0
.end method

.method varargs exact([Ljava/lang/String;)I
    .locals 6

    .line 1228
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1229
    const/4 p1, -0x1

    return p1

    .line 1228
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jim/wallethelper/TaskRules$Item;

    array-length v2, p1

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v2, :cond_1

    goto :goto_0

    :cond_1
    aget-object v4, p1, v3

    iget-object v5, v1, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget p1, v1, Lcn/jim/wallethelper/TaskRules$Item;->index:I

    return p1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method has(Ljava/lang/String;)Z
    .locals 3

    .line 1223
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1224
    const/4 p1, 0x0

    return p1

    .line 1223
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jim/wallethelper/TaskRules$Item;

    iget-object v2, v1, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, v1, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method signature()Ljava/lang/String;
    .locals 5

    .line 1233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1234
    iget-object v1, p0, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1234
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/jim/wallethelper/TaskRules$Item;

    iget-object v2, v2, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    const-string v3, "\\d+%"

    const-string v4, "%"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method walk(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 11

    .line 1198
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService$Snapshot;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xdac

    if-ge v0, v1, :cond_6

    const/16 v0, 0x3c

    if-le p2, v0, :cond_0

    goto/16 :goto_1

    .line 1202
    :cond_0
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService$Snapshot;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    .line 1203
    iget-object v0, p0, Lcn/jim/wallethelper/WalletService$Snapshot;->nodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1205
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1206
    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1207
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 1208
    if-eqz v0, :cond_3

    .line 1209
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 1210
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1211
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1212
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_3

    .line 1213
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_3

    .line 1214
    iget-object v9, p0, Lcn/jim/wallethelper/WalletService$Snapshot;->items:Ljava/util/List;

    .line 1215
    new-instance v10, Lcn/jim/wallethelper/TaskRules$Item;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v8

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, Lcn/jim/wallethelper/TaskRules$Item;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    .line 1214
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1216
    :cond_3
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 1220
    return-void

    .line 1217
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 1218
    if-eqz v1, :cond_5

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v1, v2}, Lcn/jim/wallethelper/WalletService$Snapshot;->walk(Landroid/view/accessibility/AccessibilityNodeInfo;I)V

    .line 1216
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1199
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 1200
    return-void
.end method
