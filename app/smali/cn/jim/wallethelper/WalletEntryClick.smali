.class final Lcn/jim/wallethelper/WalletEntryClick;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;

.field private final activity:Landroid/app/Activity;

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcn/jim/wallethelper/WalletEntryClick;->activity:Landroid/app/Activity;
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    iget-object v0, p0, Lcn/jim/wallethelper/WalletEntryClick;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcn/jim/wallethelper/WalletEntry;->open(Landroid/content/Context;)Ljava/lang/String;
    move-result-object v1
    if-eqz v1, :done
    const/4 v2, 0x1
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    move-result-object v1
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :done
    return-void
.end method
