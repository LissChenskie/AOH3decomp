.class public final enum Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;
.super Ljava/lang/Enum;
.source "SteamUserStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUserStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LeaderboardDisplayType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;

.field public static final enum None:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;

.field public static final enum Numeric:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;

.field public static final enum TimeMilliSeconds:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;

.field public static final enum TimeSeconds:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;->None:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;

    new-instance v1, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;

    const-string v2, "Numeric"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;->Numeric:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;

    new-instance v2, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;

    const-string v3, "TimeSeconds"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;->TimeSeconds:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;

    new-instance v3, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;

    const-string v4, "TimeMilliSeconds"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;->TimeMilliSeconds:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;->$VALUES:[Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;->$VALUES:[Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;

    return-object v0
.end method
