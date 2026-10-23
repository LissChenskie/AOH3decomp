.class Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager$4;
.super Ljava/lang/Object;
.source "SteamManager.java"

# interfaces
.implements Lcom/codedisaster/steamworks/SteamUserStatsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/jakowski/Steam/SteamManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalStatsReceived(JLcom/codedisaster/steamworks/SteamResult;)V
    .locals 0

    return-void
.end method

.method public onLeaderboardFindResult(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;Z)V
    .locals 0

    return-void
.end method

.method public onLeaderboardScoreUploaded(ZLcom/codedisaster/steamworks/SteamLeaderboardHandle;IZII)V
    .locals 0

    return-void
.end method

.method public onLeaderboardScoresDownloaded(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;Lcom/codedisaster/steamworks/SteamLeaderboardEntriesHandle;I)V
    .locals 0

    return-void
.end method

.method public onNumberOfCurrentPlayersReceived(ZI)V
    .locals 0

    return-void
.end method

.method public onUserAchievementStored(JZLjava/lang/String;II)V
    .locals 0

    return-void
.end method

.method public onUserStatsReceived(JLcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamResult;)V
    .locals 0

    return-void
.end method

.method public onUserStatsStored(JLcom/codedisaster/steamworks/SteamResult;)V
    .locals 0

    return-void
.end method

.method public onUserStatsUnloaded(Lcom/codedisaster/steamworks/SteamID;)V
    .locals 0

    return-void
.end method
