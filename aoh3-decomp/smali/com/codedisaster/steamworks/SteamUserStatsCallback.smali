.class public interface abstract Lcom/codedisaster/steamworks/SteamUserStatsCallback;
.super Ljava/lang/Object;
.source "SteamUserStatsCallback.java"


# virtual methods
.method public abstract onGlobalStatsReceived(JLcom/codedisaster/steamworks/SteamResult;)V
.end method

.method public abstract onLeaderboardFindResult(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;Z)V
.end method

.method public abstract onLeaderboardScoreUploaded(ZLcom/codedisaster/steamworks/SteamLeaderboardHandle;IZII)V
.end method

.method public abstract onLeaderboardScoresDownloaded(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;Lcom/codedisaster/steamworks/SteamLeaderboardEntriesHandle;I)V
.end method

.method public abstract onNumberOfCurrentPlayersReceived(ZI)V
.end method

.method public abstract onUserAchievementStored(JZLjava/lang/String;II)V
.end method

.method public abstract onUserStatsReceived(JLcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamResult;)V
.end method

.method public abstract onUserStatsStored(JLcom/codedisaster/steamworks/SteamResult;)V
.end method

.method public abstract onUserStatsUnloaded(Lcom/codedisaster/steamworks/SteamID;)V
.end method
