.class public final enum Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;
.super Ljava/lang/Enum;
.source "SteamUserStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUserStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LeaderboardUploadScoreMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;

.field public static final enum ForceUpdate:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;

.field public static final enum KeepBest:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;

.field public static final enum None:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;->None:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;

    new-instance v1, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;

    const-string v2, "KeepBest"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;->KeepBest:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;

    new-instance v2, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;

    const-string v3, "ForceUpdate"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;->ForceUpdate:Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;

    filled-new-array {v0, v1, v2}, [Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;->$VALUES:[Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;

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

.method public static valueOf(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;
    .locals 1

    const-class v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;

    return-object p0
.end method

.method public static values()[Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;
    .locals 1

    sget-object v0, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;->$VALUES:[Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;

    invoke-virtual {v0}, [Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;

    return-object v0
.end method
