.class public final Lcn/jim/wallethelper/tools/soda/AdSession;
.super Ljava/lang/Object;
.source "AdSession.java"


# static fields
.field private static final CLOCK:Ljava/util/regex/Pattern;

.field private static final COUNT:Ljava/util/regex/Pattern;


# instance fields
.field public awaitingNew:Z

.field public completed:I

.field public credited:Z

.field public lastProgress:J

.field public nextAction:J

.field public observedUntil:J

.field public final target:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    const-string v0, "(?i)(\\d{1,3})\\s*(?:\u79d2|s)(?![a-z])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jim/wallethelper/tools/soda/AdSession;->COUNT:Ljava/util/regex/Pattern;

    .line 8
    const-string v0, "(?<![0-9])([0-9]{1,2}):([0-5][0-9])(?![0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcn/jim/wallethelper/tools/soda/AdSession;->CLOCK:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x270f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->target:I

    iput-wide p2, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->lastProgress:J

    return-void
.end method

.method public static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 14
    const-string v0, ""

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "\\s+"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static countdown(Ljava/lang/String;)I
    .locals 4

    .line 16
    sget-object v0, Lcn/jim/wallethelper/tools/soda/AdSession;->COUNT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 17
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 18
    sget-object v0, Lcn/jim/wallethelper/tools/soda/AdSession;->CLOCK:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 19
    nop

    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-nez p0, :cond_0

    .line 20
    return v1

    .line 19
    :cond_0
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x3c

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr p0, v0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method public static entry(Ljava/lang/String;)Z
    .locals 1

    .line 27
    invoke-static {p0}, Lcn/jim/wallethelper/tools/soda/AdSession;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u770b\u5e7f\u544a"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u770b\u89c6\u9891\u514d\u8d39\u542c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u770b\u5e7f\u544a\u514d\u8d39\u542c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u770b\u89c6\u9891\u9886\u514d\u8d39\u542c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static success(Ljava/lang/String;)Z
    .locals 1

    .line 22
    const-string v0, "(?m)^\\s*\u9886\u53d6\u6210\u529f\\s*[\u00d7xX]?\\s*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static upsell(Ljava/lang/String;)Z
    .locals 1

    .line 24
    invoke-static {p0}, Lcn/jim/wallethelper/tools/soda/AdSession;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u518d\u770b"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u89c6\u9891"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u9886\u53d6\u5956\u52b1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u575a\u6301\u9000\u51fa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public credit(Ljava/lang/String;J)Z
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcn/jim/wallethelper/tools/soda/AdSession;->finished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->credited:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->awaitingNew:Z

    if-nez v0, :cond_3

    invoke-static {p1}, Lcn/jim/wallethelper/tools/soda/AdSession;->countdown(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3

    invoke-static {p1}, Lcn/jim/wallethelper/tools/soda/AdSession;->success(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 38
    :cond_1
    iget-boolean p1, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->credited:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iput-boolean v0, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->credited:Z

    iget p1, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->completed:I

    add-int/2addr p1, v0

    iput p1, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->completed:I

    iput-wide p2, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->lastProgress:J

    .line 39
    :cond_2
    return v0

    .line 37
    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public finished()Z
    .locals 2

    .line 45
    iget v0, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->completed:I

    iget v1, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->target:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next(J)V
    .locals 2

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->awaitingNew:Z

    const-wide/16 v0, 0x7d0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->nextAction:J

    iput-wide p1, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->lastProgress:J

    return-void
.end method

.method public observeCountdown(IJ)V
    .locals 4

    .line 30
    if-gez p1, :cond_0

    return-void

    .line 31
    :cond_0
    iget-boolean v0, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->awaitingNew:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->credited:Z

    if-eqz v0, :cond_2

    if-lez p1, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->awaitingNew:Z

    iput-boolean v0, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->credited:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->observedUntil:J

    .line 33
    :cond_2
    if-lez p1, :cond_3

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    add-long/2addr v0, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->observedUntil:J

    .line 34
    :cond_3
    iput-wide p2, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->lastProgress:J

    .line 35
    return-void
.end method

.method public observeTimerFreePage(J)V
    .locals 2

    .line 42
    iget-boolean v0, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->awaitingNew:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->awaitingNew:Z

    iput-boolean v0, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->credited:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->observedUntil:J

    iput-wide p1, p0, Lcn/jim/wallethelper/tools/soda/AdSession;->lastProgress:J

    .line 43
    :cond_0
    return-void
.end method
