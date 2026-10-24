.class public final Lcn/jim/wallethelper/RunPolicy;
.super Ljava/lang/Object;
.source "RunPolicy.java"


# static fields
.field public static final HOLD:I = 0x1

.field public static final NORMAL:I = 0x0

.field public static final RESTART:I = 0x3

.field public static final RESUME:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static action(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 8

    .line 5
    const-string v0, "hold"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 6
    :cond_a
    if-eqz p0, :cond_f

    if-nez p1, :cond_f

    return v1

    .line 7
    :cond_f
    const-string v0, "screen"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_18

    return p0

    .line 8
    :cond_18
    if-nez p5, :cond_21

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    return v1

    .line 9
    :cond_21
    if-eqz p0, :cond_2d

    if-eqz p1, :cond_2d

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    const/4 p0, 0x2

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x3

    :goto_2e
    return p0
.end method
