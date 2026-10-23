.class public final enum Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;
.super Ljava/lang/Enum;
.source "SteamAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AuthSessionResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

.field public static final enum AuthTicketCanceled:Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

.field public static final enum AuthTicketInvalid:Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

.field public static final enum AuthTicketInvalidAlreadyUsed:Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

.field public static final enum LoggedInElseWhere:Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

.field public static final enum NoLicenseOrExpired:Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

.field public static final enum OK:Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

.field public static final enum PublisherIssuedBan:Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

.field public static final enum UserNotConnectedToSteam:Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

.field public static final enum VACBanned:Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

.field public static final enum VACCheckTimedOut:Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

.field private static final values:[Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;->OK:Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    new-instance v1, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    const-string v2, "UserNotConnectedToSteam"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;->UserNotConnectedToSteam:Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    new-instance v2, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    const-string v3, "NoLicenseOrExpired"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;->NoLicenseOrExpired:Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    new-instance v3, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    const-string v4, "VACBanned"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;->VACBanned:Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    new-instance v4, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    const-string v5, "LoggedInElseWhere"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;->LoggedInElseWhere:Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    new-instance v5, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    const-string v6, "VACCheckTimedOut"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;->VACCheckTimedOut:Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    new-instance v6, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    const-string v7, "AuthTicketCanceled"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;->AuthTicketCanceled:Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    new-instance v7, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    const-string v8, "AuthTicketInvalidAlreadyUsed"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;->AuthTicketInvalidAlreadyUsed:Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    new-instance v8, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    const-string v9, "AuthTicketInvalid"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;->AuthTicketInvalid:Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    new-instance v9, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    const-string v10, "PublisherIssuedBan"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;->PublisherIssuedBan:Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    filled-new-array/range {v0 .. v9}, [Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;->$VALUES:[Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    invoke-static {}, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;->values()[Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;->values:[Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static byOrdinal(I)Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;->values:[Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;->$VALUES:[Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamAuth$AuthSessionResponse;

    return-object v0
.end method
