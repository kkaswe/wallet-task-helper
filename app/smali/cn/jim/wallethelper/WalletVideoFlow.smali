.class public final Lcn/jim/wallethelper/WalletVideoFlow;
.super Ljava/lang/Object;
.source "WalletVideoFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/jim/wallethelper/WalletVideoFlow$Frame;,
        Lcn/jim/wallethelper/WalletVideoFlow$Node;
    }
.end annotation


# static fields
.field public static final CLICK:I = 0x3

.field public static final DISMISS:I = 0x5

.field public static final DONE:I = 0x1

.field public static final FAIL:I = -0x1

.field public static final NETWORK:I = 0x6

.field public static final OPEN:I = 0x4

.field public static final SCROLL:I = 0x2

.field public static final WAIT:I = 0x0

.field public static final WALLET:Ljava/lang/String; = "com.hihonor.wallet"


# instance fields
.field private adSeen:Z

.field private attempts:I

.field private baseline:I

.field private claims:I

.field private failures:I

.field public index:I

.field private initial:I

.field private lastCountdown:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field private networkPending:Z

.field private networkUsed:Z

.field private nextAt:J

.field private opens:I

.field private progressAt:J

.field private scrolls:I

.field private stableAt:J

.field private stableIndex:I

.field private stableKey:Ljava/lang/String;

.field private stageAt:J

.field private started:J

.field private state:I

.field public summary:Ljava/lang/String;

.field private timedOut:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string v0, "\u89c6\u9891\u5c1a\u672a\u5b8c\u6210"

    iput-object v0, p0, Lcn/jim/wallethelper/WalletVideoFlow;->summary:Ljava/lang/String;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcn/jim/wallethelper/WalletVideoFlow;->index:I

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Lcn/jim/wallethelper/WalletVideoFlow;->state:I

    iput v0, p0, Lcn/jim/wallethelper/WalletVideoFlow;->baseline:I

    iput v0, p0, Lcn/jim/wallethelper/WalletVideoFlow;->initial:I

    .line 63
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcn/jim/wallethelper/WalletVideoFlow;->started:J

    .line 64
    const-string v1, ""

    iput-object v1, p0, Lcn/jim/wallethelper/WalletVideoFlow;->lastCountdown:Ljava/lang/String;

    .line 66
    iput v0, p0, Lcn/jim/wallethelper/WalletVideoFlow;->stableIndex:I

    .line 67
    iput-object v1, p0, Lcn/jim/wallethelper/WalletVideoFlow;->stableKey:Ljava/lang/String;

    return-void
.end method

.method static clean(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 58
    const-string v0, ""

    if-nez p0, :cond_5

    goto :goto_b

    :cond_5
    const-string v1, "\\s+"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method private done(Ljava/lang/String;)I
    .registers 2

    .line 143
    iput-object p1, p0, Lcn/jim/wallethelper/WalletVideoFlow;->summary:Ljava/lang/String;

    iput-object p1, p0, Lcn/jim/wallethelper/WalletVideoFlow;->message:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method private fail(Ljava/lang/String;)I
    .registers 2

    .line 144
    iput-object p1, p0, Lcn/jim/wallethelper/WalletVideoFlow;->summary:Ljava/lang/String;

    iput-object p1, p0, Lcn/jim/wallethelper/WalletVideoFlow;->message:Ljava/lang/String;

    const/4 p1, -0x1

    return p1
.end method

.method public static read(Ljava/util/List;Ljava/lang/String;II)Lcn/jim/wallethelper/WalletVideoFlow$Frame;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/jim/wallethelper/WalletVideoFlow$Node;",
            ">;",
            "Ljava/lang/String;",
            "II)",
            "Lcn/jim/wallethelper/WalletVideoFlow$Frame;"
        }
    .end annotation

    .line 23
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    new-instance v3, Lcn/jim/wallethelper/WalletVideoFlow$Frame;

    invoke-direct {v3}, Lcn/jim/wallethelper/WalletVideoFlow$Frame;-><init>()V

    iput-object v0, v3, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->pkg:Ljava/lang/String;

    .line 24
    const-string v4, "com.hihonor.wallet"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    return-object v3

    .line 25
    :cond_16
    nop

    .line 26
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    move-object v7, v5

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-wide v9, 0x3fc999999999999aL    # 0.2

    const/4 v11, 0x1

    if-eqz v8, :cond_131

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;

    .line 27
    iget v12, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->r:I

    iget v13, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->l:I

    if-le v12, v13, :cond_1f

    iget v12, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->b:I

    iget v13, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->t:I

    if-le v12, v13, :cond_1f

    iget v12, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->t:I

    if-ltz v12, :cond_1f

    iget v12, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->b:I

    if-le v12, v2, :cond_46

    goto :goto_1f

    .line 28
    :cond_46
    iget-object v12, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->id:Ljava/lang/String;

    const-string v13, "com.hihonor.wallet:id/ad_reward_root"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_52

    iput-boolean v11, v3, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->ad:Z

    .line 29
    :cond_52
    iget-object v12, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->id:Ljava/lang/String;

    const-string v13, "com.hihonor.wallet:id/ad_countdown"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_85

    .line 30
    iput-boolean v11, v3, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->ad:Z

    iget-object v12, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->text:Ljava/lang/String;

    iput-object v12, v3, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->countdown:Ljava/lang/String;

    .line 31
    iget-object v12, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->text:Ljava/lang/String;

    const-string v13, "\u672a"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_82

    iget-object v12, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->text:Ljava/lang/String;

    const-string v13, "\u79d2\u540e"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_82

    iget-object v12, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->text:Ljava/lang/String;

    const-string v13, ".*(\u5df2\u83b7\u5f97\u5956\u52b1|\u5956\u52b1\u5df2\u53d1\u653e|\u5956\u52b1\u5df2\u9886\u53d6|\u5df2\u9886\u53d6\u5956\u52b1|\u9886\u53d6\u6210\u529f|\u9886\u53d6\u5b8c\u6210|\u5df2\u5b8c\u6210).*"

    invoke-virtual {v12, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_82

    move v12, v11

    goto :goto_83

    :cond_82
    move v12, v4

    :goto_83
    iput-boolean v12, v3, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->reward:Z

    .line 33
    :cond_85
    iget-object v12, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->id:Ljava/lang/String;

    const-string v13, "com.hihonor.wallet:id/ad_video_close"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_99

    iget-object v12, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->id:Ljava/lang/String;

    const-string v13, "com.hihonor.wallet:id/honor_ads_reward_close_expanded"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b4

    :cond_99
    iget v12, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->t:I

    int-to-double v12, v12

    int-to-double v14, v2

    mul-double/2addr v14, v9

    cmpg-double v9, v12, v14

    if-gez v9, :cond_b4

    iget v9, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->l:I

    int-to-double v9, v9

    int-to-double v12, v1

    const-wide v14, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v12, v14

    cmpl-double v9, v9, v12

    if-lez v9, :cond_b4

    .line 34
    iget v9, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->index:I

    iput v9, v3, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->close:I

    .line 35
    :cond_b4
    iget-object v9, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->text:Ljava/lang/String;

    const-string v10, "\u7701\u94b1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_cd

    iget v9, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->t:I

    int-to-double v9, v9

    int-to-double v12, v2

    const-wide/high16 v14, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v12, v14

    cmpl-double v9, v9, v12

    if-lez v9, :cond_cd

    iget v9, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->index:I

    iput v9, v3, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->savings:I

    .line 36
    :cond_cd
    iget-object v9, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->text:Ljava/lang/String;

    const-string v10, "\u9886\u4f1a\u5458\u65f6\u957f"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e1

    iget-object v9, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->text:Ljava/lang/String;

    const-string v10, "\u94b1\u5305\u4efb\u52a1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e3

    :cond_e1
    iput-boolean v11, v3, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->page:Z

    .line 37
    :cond_e3
    iget-object v9, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->text:Ljava/lang/String;

    const-string v10, "\u5b8c\u6574\u89c2\u770b\u89c6\u9891"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f0

    add-int/lit8 v6, v6, 0x1

    move-object v7, v8

    .line 38
    :cond_f0
    iget-object v9, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->text:Ljava/lang/String;

    const-string v10, "\u7ee7\u7eed\u505a\u4efb\u52a1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_104

    iget-object v9, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->text:Ljava/lang/String;

    const-string v10, "\u4eca\u65e5\u5df2\u5168\u90e8\u5b8c\u6210"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12f

    :cond_104
    iget v9, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->l:I

    int-to-double v9, v9

    int-to-double v12, v1

    const-wide v14, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v14, v12

    cmpl-double v9, v9, v14

    if-lez v9, :cond_12f

    iget v9, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->r:I

    int-to-double v9, v9

    const-wide v14, 0x3feb333333333333L    # 0.85

    mul-double/2addr v12, v14

    cmpg-double v9, v9, v12

    if-gez v9, :cond_12f

    iget v8, v8, Lcn/jim/wallethelper/WalletVideoFlow$Node;->t:I

    int-to-double v8, v8

    int-to-double v12, v2

    const-wide v14, 0x3fdccccccccccccdL    # 0.45

    mul-double/2addr v12, v14

    cmpl-double v8, v8, v12

    if-lez v8, :cond_12f

    iput-boolean v11, v3, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->popup:Z

    .line 39
    :cond_12f
    goto/16 :goto_1f

    .line 40
    :cond_131
    iget-boolean v0, v3, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->ad:Z

    if-nez v0, :cond_2ce

    if-eq v6, v11, :cond_139

    goto/16 :goto_2ce

    .line 41
    :cond_139
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v5

    :goto_13e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1b2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;

    .line 42
    iget v8, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->t:I

    iget v14, v7, Lcn/jim/wallethelper/WalletVideoFlow$Node;->b:I

    add-int/lit8 v14, v14, -0x8

    if-lt v8, v14, :cond_1ad

    iget v8, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->t:I

    int-to-double v14, v8

    iget v8, v7, Lcn/jim/wallethelper/WalletVideoFlow$Node;->b:I

    move-wide/from16 v16, v9

    int-to-double v9, v8

    const-wide v18, 0x3fe4cccccccccccdL    # 0.65

    int-to-double v12, v1

    mul-double v20, v12, v16

    add-double v9, v9, v20

    cmpl-double v8, v14, v9

    if-gtz v8, :cond_1af

    iget v8, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->l:I

    int-to-double v8, v8

    const-wide v14, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v14, v12

    cmpg-double v8, v8, v14

    if-ltz v8, :cond_1af

    iget v8, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->l:I

    int-to-double v8, v8

    mul-double v12, v12, v18

    cmpl-double v8, v8, v12

    if-lez v8, :cond_17f

    goto :goto_1af

    .line 43
    :cond_17f
    const-string v8, "\u6bcf\u65e5\u6700\u591a\u9886\u53d6\\d+\u6b21[\uff08(](\\d+)/(\\d+)[\uff09)]"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    iget-object v9, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->text:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 44
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_1aa

    if-eqz v4, :cond_194

    return-object v3

    :cond_194
    invoke-virtual {v8, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->count:I

    const/4 v4, 0x2

    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->max:I

    move-object v4, v6

    .line 45
    :cond_1aa
    move-wide/from16 v9, v16

    goto :goto_13e

    .line 42
    :cond_1ad
    move-wide/from16 v16, v9

    .line 41
    :cond_1af
    :goto_1af
    move-wide/from16 v9, v16

    goto :goto_13e

    .line 48
    :cond_1b2
    const-wide v18, 0x3fe4cccccccccccdL    # 0.65

    const/4 v0, -0x1

    if-eqz v4, :cond_2cb

    iget v6, v4, Lcn/jim/wallethelper/WalletVideoFlow$Node;->b:I

    int-to-double v8, v6

    int-to-double v12, v2

    const-wide v14, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v14, v12

    cmpl-double v2, v8, v14

    if-gtz v2, :cond_2cb

    iget v2, v7, Lcn/jim/wallethelper/WalletVideoFlow$Node;->t:I

    int-to-double v8, v2

    const-wide v16, 0x3fb47ae147ae147bL    # 0.08

    mul-double v12, v12, v16

    cmpg-double v2, v8, v12

    if-ltz v2, :cond_2cb

    iget v2, v3, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->max:I

    if-lt v2, v11, :cond_2cb

    iget v2, v3, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->max:I

    const/16 v6, 0xa

    if-gt v2, v6, :cond_2cb

    iget v2, v3, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->count:I

    if-ltz v2, :cond_2cb

    iget v2, v3, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->count:I

    iget v6, v3, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->max:I

    if-le v2, v6, :cond_1ec

    goto/16 :goto_2cb

    .line 49
    :cond_1ec
    nop

    .line 50
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f1
    :goto_1f1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2ca

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;

    .line 51
    iget-boolean v8, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->clickable:Z

    if-eqz v8, :cond_1f1

    iget v8, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->l:I

    int-to-double v8, v8

    int-to-double v10, v1

    mul-double v12, v10, v18

    cmpg-double v8, v8, v12

    if-ltz v8, :cond_1f1

    iget v8, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->r:I

    if-gt v8, v1, :cond_1f1

    iget v8, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->r:I

    iget v9, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->l:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    const-wide v12, 0x3fb1eb851eb851ecL    # 0.07

    mul-double/2addr v12, v10

    cmpg-double v8, v8, v12

    if-ltz v8, :cond_1f1

    iget v8, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->r:I

    iget v9, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->l:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    const-wide v12, 0x3fd6666666666666L    # 0.35

    mul-double/2addr v12, v10

    cmpl-double v8, v8, v12

    if-gtz v8, :cond_1f1

    iget v8, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->b:I

    int-to-double v8, v8

    cmpl-double v8, v8, v14

    if-gtz v8, :cond_1f1

    iget v8, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->b:I

    iget v9, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->t:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    const-wide v12, 0x3fa1eb851eb851ecL    # 0.035

    mul-double/2addr v12, v10

    cmpg-double v8, v8, v12

    if-ltz v8, :cond_1f1

    iget v8, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->b:I

    iget v9, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->t:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    const-wide v12, 0x3fc47ae147ae147bL    # 0.16

    mul-double/2addr v12, v10

    cmpl-double v8, v8, v12

    if-gtz v8, :cond_1f1

    iget v8, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->t:I

    int-to-double v8, v8

    iget v12, v7, Lcn/jim/wallethelper/WalletVideoFlow$Node;->t:I

    int-to-double v12, v12

    const-wide v16, 0x3fa47ae147ae147bL    # 0.04

    mul-double v10, v10, v16

    sub-double/2addr v12, v10

    cmpg-double v8, v8, v12

    if-ltz v8, :cond_1f1

    iget v8, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->b:I

    int-to-double v8, v8

    iget v12, v4, Lcn/jim/wallethelper/WalletVideoFlow$Node;->b:I

    int-to-double v12, v12

    add-double/2addr v12, v10

    cmpl-double v8, v8, v12

    if-lez v8, :cond_275

    .line 52
    goto/16 :goto_1f1

    .line 53
    :cond_275
    if-eqz v5, :cond_292

    iget v8, v5, Lcn/jim/wallethelper/WalletVideoFlow$Node;->l:I

    iget v9, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->l:I

    if-ne v8, v9, :cond_28f

    iget v8, v5, Lcn/jim/wallethelper/WalletVideoFlow$Node;->t:I

    iget v9, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->t:I

    if-ne v8, v9, :cond_28f

    iget v8, v5, Lcn/jim/wallethelper/WalletVideoFlow$Node;->r:I

    iget v9, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->r:I

    if-ne v8, v9, :cond_28f

    iget v5, v5, Lcn/jim/wallethelper/WalletVideoFlow$Node;->b:I

    iget v8, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->b:I

    if-eq v5, v8, :cond_292

    :cond_28f
    iput v0, v3, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->button:I

    return-object v3

    .line 54
    :cond_292
    iget v5, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->index:I

    iput v5, v3, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->button:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->l:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v9, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->t:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v9, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->r:I

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v6, Lcn/jim/wallethelper/WalletVideoFlow$Node;->b:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->buttonKey:Ljava/lang/String;

    .line 55
    move-object v5, v6

    goto/16 :goto_1f1

    .line 56
    :cond_2ca
    return-object v3

    .line 48
    :cond_2cb
    :goto_2cb
    iput v0, v3, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->count:I

    return-object v3

    .line 40
    :cond_2ce
    :goto_2ce
    return-object v3
.end method


# virtual methods
.method public retryNetwork(J)V
    .registers 6

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcn/jim/wallethelper/WalletVideoFlow;->state:I

    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletVideoFlow;->adSeen:Z

    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletVideoFlow;->timedOut:Z

    iput-boolean v0, p0, Lcn/jim/wallethelper/WalletVideoFlow;->networkPending:Z

    iput-wide p1, p0, Lcn/jim/wallethelper/WalletVideoFlow;->stageAt:J

    .line 141
    const-wide/16 v1, 0x7d0

    add-long/2addr p1, v1

    iput-wide p1, p0, Lcn/jim/wallethelper/WalletVideoFlow;->nextAt:J

    iput v0, p0, Lcn/jim/wallethelper/WalletVideoFlow;->scrolls:I

    iput v0, p0, Lcn/jim/wallethelper/WalletVideoFlow;->opens:I

    const/4 p1, -0x1

    iput p1, p0, Lcn/jim/wallethelper/WalletVideoFlow;->stableIndex:I

    iput v0, p0, Lcn/jim/wallethelper/WalletVideoFlow;->claims:I

    .line 142
    return-void
.end method

.method public step(Lcn/jim/wallethelper/WalletVideoFlow$Frame;J)I
    .registers 26

    .line 71
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const/4 v4, 0x0

    iput-object v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->message:Ljava/lang/String;

    const/4 v4, -0x1

    iput v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->index:I

    .line 72
    iget-wide v5, v0, Lcn/jim/wallethelper/WalletVideoFlow;->started:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_18

    iput-wide v2, v0, Lcn/jim/wallethelper/WalletVideoFlow;->started:J

    iput-wide v2, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stageAt:J

    .line 73
    :cond_18
    iget-wide v5, v0, Lcn/jim/wallethelper/WalletVideoFlow;->nextAt:J

    cmp-long v5, v2, v5

    const/4 v6, 0x0

    if-gez v5, :cond_20

    return v6

    .line 74
    :cond_20
    iget-boolean v5, v0, Lcn/jim/wallethelper/WalletVideoFlow;->networkPending:Z

    const/4 v7, 0x6

    const-string v8, "\u89c6\u9891\u8d85\u65f6\uff0c\u7533\u8bf7\u5173\u95ed Wi-Fi \u540e\u91cd\u8bd5\u4e00\u6b21"

    if-eqz v5, :cond_2c

    iput-boolean v6, v0, Lcn/jim/wallethelper/WalletVideoFlow;->networkPending:Z

    iput-object v8, v0, Lcn/jim/wallethelper/WalletVideoFlow;->message:Ljava/lang/String;

    return v7

    .line 75
    :cond_2c
    iget-wide v9, v0, Lcn/jim/wallethelper/WalletVideoFlow;->started:J

    sub-long v9, v2, v9

    const-wide/32 v11, 0x927c0

    cmp-long v5, v9, v11

    if-lez v5, :cond_3e

    const-string v1, "\u89c6\u9891\u9636\u6bb5\u8d85\u8fc710\u5206\u949f\uff0c\u5df2\u505c\u6b62"

    invoke-direct {v0, v1}, Lcn/jim/wallethelper/WalletVideoFlow;->fail(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 76
    :cond_3e
    const-string v5, "com.hihonor.wallet"

    iget-object v9, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v9, 0x5dc

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-nez v5, :cond_7b

    .line 77
    iget v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->opens:I

    if-ge v1, v12, :cond_69

    iget-wide v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stageAt:J

    sub-long v4, v2, v4

    cmp-long v1, v4, v9

    if-ltz v1, :cond_69

    iget v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->opens:I

    add-int/2addr v1, v13

    iput v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->opens:I

    const-wide/16 v4, 0x7d0

    add-long v1, v2, v4

    iput-wide v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->nextAt:J

    const-string v1, "\u89c6\u9891\u6d41\u7a0b\u8fd4\u56de\u94b1\u5305\u6838\u5bf9\u72b6\u6001"

    iput-object v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->message:Ljava/lang/String;

    return v11

    .line 78
    :cond_69
    iget-wide v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stageAt:J

    sub-long v1, v2, v4

    const-wide/16 v3, 0x4e20

    cmp-long v1, v1, v3

    if-lez v1, :cond_7a

    const-string v1, "\u89c6\u9891\u6d41\u7a0b\u672a\u56de\u5230\u94b1\u5305\uff0c\u8bf7\u5904\u7406\u5f53\u524d\u9875\u9762\u540e\u91cd\u8bd5"

    invoke-direct {v0, v1}, Lcn/jim/wallethelper/WalletVideoFlow;->fail(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 79
    :cond_7a
    return v6

    .line 81
    :cond_7b
    iget-boolean v5, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->ad:Z

    const/4 v14, 0x3

    if-eqz v5, :cond_124

    .line 82
    iget-boolean v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->adSeen:Z

    if-nez v4, :cond_94

    iput-boolean v13, v0, Lcn/jim/wallethelper/WalletVideoFlow;->adSeen:Z

    iput v12, v0, Lcn/jim/wallethelper/WalletVideoFlow;->state:I

    iput-wide v2, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stageAt:J

    iput-wide v2, v0, Lcn/jim/wallethelper/WalletVideoFlow;->progressAt:J

    iget-object v4, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->countdown:Ljava/lang/String;

    iput-object v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->lastCountdown:Ljava/lang/String;

    const-string v4, "\u89c6\u9891\u5e7f\u544a\u5df2\u6253\u5f00\uff0c\u7b49\u5f85\u5b9e\u9645\u5956\u52b1\u5b8c\u6210\u63d0\u793a"

    iput-object v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->message:Ljava/lang/String;

    .line 83
    :cond_94
    iget-object v4, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->countdown:Ljava/lang/String;

    iget-object v5, v0, Lcn/jim/wallethelper/WalletVideoFlow;->lastCountdown:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c3

    iget-object v4, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->countdown:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c3

    iget-object v4, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->countdown:Ljava/lang/String;

    iput-object v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->lastCountdown:Ljava/lang/String;

    iput-wide v2, v0, Lcn/jim/wallethelper/WalletVideoFlow;->progressAt:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u89c6\u9891\u5e7f\u544a\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->countdown:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->message:Ljava/lang/String;

    .line 84
    :cond_c3
    iget-boolean v4, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->reward:Z

    if-eqz v4, :cond_e2

    .line 85
    iget v4, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->close:I

    if-gez v4, :cond_d2

    const-string v1, "\u5e7f\u544a\u5956\u52b1\u5df2\u5c31\u7eea\uff0c\u4f46\u672a\u8bc6\u522b\u5230\u5173\u95ed\u6309\u94ae"

    invoke-direct {v0, v1}, Lcn/jim/wallethelper/WalletVideoFlow;->fail(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 86
    :cond_d2
    iput v14, v0, Lcn/jim/wallethelper/WalletVideoFlow;->state:I

    iput-wide v2, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stageAt:J

    add-long/2addr v2, v9

    iput-wide v2, v0, Lcn/jim/wallethelper/WalletVideoFlow;->nextAt:J

    iget v1, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->close:I

    iput v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->index:I

    const-string v1, "\u5e7f\u544a\u5956\u52b1\u5df2\u5c31\u7eea\uff0c\u5173\u95ed\u540e\u6838\u5bf9\u4efb\u52a1\u9886\u53d6"

    iput-object v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->message:Ljava/lang/String;

    return v14

    .line 88
    :cond_e2
    iget-wide v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->progressAt:J

    sub-long v4, v2, v4

    const-wide/32 v9, 0xafc8

    cmp-long v4, v4, v9

    if-gez v4, :cond_fa

    iget-wide v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stageAt:J

    sub-long v4, v2, v4

    const-wide/32 v9, 0x2bf20

    cmp-long v4, v4, v9

    if-ltz v4, :cond_f9

    goto :goto_fa

    .line 95
    :cond_f9
    return v6

    .line 89
    :cond_fa
    :goto_fa
    iget-boolean v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->networkUsed:Z

    if-eqz v4, :cond_105

    const-string v1, "\u5173\u95ed Wi-Fi \u91cd\u8bd5\u540e\u4ecd\u8d85\u65f6\uff0c\u5df2\u505c\u6b62"

    invoke-direct {v0, v1}, Lcn/jim/wallethelper/WalletVideoFlow;->fail(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 90
    :cond_105
    iput-boolean v13, v0, Lcn/jim/wallethelper/WalletVideoFlow;->networkUsed:Z

    iput-boolean v13, v0, Lcn/jim/wallethelper/WalletVideoFlow;->timedOut:Z

    iput v14, v0, Lcn/jim/wallethelper/WalletVideoFlow;->state:I

    iput-wide v2, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stageAt:J

    .line 91
    iget v4, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->close:I

    if-gez v4, :cond_114

    iput-object v8, v0, Lcn/jim/wallethelper/WalletVideoFlow;->message:Ljava/lang/String;

    return v7

    .line 92
    :cond_114
    iput-boolean v13, v0, Lcn/jim/wallethelper/WalletVideoFlow;->networkPending:Z

    const-wide/16 v4, 0x708

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcn/jim/wallethelper/WalletVideoFlow;->nextAt:J

    iget v1, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->close:I

    iput v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->index:I

    .line 93
    const-string v1, "\u89c6\u9891\u5012\u8ba1\u65f6\u505c\u6ede\u6216\u64ad\u653e\u8d85\u65f6\uff0c\u9000\u51fa\u540e\u5207\u6362\u7f51\u7edc\u91cd\u8bd5\uff0c\u4e0d\u8ba1\u4e3a\u5b8c\u6210"

    iput-object v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->message:Ljava/lang/String;

    return v14

    .line 97
    :cond_124
    iget-boolean v5, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->popup:Z

    if-eqz v5, :cond_134

    const-wide/16 v4, 0x384

    add-long v1, v2, v4

    iput-wide v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->nextAt:J

    const-string v1, "\u5173\u95ed\u89c6\u9891\u5956\u52b1\u5f39\u7a97\uff0c\u6838\u5bf9\u5b9e\u9645\u9886\u53d6\u6b21\u6570"

    iput-object v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->message:Ljava/lang/String;

    const/4 v1, 0x5

    return v1

    .line 98
    :cond_134
    iget v5, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->count:I

    if-ltz v5, :cond_34f

    .line 99
    iput v6, v0, Lcn/jim/wallethelper/WalletVideoFlow;->opens:I

    .line 100
    iget v5, v0, Lcn/jim/wallethelper/WalletVideoFlow;->initial:I

    const-wide/16 v16, 0x3e8

    const-string v7, "/"

    if-gez v5, :cond_16b

    iget v5, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->count:I

    iput v5, v0, Lcn/jim/wallethelper/WalletVideoFlow;->initial:I

    iget v5, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->count:I

    iput v5, v0, Lcn/jim/wallethelper/WalletVideoFlow;->baseline:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u89c6\u9891\u4efb\u52a1\u5f53\u524d\u6b21\u6570 "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->count:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->max:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcn/jim/wallethelper/WalletVideoFlow;->message:Ljava/lang/String;

    .line 101
    :cond_16b
    iget v5, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->count:I

    iget v8, v0, Lcn/jim/wallethelper/WalletVideoFlow;->baseline:I

    if-ge v5, v8, :cond_178

    const-string v1, "\u89c6\u9891\u6b21\u6570\u53d1\u751f\u56de\u9000\uff0c\u505c\u6b62\u4ee5\u907f\u514d\u91cd\u590d\u9886\u53d6"

    invoke-direct {v0, v1}, Lcn/jim/wallethelper/WalletVideoFlow;->fail(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 102
    :cond_178
    iget v5, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->count:I

    iget v8, v0, Lcn/jim/wallethelper/WalletVideoFlow;->baseline:I

    move-wide/from16 v18, v9

    const-string v9, " \u6b21"

    const-string v10, "\uff1b\u672c\u6b21\u786e\u8ba4\u9886\u53d6 "

    const-wide/16 v20, 0x3a98

    const-string v15, "\u89c6\u9891\u4eca\u65e5\u5df2\u5b8c\u6210 "

    if-le v5, v8, :cond_203

    .line 103
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u89c6\u9891\u9886\u53d6\u5df2\u786e\u8ba4\uff1a"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v0, Lcn/jim/wallethelper/WalletVideoFlow;->baseline:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\u2192"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->count:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->max:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcn/jim/wallethelper/WalletVideoFlow;->message:Ljava/lang/String;

    .line 104
    iget v5, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->count:I

    iput v5, v0, Lcn/jim/wallethelper/WalletVideoFlow;->baseline:I

    iput v6, v0, Lcn/jim/wallethelper/WalletVideoFlow;->state:I

    iput-boolean v6, v0, Lcn/jim/wallethelper/WalletVideoFlow;->adSeen:Z

    iput-boolean v6, v0, Lcn/jim/wallethelper/WalletVideoFlow;->timedOut:Z

    iput v6, v0, Lcn/jim/wallethelper/WalletVideoFlow;->claims:I

    iput v6, v0, Lcn/jim/wallethelper/WalletVideoFlow;->failures:I

    iput v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stableIndex:I

    .line 105
    add-long v2, v2, v16

    iput-wide v2, v0, Lcn/jim/wallethelper/WalletVideoFlow;->nextAt:J

    .line 106
    iget v2, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->count:I

    iget v3, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->max:I

    if-lt v2, v3, :cond_202

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->max:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->count:I

    iget v3, v0, Lcn/jim/wallethelper/WalletVideoFlow;->initial:I

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/jim/wallethelper/WalletVideoFlow;->done(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 107
    :cond_202
    return v6

    .line 109
    :cond_203
    iget v5, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->count:I

    iget v8, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->max:I

    if-lt v5, v8, :cond_23c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->max:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->count:I

    iget v3, v0, Lcn/jim/wallethelper/WalletVideoFlow;->initial:I

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/jim/wallethelper/WalletVideoFlow;->done(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 110
    :cond_23c
    iget v5, v0, Lcn/jim/wallethelper/WalletVideoFlow;->state:I

    if-eq v5, v12, :cond_244

    iget v5, v0, Lcn/jim/wallethelper/WalletVideoFlow;->state:I

    if-ne v5, v14, :cond_281

    .line 111
    :cond_244
    iput v11, v0, Lcn/jim/wallethelper/WalletVideoFlow;->state:I

    iput-wide v2, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stageAt:J

    iput v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stableIndex:I

    iput v6, v0, Lcn/jim/wallethelper/WalletVideoFlow;->claims:I

    .line 112
    iget-boolean v5, v0, Lcn/jim/wallethelper/WalletVideoFlow;->timedOut:Z

    if-eqz v5, :cond_27d

    iget v5, v0, Lcn/jim/wallethelper/WalletVideoFlow;->failures:I

    add-int/2addr v5, v13

    iput v5, v0, Lcn/jim/wallethelper/WalletVideoFlow;->failures:I

    iget v5, v0, Lcn/jim/wallethelper/WalletVideoFlow;->failures:I

    if-le v5, v13, :cond_27d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u89c6\u9891\u8fde\u7eed\u4e24\u6b21\u672a\u5b8c\u6210\uff0c\u5df2\u505c\u6b62\uff1b\u5f53\u524d "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->max:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/jim/wallethelper/WalletVideoFlow;->fail(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 113
    :cond_27d
    const-string v5, "\u5df2\u56de\u89c6\u9891\u4efb\u52a1\u5361\u7247\uff0c\u6838\u5bf9\u5e76\u9886\u53d6"

    iput-object v5, v0, Lcn/jim/wallethelper/WalletVideoFlow;->message:Ljava/lang/String;

    .line 115
    :cond_281
    iget v5, v0, Lcn/jim/wallethelper/WalletVideoFlow;->state:I

    const-wide/16 v7, 0x1770

    if-ne v5, v13, :cond_290

    iget-wide v9, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stageAt:J

    sub-long v9, v2, v9

    cmp-long v5, v9, v7

    if-gez v5, :cond_290

    return v6

    .line 116
    :cond_290
    iget v5, v0, Lcn/jim/wallethelper/WalletVideoFlow;->state:I

    if-ne v5, v13, :cond_2b0

    iget-wide v9, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stageAt:J

    sub-long v9, v2, v9

    cmp-long v5, v9, v7

    if-ltz v5, :cond_2b0

    iget v5, v0, Lcn/jim/wallethelper/WalletVideoFlow;->failures:I

    add-int/2addr v5, v13

    iput v5, v0, Lcn/jim/wallethelper/WalletVideoFlow;->failures:I

    iput v6, v0, Lcn/jim/wallethelper/WalletVideoFlow;->state:I

    iput v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stableIndex:I

    iget v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->failures:I

    if-le v4, v13, :cond_2b0

    const-string v1, "\u89c6\u9891\u6309\u94ae\u8fde\u7eed\u4e24\u6b21\u65e0\u7ed3\u679c\uff0c\u5df2\u505c\u6b62"

    invoke-direct {v0, v1}, Lcn/jim/wallethelper/WalletVideoFlow;->fail(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 117
    :cond_2b0
    iget v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->state:I

    const-wide/16 v7, 0x1f40

    if-ne v4, v11, :cond_2c3

    iget v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->claims:I

    if-lez v4, :cond_2c3

    iget-wide v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stageAt:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v7

    if-gez v4, :cond_2c3

    return v6

    .line 118
    :cond_2c3
    iget v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->state:I

    if-ne v4, v11, :cond_2da

    iget v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->claims:I

    if-lt v4, v12, :cond_2da

    iget-wide v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stageAt:J

    sub-long v4, v2, v4

    cmp-long v4, v4, v7

    if-ltz v4, :cond_2da

    const-string v1, "\u89c6\u9891\u9886\u53d6\u540e\u6b21\u6570\u672a\u589e\u52a0\uff0c\u5df2\u505c\u6b62"

    invoke-direct {v0, v1}, Lcn/jim/wallethelper/WalletVideoFlow;->fail(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 119
    :cond_2da
    iget v4, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->button:I

    if-gez v4, :cond_2ee

    iget-wide v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stageAt:J

    sub-long v1, v2, v4

    cmp-long v1, v1, v20

    if-lez v1, :cond_2ed

    const-string v1, "\u89c6\u9891\u5361\u7247\u6309\u94ae\u4e0d\u53ef\u786e\u8ba4\uff0c\u5df2\u505c\u6b62"

    invoke-direct {v0, v1}, Lcn/jim/wallethelper/WalletVideoFlow;->fail(Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_2ed
    return v6

    .line 121
    :cond_2ee
    iget v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stableIndex:I

    iget v5, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->button:I

    if-ne v4, v5, :cond_344

    iget-object v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stableKey:Ljava/lang/String;

    iget-object v5, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->buttonKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2ff

    goto :goto_344

    .line 122
    :cond_2ff
    iget-wide v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stableAt:J

    sub-long v4, v2, v4

    const-wide/16 v7, 0x2bc

    cmp-long v4, v4, v7

    if-gez v4, :cond_30a

    return v6

    .line 123
    :cond_30a
    iget v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->state:I

    if-nez v4, :cond_31f

    iget v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->attempts:I

    add-int/2addr v4, v13

    iput v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->attempts:I

    iget v5, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->max:I

    add-int/2addr v5, v12

    if-le v4, v5, :cond_31f

    const-string v1, "\u89c6\u9891\u542f\u52a8\u6b21\u6570\u5df2\u8fbe\u91cd\u8bd5\u4e0a\u9650"

    invoke-direct {v0, v1}, Lcn/jim/wallethelper/WalletVideoFlow;->fail(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 124
    :cond_31f
    iget v1, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->button:I

    iput v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->index:I

    add-long v4, v2, v18

    iput-wide v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->nextAt:J

    iput-wide v2, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stageAt:J

    iput-boolean v6, v0, Lcn/jim/wallethelper/WalletVideoFlow;->adSeen:Z

    .line 125
    iget v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->state:I

    if-ne v1, v11, :cond_339

    iget v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->claims:I

    add-int/2addr v1, v13

    iput v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->claims:I

    const-string v1, "\u70b9\u51fb\u89c6\u9891\u5361\u7247\u9886\u53d6\uff0c\u7b49\u5f85\u6b21\u6570\u786e\u8ba4"

    iput-object v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->message:Ljava/lang/String;

    goto :goto_343

    .line 126
    :cond_339
    iput v13, v0, Lcn/jim/wallethelper/WalletVideoFlow;->state:I

    iput-boolean v6, v0, Lcn/jim/wallethelper/WalletVideoFlow;->adSeen:Z

    iput-boolean v6, v0, Lcn/jim/wallethelper/WalletVideoFlow;->timedOut:Z

    const-string v1, "\u70b9\u51fb\u89c6\u9891\u4efb\u52a1\u5361\u7247\uff0c\u7b49\u5f85\u5e7f\u544a\u6216\u5df2\u6709\u5956\u52b1"

    iput-object v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->message:Ljava/lang/String;

    .line 127
    :goto_343
    return v14

    .line 121
    :cond_344
    :goto_344
    iget v4, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->button:I

    iput v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stableIndex:I

    iget-object v1, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->buttonKey:Ljava/lang/String;

    iput-object v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stableKey:Ljava/lang/String;

    iput-wide v2, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stableAt:J

    return v6

    .line 129
    :cond_34f
    const-wide/16 v16, 0x3e8

    const-wide/16 v20, 0x3a98

    iput v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stableIndex:I

    .line 130
    iget v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->state:I

    if-eqz v4, :cond_364

    iget-wide v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stageAt:J

    sub-long v4, v2, v4

    const-wide/16 v7, 0x2710

    cmp-long v4, v4, v7

    if-gez v4, :cond_364

    return v6

    .line 131
    :cond_364
    iget v4, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->savings:I

    if-ltz v4, :cond_375

    iget-boolean v4, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->page:Z

    if-nez v4, :cond_375

    iget v1, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->savings:I

    iput v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->index:I

    add-long v1, v2, v16

    iput-wide v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->nextAt:J

    return v14

    .line 132
    :cond_375
    iget-boolean v1, v1, Lcn/jim/wallethelper/WalletVideoFlow$Frame;->page:Z

    if-eqz v1, :cond_3ad

    .line 133
    iget v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->scrolls:I

    add-int/2addr v1, v13

    iput v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->scrolls:I

    const/16 v4, 0xe

    if-le v1, v4, :cond_389

    const-string v1, "\u672a\u627e\u5230\u53ef\u6838\u5bf9\u6b21\u6570\u7684\u89c6\u9891\u4efb\u52a1\u5361\u7247"

    invoke-direct {v0, v1}, Lcn/jim/wallethelper/WalletVideoFlow;->fail(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 134
    :cond_389
    const-wide/16 v4, 0x44c

    add-long v1, v2, v4

    iput-wide v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->nextAt:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b9a\u4f4d\u89c2\u770b\u89c6\u9891\u4efb\u52a1\uff08"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcn/jim/wallethelper/WalletVideoFlow;->scrolls:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/14\uff09"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/jim/wallethelper/WalletVideoFlow;->message:Ljava/lang/String;

    return v12

    .line 136
    :cond_3ad
    iget-wide v4, v0, Lcn/jim/wallethelper/WalletVideoFlow;->stageAt:J

    sub-long v1, v2, v4

    cmp-long v1, v1, v20

    if-lez v1, :cond_3bc

    const-string v1, "\u672a\u627e\u5230\u94b1\u5305\u7701\u94b1\u4efb\u52a1\u9875\uff0c\u5df2\u505c\u6b62"

    invoke-direct {v0, v1}, Lcn/jim/wallethelper/WalletVideoFlow;->fail(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 137
    :cond_3bc
    return v6
.end method
