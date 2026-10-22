.class public final enum Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;
.super Ljava/lang/Enum;
.source "SteamAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BeginAuthSessionResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

.field public static final enum DuplicateRequest:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

.field public static final enum ExpiredTicket:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

.field public static final enum GameMismatch:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

.field public static final enum InvalidTicket:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

.field public static final enum InvalidVersion:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

.field public static final enum OK:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

.field private static final values:[Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->OK:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    new-instance v1, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    const-string v2, "InvalidTicket"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->InvalidTicket:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    new-instance v2, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    const-string v3, "DuplicateRequest"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->DuplicateRequest:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    new-instance v3, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    const-string v4, "InvalidVersion"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->InvalidVersion:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    new-instance v4, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    const/4 v5, 0x0

    sget-object v5, Laoc/kingdoms/lukasz/menusScenarioEditor/YGiX/gpVDKipRURuzw;->HZBUbpYraVT:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->GameMismatch:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    new-instance v5, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    const-string v6, "ExpiredTicket"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->ExpiredTicket:Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    filled-new-array/range {v0 .. v5}, [Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->$VALUES:[Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    invoke-static {}, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->values()[Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->values:[Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

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

.method static byOrdinal(I)Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->values:[Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->$VALUES:[Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamAuth$BeginAuthSessionResult;

    return-object v0
.end method
