.class Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$1;
.super Ljava/lang/Object;
.source "SodaToolsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->addEntry(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$1;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 17
    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$1;->val$a:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$1;->val$a:Landroid/app/Activity;

    const-class v2, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
