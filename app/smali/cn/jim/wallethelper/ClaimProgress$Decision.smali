.class public final enum Lcn/jim/wallethelper/ClaimProgress$Decision;
.super Ljava/lang/Enum;
.source "ClaimProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/jim/wallethelper/ClaimProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Decision"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/jim/wallethelper/ClaimProgress$Decision;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcn/jim/wallethelper/ClaimProgress$Decision;

.field public static final enum RETRY:Lcn/jim/wallethelper/ClaimProgress$Decision;

.field public static final enum STOP:Lcn/jim/wallethelper/ClaimProgress$Decision;

.field public static final enum WAIT:Lcn/jim/wallethelper/ClaimProgress$Decision;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Lcn/jim/wallethelper/ClaimProgress$Decision;

    const-string v1, "WAIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/jim/wallethelper/ClaimProgress$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jim/wallethelper/ClaimProgress$Decision;->WAIT:Lcn/jim/wallethelper/ClaimProgress$Decision;

    new-instance v0, Lcn/jim/wallethelper/ClaimProgress$Decision;

    const-string v1, "RETRY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/jim/wallethelper/ClaimProgress$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jim/wallethelper/ClaimProgress$Decision;->RETRY:Lcn/jim/wallethelper/ClaimProgress$Decision;

    new-instance v0, Lcn/jim/wallethelper/ClaimProgress$Decision;

    const-string v1, "STOP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcn/jim/wallethelper/ClaimProgress$Decision;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/jim/wallethelper/ClaimProgress$Decision;->STOP:Lcn/jim/wallethelper/ClaimProgress$Decision;

    sget-object v0, Lcn/jim/wallethelper/ClaimProgress$Decision;->WAIT:Lcn/jim/wallethelper/ClaimProgress$Decision;

    sget-object v1, Lcn/jim/wallethelper/ClaimProgress$Decision;->RETRY:Lcn/jim/wallethelper/ClaimProgress$Decision;

    sget-object v2, Lcn/jim/wallethelper/ClaimProgress$Decision;->STOP:Lcn/jim/wallethelper/ClaimProgress$Decision;

    filled-new-array {v0, v1, v2}, [Lcn/jim/wallethelper/ClaimProgress$Decision;

    move-result-object v0

    sput-object v0, Lcn/jim/wallethelper/ClaimProgress$Decision;->ENUM$VALUES:[Lcn/jim/wallethelper/ClaimProgress$Decision;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/jim/wallethelper/ClaimProgress$Decision;
    .locals 1

    .line 1
    const-class v0, Lcn/jim/wallethelper/ClaimProgress$Decision;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/jim/wallethelper/ClaimProgress$Decision;

    return-object p0
.end method

.method public static values()[Lcn/jim/wallethelper/ClaimProgress$Decision;
    .locals 4

    .line 1
    sget-object v0, Lcn/jim/wallethelper/ClaimProgress$Decision;->ENUM$VALUES:[Lcn/jim/wallethelper/ClaimProgress$Decision;

    array-length v1, v0

    new-array v2, v1, [Lcn/jim/wallethelper/ClaimProgress$Decision;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
