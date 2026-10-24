.class public final Lcn/jim/wallethelper/RunLifecycle;
.super Ljava/lang/Object;
.source "RunLifecycle.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static held(Landroid/content/Context;)Z
    .registers 3

    .line 16
    invoke-static {p0}, Lcn/jim/wallethelper/RunLifecycle;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "pause"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "hold"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static onUnlock(Landroid/content/Context;Lcn/jim/wallethelper/WalletService;)I
    .registers 12

    .line 19
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcn/jim/wallethelper/WalletService;->scheduledBusy()Z

    move-result v2

    if-eqz v2, :cond_c

    move v3, v1

    goto :goto_d

    :cond_c
    move v3, v0

    .line 20
    :goto_d
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcn/jim/wallethelper/WalletService;->schedulePaused()Z

    move-result v2

    if-eqz v2, :cond_17

    move v4, v1

    goto :goto_18

    :cond_17
    move v4, v0

    :goto_18
    invoke-static {p0}, Lcn/jim/wallethelper/RunLifecycle;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "pause"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Lcn/jim/wallethelper/RunLifecycle;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v7, "day"

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcn/jim/wallethelper/UnlockPolicy;->day(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v1, v8, v9, v6}, Lcn/jim/wallethelper/UnlockPolicy;->due(ZJLjava/lang/String;)Z

    move-result v8

    move-object v6, v2

    invoke-static/range {v3 .. v8}, Lcn/jim/wallethelper/RunPolicy;->action(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    .line 21
    if-ne v2, v1, :cond_50

    if-eqz v3, :cond_4a

    const-string p1, "\u89e3\u9501\u8ba1\u5212\uff1a\u73b0\u6709\u4efb\u52a1\u8fd0\u884c\u6216\u6682\u505c\uff0c\u4fdd\u7559\u4eca\u65e5\u542f\u52a8\u673a\u4f1a"

    goto :goto_4c

    :cond_4a
    const-string p1, "\u89e3\u9501\u8ba1\u5212\uff1a\u624b\u52a8\u6216\u5f02\u5e38\u6682\u505c\uff0c\u7b49\u5f85\u624b\u52a8\u7ee7\u7eed"

    :goto_4c
    invoke-static {p0, p1}, Lcn/jim/wallethelper/LocalLog;->add(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 22
    :cond_50
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5c

    invoke-virtual {p1}, Lcn/jim/wallethelper/WalletService;->resumeScheduled()V

    const-string p1, "\u89e3\u9501\u8ba1\u5212\uff1a\u6062\u590d\u9501\u5c4f\u6682\u505c\u7684\u4efb\u52a1"

    invoke-static {p0, p1}, Lcn/jim/wallethelper/LocalLog;->add(Landroid/content/Context;Ljava/lang/String;)V

    return v1

    .line 23
    :cond_5c
    const/4 v4, 0x3

    if-ne v2, v4, :cond_6b

    .line 24
    if-nez p1, :cond_62

    return v1

    .line 25
    :cond_62
    invoke-virtual {p1}, Lcn/jim/wallethelper/WalletService;->stopForNewDay()V

    .line 26
    const-string p1, "\u89e3\u9501\u8ba1\u5212\uff1a\u7ed3\u675f\u9057\u7559\u6d41\u7a0b\uff0c\u4fdd\u7559\u5b89\u88c5\u8bb0\u5f55\uff0c\u6062\u590d\u97f3\u91cf\u540e\u91cd\u65b0\u68c0\u67e5\u4efb\u52a1"

    invoke-static {p0, p1}, Lcn/jim/wallethelper/LocalLog;->add(Landroid/content/Context;Ljava/lang/String;)V

    return v3

    .line 28
    :cond_6b
    return v0
.end method

.method private static p(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 4
    const-string v0, "run_lifecycle"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static paused(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 7
    const-string v0, "\u5c4f\u5e55\u5df2\u9501\u5b9a\u6216\u7184\u706d\uff0c\u8bf7\u89e3\u9501\u540e\u7ee7\u7eed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const-string p1, "screen"

    goto :goto_d

    :cond_b
    const-string p1, "hold"

    .line 8
    :goto_d
    invoke-static {p0}, Lcn/jim/wallethelper/RunLifecycle;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pause"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 9
    return-void
.end method

.method public static resumed(Landroid/content/Context;)V
    .registers 2

    .line 10
    invoke-static {p0}, Lcn/jim/wallethelper/RunLifecycle;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pause"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static started(Landroid/content/Context;)V
    .registers 3

    .line 5
    invoke-static {p0}, Lcn/jim/wallethelper/RunLifecycle;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/jim/wallethelper/UnlockPolicy;->day(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "day"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pause"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static stopped(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 13
    const-string v0, "\u670d\u52a1\u5df2\u5173\u95ed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 14
    :cond_9
    invoke-static {p0}, Lcn/jim/wallethelper/RunLifecycle;->p(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "pause"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "day"

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 15
    return-void
.end method
