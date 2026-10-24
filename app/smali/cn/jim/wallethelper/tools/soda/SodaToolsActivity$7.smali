.class Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$7;
.super Ljava/lang/Object;
.source "SodaToolsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->button(Landroid/widget/LinearLayout;Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;

.field private final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;Ljava/lang/Runnable;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$7;->this$0:Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;

    iput-object p2, p0, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$7;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 31
    iget-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$7;->val$r:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
