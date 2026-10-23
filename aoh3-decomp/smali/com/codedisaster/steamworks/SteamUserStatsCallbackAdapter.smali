.class Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;
.super Lcom/codedisaster/steamworks/SteamCallbackAdapter;
.source "SteamUserStatsCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codedisaster/steamworks/SteamCallbackAdapter<",
        "Lcom/codedisaster/steamworks/SteamUserStatsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/codedisaster/steamworks/SteamUserStatsCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/codedisaster/steamworks/SteamCallbackAdapter;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onGlobalStatsReceived(JI)V
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserStatsCallback;

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lcom/codedisaster/steamworks/SteamUserStatsCallback;->onGlobalStatsReceived(JLcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onLeaderboardFindResult(JZ)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserStatsCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;-><init>(J)V

    invoke-interface {v0, v1, p3}, Lcom/codedisaster/steamworks/SteamUserStatsCallback;->onLeaderboardFindResult(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;Z)V

    return-void
.end method

.method onLeaderboardScoreUploaded(ZJIZII)V
    .locals 8

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;->callback:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/codedisaster/steamworks/SteamUserStatsCallback;

    new-instance v3, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;

    invoke-direct {v3, p2, p3}, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;-><init>(J)V

    move v2, p1

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v1 .. v7}, Lcom/codedisaster/steamworks/SteamUserStatsCallback;->onLeaderboardScoreUploaded(ZLcom/codedisaster/steamworks/SteamLeaderboardHandle;IZII)V

    return-void
.end method

.method onLeaderboardScoresDownloaded(JJI)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserStatsCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;-><init>(J)V

    new-instance p1, Lcom/codedisaster/steamworks/SteamLeaderboardEntriesHandle;

    invoke-direct {p1, p3, p4}, Lcom/codedisaster/steamworks/SteamLeaderboardEntriesHandle;-><init>(J)V

    invoke-interface {v0, v1, p1, p5}, Lcom/codedisaster/steamworks/SteamUserStatsCallback;->onLeaderboardScoresDownloaded(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;Lcom/codedisaster/steamworks/SteamLeaderboardEntriesHandle;I)V

    return-void
.end method

.method onNumberOfCurrentPlayersReceived(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserStatsCallback;

    invoke-interface {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamUserStatsCallback;->onNumberOfCurrentPlayersReceived(ZI)V

    return-void
.end method

.method onUserAchievementStored(JZLjava/lang/String;II)V
    .locals 8

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;->callback:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/codedisaster/steamworks/SteamUserStatsCallback;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/codedisaster/steamworks/SteamUserStatsCallback;->onUserAchievementStored(JZLjava/lang/String;II)V

    return-void
.end method

.method onUserStatsReceived(JJI)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserStatsCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p3, p4}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-static {p5}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p3

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/codedisaster/steamworks/SteamUserStatsCallback;->onUserStatsReceived(JLcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onUserStatsStored(JI)V
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserStatsCallback;

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lcom/codedisaster/steamworks/SteamUserStatsCallback;->onUserStatsStored(JLcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onUserStatsUnloaded(J)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUserStatsCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStatsCallback;->onUserStatsUnloaded(Lcom/codedisaster/steamworks/SteamID;)V

    return-void
.end method
