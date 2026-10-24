.class public final Lcn/jim/wallethelper/TaskInstallLedger;
.super Ljava/lang/Object;
.source "TaskInstallLedger.java"


# instance fields
.field private active:Ljava/lang/String;

.field private final attempted:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final baseline:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private baselineReady:Z

.field private final baselineTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final bonds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private clicked:Z

.field private final completed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final identities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private installer:Ljava/lang/String;

.field private lastScan:J

.field private messages:Ljava/lang/String;

.field private openedAt:J

.field private final owners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final packages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingTwoDay:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pm:Landroid/content/pm/PackageManager;

.field private final prefs:Landroid/content/SharedPreferences;

.field private final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private removed:I

.field private final requests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final runStart:J

.field private final seen:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private skipped:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->runStart:J

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->baseline:Ljava/util/Set;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->baselineTimes:Ljava/util/Map;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->seen:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->requests:Ljava/util/Map;

    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->identities:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->owners:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->completed:Ljava/util/Set;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->attempted:Ljava/util/Set;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->queue:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->pendingTwoDay:Ljava/util/Set;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->bonds:Ljava/util/Map;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->messages:Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->pm:Landroid/content/pm/PackageManager;

    const-string v0, "section2_download_records"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->prefs:Landroid/content/SharedPreferences;

    .line 34
    const/4 p1, 0x1

    :try_start_73
    iget-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->baseline:Ljava/util/Set;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->baselineTimes:Ljava/util/Map;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-wide v5, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    :cond_9e
    iput-boolean p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->baselineReady:Z
    :try_end_a0
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_a0} :catch_a1

    .line 35
    goto :goto_a7

    :catch_a1
    move-exception v0

    const-string v0, "\u5b89\u88c5\u57fa\u7ebf\u8bfb\u53d6\u5931\u8d25\uff0c\u672c\u8f6e\u4e0d\u81ea\u52a8\u5378\u8f7d"

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/TaskInstallLedger;->log(Ljava/lang/String;)V

    .line 36
    :goto_a7
    iget-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b5
    :goto_b5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_274

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/String;

    if-nez v3, :cond_ca

    goto :goto_b5

    .line 38
    :cond_ca
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "\n"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "request:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_121

    array-length v4, v3

    if-ne v4, v5, :cond_121

    aget-object v4, v3, v1

    const-string v6, "rq1"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_121

    .line 40
    :try_start_f3
    aget-object v3, v3, p1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_11e

    iget-wide v5, p0, Lcn/jim/wallethelper/TaskInstallLedger;->runStart:J

    sub-long/2addr v5, v3

    const-wide/32 v7, 0x240c8400

    cmp-long v5, v5, v7

    if-gez v5, :cond_11e

    iget-object v5, p0, Lcn/jim/wallethelper/TaskInstallLedger;->requests:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11e
    .catch Ljava/lang/NumberFormatException; {:try_start_f3 .. :try_end_11e} :catch_11f

    .line 41
    :cond_11e
    goto :goto_b5

    :catch_11f
    move-exception v2

    .line 42
    goto :goto_b5

    .line 44
    :cond_121
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "seen:"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v6, 0x5

    if-eqz v4, :cond_15b

    array-length v4, v3

    if-ne v4, v5, :cond_15b

    aget-object v4, v3, v1

    const-string v7, "seen1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15b

    .line 45
    :try_start_13d
    iget-object v4, p0, Lcn/jim/wallethelper/TaskInstallLedger;->seen:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aget-object v3, v3, p1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_156
    .catch Ljava/lang/NumberFormatException; {:try_start_13d .. :try_end_156} :catch_158

    .line 46
    goto/16 :goto_b5

    :catch_158
    move-exception v2

    .line 47
    goto/16 :goto_b5

    .line 49
    :cond_15b
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "hold:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_186

    const-string v4, "1"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_186

    .line 50
    iget-object v3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->pendingTwoDay:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b5

    .line 52
    :cond_186
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "bond:"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1cb

    array-length v4, v3

    if-lt v4, v5, :cond_1cb

    .line 53
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    :try_start_1a1
    iget-object v4, p0, Lcn/jim/wallethelper/TaskInstallLedger;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-wide v4, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    aget-object v6, v3, v1

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1c6

    .line 55
    iget-object v4, p0, Lcn/jim/wallethelper/TaskInstallLedger;->bonds:Ljava/util/Map;

    new-instance v5, Ljava/util/HashSet;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    array-length v3, v3

    invoke-interface {v6, p1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c6
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1c6} :catch_1c8

    :cond_1c6
    goto/16 :goto_b5

    :catch_1c8
    move-exception v2

    .line 56
    goto/16 :goto_b5

    .line 58
    :cond_1cb
    array-length v4, v3

    if-ne v4, v6, :cond_b5

    aget-object v4, v3, v1

    const-string v6, "v2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1da

    goto/16 :goto_b5

    .line 60
    :cond_1da
    :try_start_1da
    iget-object v4, p0, Lcn/jim/wallethelper/TaskInstallLedger;->pm:Landroid/content/pm/PackageManager;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    aget-object v6, v3, p1

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 61
    iget-wide v8, v4, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v8, v8, v6

    if-nez v8, :cond_b5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v8, v9}, Lcn/jim/wallethelper/TaskInstallLedger;->protectedPackage(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_204

    goto/16 :goto_b5

    .line 62
    :cond_204
    iget-object v8, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, p0, Lcn/jim/wallethelper/TaskInstallLedger;->pm:Landroid/content/pm/PackageManager;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v4, p0, Lcn/jim/wallethelper/TaskInstallLedger;->identities:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcn/jim/wallethelper/TaskInstallLedger;->owners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aget-object v5, v3, v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const/4 v4, 0x3

    aget-object v3, v3, v4

    const-string v4, "done"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24d

    iget-object v3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->completed:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_24d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6062\u590d\u4efb\u52a1\u5b89\u88c5\u8bb0\u5f55\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/jim/wallethelper/TaskInstallLedger;->log(Ljava/lang/String;)V
    :try_end_26f
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_26f} :catch_270

    goto :goto_271

    .line 66
    :catch_270
    move-exception v2

    :goto_271
    nop

    .line 67
    goto/16 :goto_b5

    .line 68
    :cond_274
    return-void
.end method

.method public static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 69
    const-string v0, ""

    if-nez p0, :cond_5

    goto :goto_17

    :cond_5
    sget-object v1, Ljava/text/Normalizer$Form;->NFKC:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\s+"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0
.end method

.method public static eligible(ZZILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 76
    if-eqz p0, :cond_30

    if-nez p1, :cond_30

    invoke-static {p3, p2}, Lcn/jim/wallethelper/TaskInstallLedger;->protectedPackage(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_30

    cmp-long p0, p4, p6

    if-ltz p0, :cond_30

    const-wide/16 p0, 0x0

    cmp-long p0, p6, p0

    if-lez p0, :cond_30

    const/4 p0, 0x1

    if-ne p10, p0, :cond_30

    .line 77
    invoke-static {p8}, Lcn/jim/wallethelper/TaskInstallLedger;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_30

    invoke-static {p8}, Lcn/jim/wallethelper/TaskInstallLedger;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p9}, Lcn/jim/wallethelper/TaskInstallLedger;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    .line 76
    :goto_31
    return p0
.end method

.method public static finalStatus(ILjava/lang/String;Z)Z
    .locals 3

    .line 219
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    if-eq p0, v0, :cond_7

    return v1

    .line 220
    :cond_7
    invoke-static {p1}, Lcn/jim/wallethelper/TaskInstallLedger;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 221
    const-string v2, "\u660e\u65e5"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    const-string v2, "\u6b21\u65e5"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_3a

    .line 222
    :cond_1c
    const-string v2, "\u5df2\u9886\u5956"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "\u5df2\u9886\u53d6"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    const-string v2, "\u5df2\u5b8c\u6210"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_38

    if-ne p0, v0, :cond_39

    if-eqz p2, :cond_39

    :cond_38
    const/4 v1, 0x1

    :cond_39
    return v1

    .line 221
    :cond_3a
    :goto_3a
    return v1
.end method

.method private held(Ljava/lang/String;)Z
    .locals 8

    .line 143
    iget-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->owners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->bonds:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->bonds:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcn/jim/wallethelper/TaskInstallLedger;->pendingTwoDay:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    return v2

    .line 145
    :cond_32
    const-string v1, "0:"

    if-eqz v0, :cond_45

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object v3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->completed:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_45

    return v2

    .line 146
    :cond_45
    iget-object v3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->pendingTwoDay:Ljava/util/Set;

    iget-object v4, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcn/jim/wallethelper/TaskInstallLedger;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    return v2

    .line 147
    :cond_5a
    if-eqz v0, :cond_74

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v3, 0x2

    if-le p1, v3, :cond_74

    iget-object p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->pendingTwoDay:Ljava/util/Set;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/jim/wallethelper/TaskInstallLedger;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_74

    return v2

    .line 148
    :cond_74
    const-string p1, "extra"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_e2

    iget-object p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->pendingTwoDay:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_83
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 149
    nop

    .line 150
    iget-object v4, p0, Lcn/jim/wallethelper/TaskInstallLedger;->owners:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_dd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 151
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcn/jim/wallethelper/TaskInstallLedger;->owners:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcn/jim/wallethelper/TaskInstallLedger;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_db

    iget-object v6, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcn/jim/wallethelper/TaskInstallLedger;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9a

    :cond_db
    move v3, v2

    goto :goto_de

    .line 150
    :cond_dd
    move v3, v0

    .line 152
    :goto_de
    if-nez v3, :cond_e1

    return v2

    .line 153
    :cond_e1
    goto :goto_83

    .line 154
    :cond_e2
    return v0
.end method

.method private installed(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->pm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    return-object p1
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->messages:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->messages:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, ""

    goto :goto_18

    :cond_16
    const-string v1, "\n"

    :goto_18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->messages:Ljava/lang/String;

    return-void
.end method

.method public static matchesDialogLabel(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 293
    invoke-static {p0}, Lcn/jim/wallethelper/TaskInstallLedger;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcn/jim/wallethelper/TaskInstallLedger;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_52

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u201c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u201d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_50

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_52

    :cond_50
    const/4 p0, 0x1

    goto :goto_53

    :cond_52
    const/4 p0, 0x0

    :goto_53
    return p0
.end method

.method private originalInstall(Ljava/lang/String;J)Z
    .locals 2

    .line 80
    iget-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->baselineTimes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 81
    iget-object v1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->baseline:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-nez p1, :cond_1c

    :cond_1a
    const/4 p1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    return p1
.end method

.method private persist(Ljava/lang/String;)V
    .locals 5

    .line 183
    iget-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->owners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    const-string v1, "\n"

    if-eqz v0, :cond_7f

    const-string v2, "0:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 185
    iget-object v2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->bonds:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 186
    if-nez v2, :cond_28

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->bonds:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_28
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/jim/wallethelper/TaskInstallLedger;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->identities:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 190
    :cond_5b
    iget-object v2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bond:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 192
    :cond_7f
    iget-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "v2\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->identities:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->owners:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->completed:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    const-string v3, "done"

    goto :goto_bb

    :cond_b9
    const-string v3, "pending"

    :goto_bb
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 193
    return-void
.end method

.method private protectedAtRequest(Ljava/lang/String;JJ)Z
    .locals 2

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcn/jim/wallethelper/TaskInstallLedger;->originalInstall(Ljava/lang/String;J)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-wide v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->runStart:J

    cmp-long p1, p4, v0

    if-gez p1, :cond_10

    cmp-long p1, p2, p4

    if-gez p1, :cond_12

    :cond_10
    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public static protectedPackage(Ljava/lang/String;I)Z
    .locals 1

    .line 71
    if-eqz p0, :cond_41

    const-string v0, "cn.jim.wallethelper"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "com.hihonor.wallet"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 72
    const-string v0, "android"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "packageinstaller"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "permissioncontroller"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 73
    const-string v0, "launcher"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, "systemui"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_41

    and-int/lit16 p0, p1, 0x81

    if-eqz p0, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 p0, 0x0

    goto :goto_42

    :cond_41
    :goto_41
    const/4 p0, 0x1

    .line 71
    :goto_42
    return p0
.end method

.method private setHold(Ljava/lang/String;Z)V
    .locals 2

    .line 138
    invoke-static {p1}, Lcn/jim/wallethelper/TaskInstallLedger;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 139
    nop

    .line 140
    iget-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->pendingTwoDay:Ljava/util/Set;

    .line 139
    const-string v1, "hold:"

    if-eqz p2, :cond_2f

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_50

    .line 140
    :cond_2f
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 141
    :goto_50
    return-void
.end method

.method private skip(Ljava/lang/String;)V
    .locals 2

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    iget-object v1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/TaskInstallLedger;->log(Ljava/lang/String;)V

    iget p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->skipped:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->skipped:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clickFailed()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v0, "\u5378\u8f7d\u786e\u8ba4\u6309\u94ae\u672a\u80fd\u70b9\u51fb\uff0c\u4fdd\u7559"

    invoke-direct {p0, v0}, Lcn/jim/wallethelper/TaskInstallLedger;->skip(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public finished(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 226
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_23

    invoke-static {v2, p3, v2}, Lcn/jim/wallethelper/TaskInstallLedger;->finalStatus(ILjava/lang/String;Z)Z

    move-result v3

    xor-int/2addr v3, v1

    invoke-direct {p0, p2, v3}, Lcn/jim/wallethelper/TaskInstallLedger;->setHold(Ljava/lang/String;Z)V

    .line 228
    :cond_23
    if-nez p1, :cond_81

    iget-object v3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_81

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 229
    iget-object v5, p0, Lcn/jim/wallethelper/TaskInstallLedger;->owners:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 230
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_62

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 231
    :cond_62
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v1

    iget-object v6, p0, Lcn/jim/wallethelper/TaskInstallLedger;->owners:Ljava/util/Map;

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-static {v2, p3, v2}, Lcn/jim/wallethelper/TaskInstallLedger;->finalStatus(ILjava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_7b

    iget-object v6, p0, Lcn/jim/wallethelper/TaskInstallLedger;->completed:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7b

    move v5, v1

    .line 233
    :cond_7b
    if-eqz v5, :cond_80

    invoke-direct {p0, v4}, Lcn/jim/wallethelper/TaskInstallLedger;->persist(Ljava/lang/String;)V

    .line 235
    :cond_80
    goto :goto_2f

    .line 236
    :cond_81
    invoke-static {p1, p3, p4}, Lcn/jim/wallethelper/TaskInstallLedger;->finalStatus(ILjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_88

    return-void

    .line 237
    :cond_88
    iget-object p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->requests:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_93

    invoke-virtual {p0}, Lcn/jim/wallethelper/TaskInstallLedger;->scan()V

    .line 238
    :cond_93
    iget-object p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_df

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->owners:Ljava/util/Map;

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_de

    iget-object p3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->completed:Ljava/util/Set;

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_de

    .line 239
    invoke-direct {p0, p2}, Lcn/jim/wallethelper/TaskInstallLedger;->persist(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u4efb\u52a1\u5b8c\u6210\uff0c\u52a0\u5165\u5378\u8f7d\u961f\u5217\uff1a"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p4, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    invoke-interface {p4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcn/jim/wallethelper/TaskInstallLedger;->log(Ljava/lang/String;)V

    .line 238
    :cond_de
    goto :goto_9d

    .line 241
    :cond_df
    return-void
.end method

.method public forceScan()V
    .locals 2

    .line 156
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->lastScan:J

    invoke-virtual {p0}, Lcn/jim/wallethelper/TaskInstallLedger;->scan()V

    return-void
.end method

.method public observed(ILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 196
    const-string v1, " ["

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->requests:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 197
    iget-boolean v3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->baselineReady:Z

    if-eqz v3, :cond_1ac

    if-eqz v2, :cond_1ac

    if-nez p3, :cond_2b

    goto/16 :goto_1ac

    .line 198
    :cond_2b
    iget-object v3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    iget-object v3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->owners:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "extra"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    .line 199
    if-nez p1, :cond_54

    iget-object p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->owners:Ljava/util/Map;

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->completed:Ljava/util/Set;

    invoke-interface {p1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcn/jim/wallethelper/TaskInstallLedger;->setHold(Ljava/lang/String;Z)V

    invoke-direct {p0, p3}, Lcn/jim/wallethelper/TaskInstallLedger;->persist(Ljava/lang/String;)V

    .line 200
    :cond_54
    return-void

    .line 203
    :cond_55
    :try_start_55
    iget-object p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->pm:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {p1, p3, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 204
    iget-wide v3, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_177

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {p3, v3}, Lcn/jim/wallethelper/TaskInstallLedger;->protectedPackage(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_177

    iget-wide v6, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_76} :catch_178

    move-object v4, p0

    move-object v5, p3

    :try_start_78
    invoke-direct/range {v4 .. v9}, Lcn/jim/wallethelper/TaskInstallLedger;->protectedAtRequest(Ljava/lang/String;JJ)Z

    move-result p3

    if-eqz p3, :cond_80

    goto/16 :goto_177

    .line 205
    :cond_80
    iget-object p3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->pm:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p3, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 208
    invoke-static {p2}, Lcn/jim/wallethelper/TaskInstallLedger;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Lcn/jim/wallethelper/TaskInstallLedger;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_ba

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4efb\u52a1\u540d\u4e0e\u4f53\u9a8c\u5e94\u7528\u540d\u79f0\u4e0d\u540c\uff0c\u6309\u5b9e\u9645\u524d\u53f0\u5305\u5173\u8054\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/jim/wallethelper/TaskInstallLedger;->log(Ljava/lang/String;)V

    .line 209
    :cond_ba
    iget-object v2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->seen:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    iget-object v2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->seen:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v6, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_138

    .line 210
    :cond_d4
    iget-object v2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->seen:Ljava/util/Map;

    iget-wide v3, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "seen1\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bb0\u5f55\u8fd0\u884c\u671f\u95f4\u5b89\u88c5\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]\uff1b\u7531\u4f53\u9a8c\u7a97\u53e3\u786e\u8ba4\u4efb\u52a1\u5f52\u5c5e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/jim/wallethelper/TaskInstallLedger;->log(Ljava/lang/String;)V

    .line 214
    :cond_138
    iget-object v2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    invoke-interface {v2, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->identities:Ljava/util/Map;

    iget-wide v3, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v2, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->owners:Ljava/util/Map;

    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v5}, Lcn/jim/wallethelper/TaskInstallLedger;->persist(Ljava/lang/String;)V

    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5df2\u8bb0\u5f55\u4f53\u9a8c\u5e94\u7528\u5b89\u88c5\u8eab\u4efd\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "]"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/TaskInstallLedger;->log(Ljava/lang/String;)V
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_174} :catch_175

    .line 216
    goto :goto_1ab

    :catch_175
    move-exception v0

    goto :goto_17a

    .line 204
    :cond_177
    :goto_177
    return-void

    .line 216
    :catch_178
    move-exception v0

    move-object v5, p3

    :goto_17a
    move-object p1, v0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4f53\u9a8c\u5e94\u7528\u5b89\u88c5\u8eab\u4efd\u6682\u672a\u8bfb\u53d6\uff1a"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "] "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/TaskInstallLedger;->log(Ljava/lang/String;)V

    .line 217
    :goto_1ab
    return-void

    .line 197
    :cond_1ac
    :goto_1ac
    return-void
.end method

.method public prepare()I
    .locals 8

    .line 158
    invoke-virtual {p0}, Lcn/jim/wallethelper/TaskInstallLedger;->forceScan()V

    iget-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->seen:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 160
    iget-object v3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_15

    .line 162
    :cond_2f
    :try_start_2f
    iget-object v3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->pm:Landroid/content/pm/PackageManager;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 163
    iget-wide v3, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_15

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_15

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v1, v3}, Lcn/jim/wallethelper/TaskInstallLedger;->protectedPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5c

    goto :goto_15

    .line 164
    :cond_5c
    iget-object v1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcn/jim/wallethelper/TaskInstallLedger;->pm:Landroid/content/pm/PackageManager;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->identities:Ljava/util/Map;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->owners:Ljava/util/Map;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "extra"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/jim/wallethelper/TaskInstallLedger;->persist(Ljava/lang/String;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_8a} :catch_8b

    goto :goto_8c

    .line 166
    :catch_8b
    move-exception v1

    :goto_8c
    nop

    .line 167
    goto :goto_15

    .line 168
    :cond_8e
    iget-boolean v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->baselineReady:Z

    if-nez v0, :cond_93

    return v2

    .line 169
    :cond_93
    iget-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9d
    :goto_9d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_132

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    :try_start_a9
    iget-object v3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 172
    iget-wide v4, v3, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-object v6, p0, Lcn/jim/wallethelper/TaskInstallLedger;->identities:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_9d

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v1, v3}, Lcn/jim/wallethelper/TaskInstallLedger;->protectedPackage(Ljava/lang/String;I)Z

    move-result v3
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_c9} :catch_12f

    if-eqz v3, :cond_cc

    goto :goto_9d

    .line 173
    :cond_cc
    nop

    .line 174
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/TaskInstallLedger;->held(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6b21\u65e5\u4efb\u52a1\u6216\u5f52\u5c5e\u5f85\u6838\u5bf9\uff0c\u4fdd\u7559\u5e94\u7528\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/jim/wallethelper/TaskInstallLedger;->log(Ljava/lang/String;)V

    goto :goto_9d

    .line 175
    :cond_f2
    iget-object v3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->attempted:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12d

    .line 176
    iget-object v3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->queue:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6309\u975e\u6b21\u65e5\u65b0\u589e\u5e94\u7528\u7b56\u7565\u6e05\u7406\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff1b\u5956\u52b1\u786e\u8ba4="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/jim/wallethelper/TaskInstallLedger;->completed:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/jim/wallethelper/TaskInstallLedger;->log(Ljava/lang/String;)V

    .line 179
    :cond_12d
    goto/16 :goto_9d

    .line 173
    :catch_12f
    move-exception v1

    goto/16 :goto_9d

    .line 180
    :cond_132
    iget-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public prepareReady()I
    .locals 3

    .line 243
    iget-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->completed:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->attempted:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->queue:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 245
    :cond_34
    iget-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->queue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public requested(ILjava/lang/String;)V
    .locals 5

    .line 87
    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    if-nez p1, :cond_8f

    :cond_5
    if-eqz p2, :cond_8f

    invoke-static {p2}, Lcn/jim/wallethelper/TaskInstallLedger;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    goto/16 :goto_8f

    .line 88
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    if-nez p1, :cond_30

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcn/jim/wallethelper/TaskInstallLedger;->setHold(Ljava/lang/String;Z)V

    .line 90
    :cond_30
    iget-object p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->requests:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8e

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->requests:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rq1\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u8bb0\u5f55\u4efb\u52a1\u4e0b\u8f7d\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/TaskInstallLedger;->log(Ljava/lang/String;)V

    .line 95
    :cond_8e
    return-void

    .line 87
    :cond_8f
    :goto_8f
    return-void
.end method

.method public scan()V
    .locals 26

    .line 97
    move-object/from16 v1, p0

    iget-boolean v0, v1, Lcn/jim/wallethelper/TaskInstallLedger;->baselineReady:Z

    if-nez v0, :cond_7

    return-void

    .line 98
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcn/jim/wallethelper/TaskInstallLedger;->lastScan:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7d0

    cmp-long v0, v4, v6

    if-gez v0, :cond_16

    return-void

    :cond_16
    iput-wide v2, v1, Lcn/jim/wallethelper/TaskInstallLedger;->lastScan:J

    .line 100
    :try_start_18
    iget-object v0, v1, Lcn/jim/wallethelper/TaskInstallLedger;->pm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v8
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_1f} :catch_25d

    .line 101
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v9, " ["

    if-eqz v2, :cond_107

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 102
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 103
    if-eqz v3, :cond_23

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_23

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v3, v4}, Lcn/jim/wallethelper/TaskInstallLedger;->protectedPackage(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_44

    goto :goto_23

    .line 104
    :cond_44
    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-direct {v1, v3, v4, v5}, Lcn/jim/wallethelper/TaskInstallLedger;->originalInstall(Ljava/lang/String;J)Z

    move-result v4

    if-eqz v4, :cond_5f

    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v1, Lcn/jim/wallethelper/TaskInstallLedger;->seen:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5f

    goto :goto_23

    .line 105
    :cond_5f
    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v10, v1, Lcn/jim/wallethelper/TaskInstallLedger;->runStart:J

    cmp-long v4, v4, v10

    if-gez v4, :cond_70

    iget-object v4, v1, Lcn/jim/wallethelper/TaskInstallLedger;->baseline:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_70

    goto :goto_23

    .line 106
    :cond_70
    iget-wide v4, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v10, v1, Lcn/jim/wallethelper/TaskInstallLedger;->runStart:J

    cmp-long v4, v4, v10

    if-gez v4, :cond_81

    iget-object v4, v1, Lcn/jim/wallethelper/TaskInstallLedger;->seen:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_81

    goto :goto_23

    .line 107
    :cond_81
    iget-object v4, v1, Lcn/jim/wallethelper/TaskInstallLedger;->seen:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 108
    if-eqz v4, :cond_95

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v10, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v4, v4, v10

    if-eqz v4, :cond_105

    .line 109
    :cond_95
    iget-object v4, v1, Lcn/jim/wallethelper/TaskInstallLedger;->seen:Ljava/util/Map;

    iget-wide v5, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v4, v1, Lcn/jim/wallethelper/TaskInstallLedger;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "seen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "seen1\n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v10, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 111
    iget-object v4, v1, Lcn/jim/wallethelper/TaskInstallLedger;->pm:Landroid/content/pm/PackageManager;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8bb0\u5f55\u8fd0\u884c\u671f\u95f4\u5b89\u88c5\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]\uff1b\u7b49\u5f85\u4efb\u52a1\u5f52\u5c5e\u6838\u5bf9"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/jim/wallethelper/TaskInstallLedger;->log(Ljava/lang/String;)V

    .line 114
    :cond_105
    goto/16 :goto_23

    .line 115
    :cond_107
    iget-object v0, v1, Lcn/jim/wallethelper/TaskInstallLedger;->requests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_110

    return-void

    .line 116
    :cond_110
    iget-object v0, v1, Lcn/jim/wallethelper/TaskInstallLedger;->requests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_11a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/Map$Entry;

    .line 117
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_130
    :goto_130
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v14, 0x2

    if-eqz v0, :cond_19e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 119
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_130

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v2, v3}, Lcn/jim/wallethelper/TaskInstallLedger;->protectedPackage(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_130

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-wide v3, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 120
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct/range {v1 .. v6}, Lcn/jim/wallethelper/TaskInstallLedger;->protectedAtRequest(Ljava/lang/String;JJ)Z

    move-result v2

    if-eqz v2, :cond_162

    goto :goto_130

    .line 122
    :cond_162
    :try_start_162
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/jim/wallethelper/TaskInstallLedger;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcn/jim/wallethelper/TaskInstallLedger;->pm:Landroid/content/pm/PackageManager;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/jim/wallethelper/TaskInstallLedger;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_187

    goto :goto_130

    .line 123
    :cond_187
    iget-wide v2, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_19c

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19a
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_19a} :catch_19b

    goto :goto_19c

    .line 124
    :catch_19b
    move-exception v0

    :cond_19c
    :goto_19c
    nop

    .line 125
    goto :goto_130

    .line 126
    :cond_19e
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1a7

    goto/16 :goto_11a

    .line 127
    :cond_1a7
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 128
    iget-object v3, v1, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c7

    iget-object v3, v1, Lcn/jim/wallethelper/TaskInstallLedger;->owners:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "extra"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c7

    goto/16 :goto_11a

    .line 130
    :cond_1c7
    :try_start_1c7
    iget-object v3, v1, Lcn/jim/wallethelper/TaskInstallLedger;->pm:Landroid/content/pm/PackageManager;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v24

    .line 131
    iget-boolean v15, v1, Lcn/jim/wallethelper/TaskInstallLedger;->baselineReady:Z

    iget-wide v3, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct/range {v1 .. v6}, Lcn/jim/wallethelper/TaskInstallLedger;->protectedAtRequest(Ljava/lang/String;JJ)Z

    move-result v16

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v25

    move-object/from16 v18, v2

    move/from16 v17, v3

    move-wide/from16 v19, v4

    invoke-static/range {v15 .. v25}, Lcn/jim/wallethelper/TaskInstallLedger;->eligible(ZZILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    move-object/from16 v3, v18

    move-object/from16 v4, v24

    if-nez v2, :cond_215

    goto/16 :goto_11a

    .line 132
    :cond_215
    iget-object v2, v1, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lcn/jim/wallethelper/TaskInstallLedger;->identities:Ljava/util/Map;

    iget-wide v5, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcn/jim/wallethelper/TaskInstallLedger;->owners:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v1, v3}, Lcn/jim/wallethelper/TaskInstallLedger;->persist(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u8bb0\u5f55\u672c\u8f6e\u65b0\u5b89\u88c5\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/jim/wallethelper/TaskInstallLedger;->log(Ljava/lang/String;)V
    :try_end_257
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_257} :catch_258

    goto :goto_259

    .line 134
    :catch_258
    move-exception v0

    :goto_259
    nop

    .line 135
    goto/16 :goto_11a

    .line 136
    :cond_25c
    return-void

    .line 100
    :catch_25d
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5b89\u88c5\u6e05\u5355\u8bfb\u53d6\u5931\u8d25\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/jim/wallethelper/TaskInstallLedger;->log(Ljava/lang/String;)V

    return-void
.end method

.method public step(Ljava/util/List;Ljava/lang/String;J)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/jim/wallethelper/TaskRules$Item;",
            ">;",
            "Ljava/lang/String;",
            "J)I"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    const-string v1, "\u5b89\u88c5\u8eab\u4efd\u5df2\u53d8\u5316\uff0c\u4fdd\u7559"

    const/4 v2, 0x0

    const-string v3, "seen:"

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-nez v0, :cond_12b

    .line 262
    iget-object p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->queue:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p1, -0x3

    return p1

    .line 263
    :cond_15
    iget-object p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->queue:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    iget-object p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->attempted:Ljava/util/Set;

    iget-object p2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iput-boolean v4, p0, Lcn/jim/wallethelper/TaskInstallLedger;->clicked:Z

    .line 265
    :try_start_28
    iget-object p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/TaskInstallLedger;->installed(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 266
    iget-wide v6, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-object p2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->identities:Ljava/util/Map;

    iget-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long p2, v6, v8

    if-nez p2, :cond_ce

    iget-object p2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {p2, p1}, Lcn/jim/wallethelper/TaskInstallLedger;->protectedPackage(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_50

    goto/16 :goto_ce

    .line 267
    :cond_50
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.DELETE"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 268
    iget-object p2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, p1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    .line 269
    if-eqz p2, :cond_c8

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_c8

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x81

    if-nez v0, :cond_8c

    goto :goto_c8

    .line 270
    :cond_8c
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->installer:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->installer:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 271
    iput-wide p3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->openedAt:J

    iget-object p2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->context:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u51c6\u5907\u5378\u8f7d\u672c\u8f6e\u65b0\u5e94\u7528\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    iget-object p3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/TaskInstallLedger;->log(Ljava/lang/String;)V

    goto :goto_129

    .line 269
    :cond_c8
    :goto_c8
    const-string p1, "\u65e0\u6cd5\u786e\u8ba4\u7cfb\u7edf\u5378\u8f7d\u5165\u53e3\uff0c\u4fdd\u7559"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/TaskInstallLedger;->skip(Ljava/lang/String;)V

    return v5

    .line 266
    :cond_ce
    :goto_ce
    invoke-direct {p0, v1}, Lcn/jim/wallethelper/TaskInstallLedger;->skip(Ljava/lang/String;)V
    :try_end_d1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_d1} :catch_d9
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_d1} :catch_d2

    return v5

    .line 273
    :catch_d2
    move-exception p1

    const-string p1, "\u65e0\u6cd5\u6253\u5f00\u5378\u8f7d\u754c\u9762\uff0c\u4fdd\u7559"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/TaskInstallLedger;->skip(Ljava/lang/String;)V

    goto :goto_12a

    .line 272
    :catch_d9
    move-exception p1

    iget-object p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->seen:Ljava/util/Map;

    iget-object p2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u5e94\u7528\u5df2\u4e0d\u5b58\u5728\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    iget-object p3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/TaskInstallLedger;->log(Ljava/lang/String;)V

    iput-object v2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    .line 273
    :goto_129
    nop

    .line 274
    :goto_12a
    return v5

    .line 276
    :cond_12b
    const/4 v0, 0x1

    :try_start_12c
    iget-object v6, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcn/jim/wallethelper/TaskInstallLedger;->installed(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-wide v6, v6, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-object v8, p0, Lcn/jim/wallethelper/TaskInstallLedger;->identities:Ljava/util/Map;

    iget-object v9, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_14a

    invoke-direct {p0, v1}, Lcn/jim/wallethelper/TaskInstallLedger;->skip(Ljava/lang/String;)V
    :try_end_149
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12c .. :try_end_149} :catch_1ec
    .catch Ljava/lang/RuntimeException; {:try_start_12c .. :try_end_149} :catch_1e5

    return v5

    .line 278
    :cond_14a
    nop

    .line 279
    iget-wide v1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->openedAt:J

    sub-long v1, p3, v1

    const-wide/16 v6, 0x4e20

    cmp-long v1, v1, v6

    if-lez v1, :cond_15b

    const-string p1, "\u5378\u8f7d\u672a\u786e\u8ba4\uff0c\u4fdd\u7559\u8bb0\u5f55"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/TaskInstallLedger;->skip(Ljava/lang/String;)V

    return v5

    .line 280
    :cond_15b
    iget-boolean v1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->clicked:Z

    if-nez v1, :cond_1e4

    iget-wide v1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->openedAt:J

    sub-long/2addr p3, v1

    const-wide/16 v1, 0x3e8

    cmp-long p3, p3, v1

    if-ltz p3, :cond_1e4

    iget-object p3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->installer:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_172

    goto/16 :goto_1e4

    .line 281
    :cond_172
    nop

    .line 282
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move p2, v4

    move p3, v5

    :goto_179
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1da

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/jim/wallethelper/TaskRules$Item;

    .line 283
    iget-object v1, p4, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    iget-object v2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    iget-object v3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/jim/wallethelper/TaskInstallLedger;->matchesDialogLabel(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_198

    move v4, v0

    .line 284
    :cond_198
    iget-object v1, p4, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    const-string v2, "\u5378\u8f7d"

    if-eqz v1, :cond_1a7

    iget-object v1, p4, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a7

    move p2, v0

    .line 285
    :cond_1a7
    const-string v1, "android:id/button1"

    iget-object v3, p4, Lcn/jim/wallethelper/TaskRules$Item;->viewId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1bb

    const-string v1, "com.android.packageinstaller:id/bottom_btn_uninstall"

    iget-object v3, p4, Lcn/jim/wallethelper/TaskRules$Item;->viewId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d9

    :cond_1bb
    iget-object v1, p4, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    .line 286
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d7

    const-string v1, "\u786e\u5b9a"

    iget-object v2, p4, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d7

    const-string v1, "\u786e\u8ba4\u5378\u8f7d"

    iget-object v2, p4, Lcn/jim/wallethelper/TaskRules$Item;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d9

    :cond_1d7
    iget p3, p4, Lcn/jim/wallethelper/TaskRules$Item;->index:I

    .line 287
    :cond_1d9
    goto :goto_179

    .line 289
    :cond_1da
    if-eqz v4, :cond_1e3

    if-eqz p2, :cond_1e3

    if-ltz p3, :cond_1e3

    iput-boolean v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->clicked:Z

    return p3

    .line 290
    :cond_1e3
    return v5

    .line 280
    :cond_1e4
    :goto_1e4
    return v5

    .line 278
    :catch_1e5
    move-exception p1

    const-string p1, "\u65e0\u6cd5\u6838\u5bf9\u5b89\u88c5\u72b6\u6001\uff0c\u4fdd\u7559"

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/TaskInstallLedger;->skip(Ljava/lang/String;)V

    return v5

    .line 277
    :catch_1ec
    move-exception p1

    iget p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->removed:I

    add-int/2addr p1, v0

    iput p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->removed:I

    iget-object p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->seen:Ljava/util/Map;

    iget-object p2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u5df2\u786e\u8ba4\u5378\u8f7d\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    iget-object p3, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/jim/wallethelper/TaskInstallLedger;->log(Ljava/lang/String;)V

    iput-object v2, p0, Lcn/jim/wallethelper/TaskInstallLedger;->active:Ljava/lang/String;

    return v5
.end method

.method public summary()Ljava/lang/String;
    .locals 9

    .line 250
    nop

    .line 251
    iget-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->packages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 252
    :try_start_1a
    iget-object v5, p0, Lcn/jim/wallethelper/TaskInstallLedger;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-wide v5, v5, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-object v7, p0, Lcn/jim/wallethelper/TaskInstallLedger;->identities:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_33

    goto :goto_e

    .line 253
    :cond_33
    invoke-direct {p0, v4}, Lcn/jim/wallethelper/TaskInstallLedger;->held(Ljava/lang/String;)Z

    move-result v4
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_37} :catch_3f

    if-eqz v4, :cond_3c

    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 254
    :catch_3f
    move-exception v4

    :goto_40
    goto :goto_e

    .line 255
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u672c\u8f6e\u4efb\u52a1\u5df2\u7ed3\u675f\uff1b\u5378\u8f7d\u786e\u8ba4\u6210\u529f "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->removed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u9879\uff0c\u6b21\u65e5/\u5f85\u6838\u5bf9\u4fdd\u7559 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u9879\uff0c\u5f85\u6e05\u7406 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u9879\uff0c\u8df3\u8fc7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->skipped:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u9879"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public takeMessage()Ljava/lang/String;
    .locals 2

    .line 248
    iget-object v0, p0, Lcn/jim/wallethelper/TaskInstallLedger;->messages:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcn/jim/wallethelper/TaskInstallLedger;->messages:Ljava/lang/String;

    return-object v0
.end method
