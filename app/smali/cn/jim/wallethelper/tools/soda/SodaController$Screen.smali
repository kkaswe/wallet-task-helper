.class final Lcn/jim/wallethelper/tools/soda/SodaController$Screen;
.super Ljava/lang/Object;
.source "SodaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jim/wallethelper/tools/soda/SodaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Screen"
.end annotation


# instance fields
.field header:Ljava/lang/String;

.field height:I

.field final nodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field packageName:Ljava/lang/String;

.field text:Ljava/lang/String;

.field width:I

.field windowId:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->nodes:Ljava/util/ArrayList;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->text:Ljava/lang/String;

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->header:Ljava/lang/String;

    iput-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->packageName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->windowId:I

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lcn/jim/wallethelper/tools/soda/SodaController$Screen;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;-><init>()V

    return-void
.end method


# virtual methods
.method release()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaController$Screen;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    goto :goto_0
.end method
