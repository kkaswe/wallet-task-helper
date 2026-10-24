.class public final Lcn/jim/wallethelper/TaskRules;
.super Ljava/lang/Object;
.source "TaskRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jim/wallethelper/TaskRules$Item;,
        Lcn/jim/wallethelper/TaskRules$Row;
    }
.end annotation


# static fields
.field public static final BROWSE:I = 0x1

.field public static final INSTALL:I = 0x2

.field public static final OUTSIDE:I = -0x1

.field public static final TWO_DAYS:I = 0x0

.field public static final UNKNOWN:I = -0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static action(Ljava/lang/String;)Z
    .locals 1

    .line 113
    invoke-static {p0}, Lcn/jim/wallethelper/TaskRules;->done(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/jim/wallethelper/TaskRules;->claim(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/jim/wallethelper/TaskRules;->download(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/jim/wallethelper/TaskRules;->experience(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/jim/wallethelper/TaskRules;->pending(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static appName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 117
    invoke-static {p0}, Lcn/jim/wallethelper/TaskRules;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 118
    const-string v0, "(?i)VIP"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 119
    const-string v0, "[+\uff0b]\\d+\u5c0f\u65f6.*$"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 120
    const-string v0, "[\uff08(].*$"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 121
    const-string v0, "\u2026"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 122
    const-string v0, "..."

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 117
    return-object p0
.end method

.method public static changedWalletWindow(II)Z
    .locals 0

    .line 20
    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static claim(Ljava/lang/String;)Z
    .locals 1

    .line 41
    const-string v0, "(\u9886\u53d6|\u53bb\u9886\u53d6|\u9886\u65f6\u957f|\u9886\u53d6\u5956\u52b1|\u9886\u53d6\\+?\\d+\u5c0f\u65f6)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 24
    const-string v0, ""

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "\\s+"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static contentBottom(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/jim/wallethelper/TaskRules$Item;",
            ">;)I"
        }
    .end annotation

    .line 87
    nop

    .line 88
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const v0, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    return v0

    .line 88
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jim/wallethelper/TaskRules$Item;

    .line 89
    iget-object v2, v1, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-static {v2}, Lcn/jim/wallethelper/TaskRules;->navigation(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.hihonor.wallet:id/content"

    iget-object v3, v1, Lcn/jim/wallethelper/TaskRules$Item;->viewId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    iget v1, v1, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public static contentTop(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/jim/wallethelper/TaskRules$Item;",
            ">;)I"
        }
    .end annotation

    .line 96
    nop

    .line 97
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 99
    return v0

    .line 97
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jim/wallethelper/TaskRules$Item;

    .line 98
    const-string v2, "com.hihonor.wallet:id/tv_title"

    iget-object v3, v1, Lcn/jim/wallethelper/TaskRules$Item;->viewId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    iget v1, v1, Lcn/jim/wallethelper/TaskRules$Item;->h:I

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public static done(Ljava/lang/String;)Z
    .locals 1

    .line 37
    const-string v0, "\u5df2\u5b8c\u6210"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u5df2\u9886\u53d6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u5df2\u9886\u5956"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u660e\u65e5\u9886"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u660e\u65e5\u518d\u6765"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static download(Ljava/lang/String;)Z
    .locals 1

    .line 45
    const-string v0, "(\u4e0b\u8f7d|\u4e0b\u8f7d\u5b89\u88c5|\u53bb\u4e0b\u8f7d|\u5b89\u88c5|\u7ee7\u7eed\u5b89\u88c5|\u91cd\u65b0\u4e0b\u8f7d)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static expand(Ljava/lang/String;)Z
    .locals 1

    .line 53
    const-string v0, "(?:\u70b9\u51fb)?(?:\u5c55\u793a\u66f4\u591a|\u5c55\u5f00\u66f4\u591a|\u67e5\u770b\u66f4\u591a)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static expansion(Ljava/util/List;I)Lcn/jim/wallethelper/TaskRules$Item;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/jim/wallethelper/TaskRules$Item;",
            ">;I)",
            "Lcn/jim/wallethelper/TaskRules$Item;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 59
    new-instance v1, Lcn/jim/wallethelper/TaskRules$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcn/jim/wallethelper/TaskRules$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 60
    nop

    .line 61
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jim/wallethelper/TaskRules$Item;

    .line 62
    iget-object v2, v1, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-static {v2}, Lcn/jim/wallethelper/TaskRules;->header(Ljava/lang/String;)I

    move-result v2

    .line 63
    const/4 v3, -0x2

    if-eq v2, v3, :cond_2

    move p1, v2

    .line 64
    :cond_2
    if-ltz p1, :cond_0

    iget-object v2, v1, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-static {v2}, Lcn/jim/wallethelper/TaskRules;->expand(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    invoke-static {p0}, Lcn/jim/wallethelper/TaskRules;->contentTop(Ljava/util/List;)I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 65
    iget v2, v1, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    iget v3, v1, Lcn/jim/wallethelper/TaskRules$Item;->h:I

    add-int/2addr v2, v3

    invoke-static {p0}, Lcn/jim/wallethelper/TaskRules;->contentBottom(Ljava/util/List;)I

    move-result v3

    if-gt v2, v3, :cond_0

    return-object v1
.end method

.method public static experience(Ljava/lang/String;)Z
    .locals 1

    .line 49
    const-string v0, "(\u4f53\u9a8c|\u53bb\u4f53\u9a8c|\u6253\u5f00|\u53bb\u6253\u5f00|\u6d4f\u89c8|\u53bb\u6d4f\u89c8|\u7acb\u5373\u4f53\u9a8c|(?:\u53bb)?\u4f53\u9a8c\\d+(?:[sS]|\u79d2))"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static externalAppEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 15
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 16
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "android"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "com.android.systemui"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 15
    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static header(Ljava/lang/String;)I
    .locals 1

    .line 28
    invoke-static {p0}, Lcn/jim/wallethelper/TaskRules;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 29
    const-string v0, "\u8fde\u7eed2\u5929\u4f53\u9a8c\u5e94\u7528"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 30
    :cond_0
    const-string v0, "\u4e0b\u8f7d\u5e76\u4f53\u9a8c\u5e94\u752815\u79d2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 31
    :cond_1
    const-string v0, "\u6d4f\u89c8\u5e94\u752810\u79d2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 32
    :cond_2
    const-string v0, "\u89c2\u770b\u89c6\u9891"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\u94b1\u5305\u4efb\u52a1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\u5151\u6362\u4f1a\u5458"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    .line 33
    :cond_3
    const/4 p0, -0x2

    return p0

    .line 32
    :cond_4
    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic lambda$0(Lcn/jim/wallethelper/TaskRules$Item;)I
    .locals 0

    .line 59
    iget p0, p0, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    return p0
.end method

.method static synthetic lambda$1(Lcn/jim/wallethelper/TaskRules$Item;)I
    .locals 0

    .line 175
    iget p0, p0, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    return p0
.end method

.method static synthetic lambda$2(Lcn/jim/wallethelper/TaskRules$Item;)I
    .locals 0

    .line 175
    iget p0, p0, Lcn/jim/wallethelper/TaskRules$Item;->x:I

    return p0
.end method

.method public static navigation(Ljava/lang/String;)Z
    .locals 1

    .line 82
    const-string v0, "(\u9996\u9875|\u5361\u5305|\u7701\u94b1|\u6211\u7684)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static pending(Ljava/lang/String;)Z
    .locals 1

    .line 108
    const-string v0, "\u7b49\u5f85"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u6392\u961f"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const-string v0, ".*(\u4e0b\u8f7d\u4e2d|\u6b63\u5728\u4e0b\u8f7d|\u5b89\u88c5\u4e2d|\u6b63\u5728\u5b89\u88c5|\u7b49\u5f85\u5b89\u88c5|\u7b49\u5f85\u4e0b\u8f7d|\u7b49\u5f85\u4e2d|\u6392\u961f\u4e2d|\u6682\u505c\u4e0b\u8f7d|\u7ee7\u7eed\u4e0b\u8f7d|\\d+%).*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 108
    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static rewardContinue(Ljava/lang/String;)Z
    .locals 2

    .line 103
    invoke-static {p0}, Lcn/jim/wallethelper/TaskRules;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u7ee7\u7eed\u9886\u65f6\u957f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/jim/wallethelper/TaskRules;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u7ee7\u7eed\u9886\u53d6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-static {p0}, Lcn/jim/wallethelper/TaskRules;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6682\u65e0\u66f4\u591a\u4efb\u52a1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/jim/wallethelper/TaskRules;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u7ee7\u7eed\u505a\u4efb\u52a1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 103
    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static rows(Ljava/util/List;II)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/jim/wallethelper/TaskRules$Item;",
            ">;II)",
            "Ljava/util/List<",
            "Lcn/jim/wallethelper/TaskRules$Row;",
            ">;"
        }
    .end annotation

    .line 174
    move/from16 v0, p2

    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 175
    new-instance v3, Lcn/jim/wallethelper/TaskRules$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcn/jim/wallethelper/TaskRules$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v3}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    new-instance v4, Lcn/jim/wallethelper/TaskRules$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcn/jim/wallethelper/TaskRules$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/Comparator;->thenComparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 176
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 177
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 178
    invoke-static/range {p0 .. p0}, Lcn/jim/wallethelper/TaskRules;->contentBottom(Ljava/util/List;)I

    move-result v5

    .line 179
    invoke-static/range {p0 .. p0}, Lcn/jim/wallethelper/TaskRules;->contentTop(Ljava/util/List;)I

    move-result v2

    .line 180
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 214
    return-object v3

    .line 180
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/jim/wallethelper/TaskRules$Item;

    .line 181
    iget-object v8, v7, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-static {v8}, Lcn/jim/wallethelper/TaskRules;->action(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget v8, v7, Lcn/jim/wallethelper/TaskRules$Item;->x:I

    int-to-double v8, v8

    int-to-double v10, v0

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v12, v10

    cmpg-double v8, v8, v12

    if-ltz v8, :cond_12

    iget v8, v7, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    if-lt v8, v2, :cond_12

    .line 182
    iget v8, v7, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    iget v9, v7, Lcn/jim/wallethelper/TaskRules$Item;->h:I

    add-int/2addr v8, v9

    if-le v8, v5, :cond_2

    goto :goto_0

    .line 183
    :cond_2
    nop

    .line 184
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move/from16 v9, p1

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_10

    .line 186
    if-gez v9, :cond_3

    goto :goto_0

    .line 187
    :cond_3
    nop

    .line 188
    nop

    .line 189
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    const/4 v8, 0x0

    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_6

    .line 207
    if-eqz v8, :cond_0

    .line 208
    iget-object v10, v8, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-static {v10}, Lcn/jim/wallethelper/TaskRules;->appName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 209
    iget-object v11, v8, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    const-string v12, "\u2026"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    iget-object v8, v8, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    const-string v11, "..."

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 210
    :cond_5
    new-instance v8, Lcn/jim/wallethelper/TaskRules$Row;

    iget-object v11, v7, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    iget v7, v7, Lcn/jim/wallethelper/TaskRules$Item;->index:I

    invoke-direct {v8, v10, v11, v9, v7}, Lcn/jim/wallethelper/TaskRules$Row;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 211
    invoke-virtual {v8}, Lcn/jim/wallethelper/TaskRules$Row;->key()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 189
    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lcn/jim/wallethelper/TaskRules$Item;

    .line 190
    move-object/from16 v16, v1

    iget-object v1, v13, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-static {v1}, Lcn/jim/wallethelper/TaskRules;->appName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    move/from16 v17, v2

    iget v2, v13, Lcn/jim/wallethelper/TaskRules$Item;->x:I

    move-object/from16 v18, v3

    iget v3, v7, Lcn/jim/wallethelper/TaskRules$Item;->x:I

    if-ge v2, v3, :cond_e

    iget v2, v13, Lcn/jim/wallethelper/TaskRules$Item;->x:I

    int-to-double v2, v2

    const-wide v19, 0x3fbeb851eb851eb8L    # 0.12

    mul-double v19, v19, v10

    cmpg-double v2, v2, v19

    if-ltz v2, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x18

    if-le v1, v2, :cond_7

    .line 192
    move-object/from16 v19, v4

    goto/16 :goto_3

    .line 193
    :cond_7
    iget-object v1, v13, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-static {v1}, Lcn/jim/wallethelper/TaskRules;->action(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, v13, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-static {v1}, Lcn/jim/wallethelper/TaskRules;->navigation(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, v13, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    const-string v2, "\\d+(?:\\.\\d+)+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 194
    iget-object v1, v13, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-static {v1}, Lcn/jim/wallethelper/TaskRules;->header(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_c

    .line 195
    iget-object v1, v13, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-static {v1}, Lcn/jim/wallethelper/TaskRules;->expand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 196
    iget-object v1, v13, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    const-string v2, ".*(\u9690\u79c1|\u6743\u9650|\u4ecb\u7ecd|MB|GB|\u4e0b\u8f7d\u91cf|\u5956\u52b1|\u70b9\u51fb\u6536\u8d77|\u70b9\u51fb\u5c55\u5f00|\u9996\u65e5|\u6b21\u65e5|\u4f1a\u5458\u65f6\u957f|\u8bf7\u70b9\u51fb\u6309\u94ae|\u53bb\u4f53\u9a8c\\d).*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 197
    iget-object v1, v13, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    const-string v2, "(?:VIP)?[+\uff0b]\\d+\u5c0f\u65f6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v19, v4

    goto/16 :goto_3

    .line 198
    :cond_8
    invoke-virtual {v13}, Lcn/jim/wallethelper/TaskRules$Item;->cy()I

    move-result v1

    invoke-virtual {v7}, Lcn/jim/wallethelper/TaskRules$Item;->cy()I

    move-result v2

    sub-int/2addr v1, v2

    .line 199
    int-to-double v1, v1

    neg-int v3, v0

    move-object/from16 v19, v4

    int-to-double v3, v3

    const-wide v20, 0x3fc0a3d70a3d70a4L    # 0.13

    mul-double v3, v3, v20

    cmpg-double v3, v1, v3

    if-ltz v3, :cond_f

    const-wide v3, 0x3fa70a3d70a3d70aL    # 0.045

    mul-double/2addr v3, v10

    cmpl-double v3, v1, v3

    if-lez v3, :cond_9

    goto :goto_3

    .line 201
    :cond_9
    const-wide v3, 0x3fa0624dd2f1a9fcL    # 0.032

    mul-double/2addr v3, v10

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget v3, v13, Lcn/jim/wallethelper/TaskRules$Item;->x:I

    int-to-double v3, v3

    const-wide v20, 0x3fcd70a3d70a3d71L    # 0.23

    mul-double v20, v20, v10

    sub-double v3, v3, v20

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v20, 0x3fb47ae147ae147bL    # 0.08

    mul-double v3, v3, v20

    add-double/2addr v1, v3

    .line 202
    cmpg-double v3, v1, v14

    if-gez v3, :cond_f

    .line 203
    nop

    .line 204
    move-wide v14, v1

    move-object v8, v13

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto/16 :goto_2

    .line 196
    :cond_a
    move-object/from16 v19, v4

    goto :goto_3

    .line 195
    :cond_b
    move-object/from16 v19, v4

    goto :goto_3

    .line 194
    :cond_c
    move-object/from16 v19, v4

    goto :goto_3

    .line 193
    :cond_d
    move-object/from16 v19, v4

    goto :goto_3

    .line 191
    :cond_e
    move-object/from16 v19, v4

    .line 189
    :cond_f
    :goto_3
    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto/16 :goto_2

    .line 184
    :cond_10
    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jim/wallethelper/TaskRules$Item;

    .line 185
    iget v2, v1, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    invoke-virtual {v7}, Lcn/jim/wallethelper/TaskRules$Item;->cy()I

    move-result v3

    if-gt v2, v3, :cond_11

    iget-object v2, v1, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-static {v2}, Lcn/jim/wallethelper/TaskRules;->header(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x2

    if-eq v2, v3, :cond_11

    iget-object v1, v1, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-static {v1}, Lcn/jim/wallethelper/TaskRules;->header(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto/16 :goto_1

    .line 184
    :cond_11
    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    goto/16 :goto_1

    .line 181
    :cond_12
    move-object/from16 v16, v1

    move/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    goto/16 :goto_0
.end method

.method public static sameApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 127
    invoke-static {p0}, Lcn/jim/wallethelper/TaskRules;->appName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcn/jim/wallethelper/TaskRules;->appName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    const-string v1, "\u2026"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const-string v1, "..."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v3

    .line 129
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v4, :cond_2

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x4

    if-lt p0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 129
    :cond_1
    return v3

    :cond_2
    return v2
.end method

.method public static seconds(I)I
    .locals 1

    .line 10
    if-nez p0, :cond_0

    const/16 p0, 0x10

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const/16 p0, 0xb

    goto :goto_0

    :cond_1
    const/16 p0, 0x10

    :goto_0
    return p0
.end method

.method public static sectionAt(Ljava/util/List;II)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/jim/wallethelper/TaskRules$Item;",
            ">;II)I"
        }
    .end annotation

    .line 71
    nop

    .line 72
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/high16 v0, -0x80000000

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    return p1

    .line 72
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/jim/wallethelper/TaskRules$Item;

    .line 73
    iget-object v2, v1, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-static {v2}, Lcn/jim/wallethelper/TaskRules;->header(Ljava/lang/String;)I

    move-result v2

    .line 74
    const/4 v3, -0x2

    if-eq v2, v3, :cond_0

    iget v3, v1, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    if-gt v3, p2, :cond_0

    iget v3, v1, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    if-lt v3, v0, :cond_0

    .line 75
    iget v0, v1, Lcn/jim/wallethelper/TaskRules$Item;->y:I

    move p1, v2

    goto :goto_0
.end method
