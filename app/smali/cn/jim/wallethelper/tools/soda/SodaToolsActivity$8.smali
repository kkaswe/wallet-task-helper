.class Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$8;
.super Ljava/lang/Object;
.source "SodaToolsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->diagnostics()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;

.field private final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$8;->this$0:Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;

    iput-object p2, p0, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$8;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 59
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SEND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "text/plain"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.TEXT"

    iget-object v0, p0, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$8;->val$data:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.SUBJECT"

    const-string v0, "soda-diagnostics.txt"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity$8;->this$0:Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;

    const-string v0, "\u5bfc\u51fa\u6c7d\u6c34\u8bca\u65ad"

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/jim/wallethelper/tools/soda/SodaToolsActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
