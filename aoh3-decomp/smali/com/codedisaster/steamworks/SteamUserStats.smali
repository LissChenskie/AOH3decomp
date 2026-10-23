.class public Lcom/codedisaster/steamworks/SteamUserStats;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamUserStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;,
        Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;,
        Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;,
        Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/codedisaster/steamworks/SteamUserStatsCallback;)V
    .locals 2

    new-instance v0, Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;-><init>(Lcom/codedisaster/steamworks/SteamUserStatsCallback;)V

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->createCallback(Lcom/codedisaster/steamworks/SteamUserStatsCallbackAdapter;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    return-void
.end method


# virtual methods
.method public clearAchievement(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->clearAchievement(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic dispose()V
    .locals 0

    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public downloadLeaderboardEntries(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;II)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 8

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUserStats;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;->handle:J

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDataRequest;->ordinal()I

    move-result v5

    move v6, p3

    move v7, p4

    invoke-static/range {v1 .. v7}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->downloadLeaderboardEntries(JJIII)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public downloadLeaderboardEntriesForUsers(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;[Lcom/codedisaster/steamworks/SteamID;)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 6

    array-length v5, p2

    new-array v4, v5, [J

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v1, p2, v0

    iget-wide v1, v1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    aput-wide v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v0, p0, Lcom/codedisaster/steamworks/SteamUserStats;->callback:J

    iget-wide v2, p1, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;->handle:J

    invoke-static/range {v0 .. v5}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->downloadLeaderboardEntriesForUsers(JJ[JI)J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object p2
.end method

.method public findLeaderboard(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUserStats;->callback:J

    invoke-static {v1, v2, p1}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->findLeaderboard(JLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public findOrCreateLeaderboard(Ljava/lang/String;Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUserStats;->callback:J

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;->ordinal()I

    move-result p2

    invoke-virtual {p3}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;->ordinal()I

    move-result p3

    invoke-static {v1, v2, p1, p2, p3}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->findOrCreateLeaderboard(JLjava/lang/String;II)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public getAchievementName(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getAchievementName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadedLeaderboardEntry(Lcom/codedisaster/steamworks/SteamLeaderboardEntriesHandle;ILcom/codedisaster/steamworks/SteamLeaderboardEntry;[I)Z
    .locals 6

    if-nez p4, :cond_0

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamLeaderboardEntriesHandle;->handle:J

    invoke-static {v0, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getDownloadedLeaderboardEntry(JILcom/codedisaster/steamworks/SteamLeaderboardEntry;)Z

    move-result p1

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamLeaderboardEntriesHandle;->handle:J

    array-length v5, p4

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getDownloadedLeaderboardEntry(JILcom/codedisaster/steamworks/SteamLeaderboardEntry;[II)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public getGlobalStat(Ljava/lang/String;D)D
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [D

    invoke-static {p1, v0}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getGlobalStat(Ljava/lang/String;[D)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    aget-wide p1, v0, p1

    return-wide p1

    :cond_0
    return-wide p2
.end method

.method public getGlobalStat(Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [J

    invoke-static {p1, v0}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getGlobalStat(Ljava/lang/String;[J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    aget-wide p1, v0, p1

    return-wide p1

    :cond_0
    return-wide p2
.end method

.method public getGlobalStatHistory(Ljava/lang/String;[D)I
    .locals 1

    array-length v0, p2

    invoke-static {p1, p2, v0}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getGlobalStatHistory(Ljava/lang/String;[DI)I

    move-result p1

    return p1
.end method

.method public getGlobalStatHistory(Ljava/lang/String;[J)I
    .locals 1

    array-length v0, p2

    invoke-static {p1, p2, v0}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getGlobalStatHistory(Ljava/lang/String;[JI)I

    move-result p1

    return p1
.end method

.method public getLeaderboardDisplayType(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;)Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;
    .locals 3

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;->values()[Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardDisplayType;

    move-result-object v0

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;->handle:J

    invoke-static {v1, v2}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getLeaderboardDisplayType(J)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getLeaderboardEntryCount(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;)I
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getLeaderboardEntryCount(J)I

    move-result p1

    return p1
.end method

.method public getLeaderboardName(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getLeaderboardName(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLeaderboardSortMethod(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;)Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;
    .locals 3

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;->values()[Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardSortMethod;

    move-result-object v0

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;->handle:J

    invoke-static {v1, v2}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getLeaderboardSortMethod(J)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getNumAchievements()I
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getNumAchievements()I

    move-result v0

    return v0
.end method

.method public getNumberOfCurrentPlayers()Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUserStats;->callback:J

    invoke-static {v1, v2}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getNumberOfCurrentPlayers(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public getStatF(Ljava/lang/String;F)F
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [F

    invoke-static {p1, v0}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getStat(Ljava/lang/String;[F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    aget p1, v0, p1

    return p1

    :cond_0
    return p2
.end method

.method public getStatI(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-static {p1, v0}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getStat(Ljava/lang/String;[I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    aget p1, v0, p1

    return p1

    :cond_0
    return p2
.end method

.method public indicateAchievementProgress(Ljava/lang/String;II)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->indicateAchievementProgress(Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method public isAchieved(Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Z

    invoke-static {p1, v0}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->getAchievement(Ljava/lang/String;[Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    aget-boolean p1, v0, p1

    return p1

    :cond_0
    return p2
.end method

.method public requestCurrentStats()Z
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->requestCurrentStats()Z

    move-result v0

    return v0
.end method

.method public requestGlobalStats(I)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUserStats;->callback:J

    invoke-static {v1, v2, p1}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->requestGlobalStats(JI)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public resetAllStats(Z)Z
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->resetAllStats(Z)Z

    move-result p1

    return p1
.end method

.method public setAchievement(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->setAchievement(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setStatF(Ljava/lang/String;F)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->setStat(Ljava/lang/String;F)Z

    move-result p1

    return p1
.end method

.method public setStatI(Ljava/lang/String;I)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->setStat(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public storeStats()Z
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->storeStats()Z

    move-result v0

    return v0
.end method

.method public uploadLeaderboardScore(Lcom/codedisaster/steamworks/SteamLeaderboardHandle;Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;I[I)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 9

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    if-nez p4, :cond_0

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUserStats;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;->handle:J

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;->ordinal()I

    move-result v5

    move v6, p3

    invoke-static/range {v1 .. v6}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->uploadLeaderboardScore(JJII)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUserStats;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamLeaderboardHandle;->handle:J

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamUserStats$LeaderboardUploadScoreMethod;->ordinal()I

    move-result v5

    array-length v8, p4

    move v6, p3

    move-object v7, p4

    invoke-static/range {v1 .. v8}, Lcom/codedisaster/steamworks/SteamUserStatsNative;->uploadLeaderboardScore(JJII[II)J

    move-result-wide p1

    :goto_0
    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method
