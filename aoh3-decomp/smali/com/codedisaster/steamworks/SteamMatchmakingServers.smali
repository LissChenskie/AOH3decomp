.class public Lcom/codedisaster/steamworks/SteamMatchmakingServers;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamMatchmakingServers.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    return-void
.end method


# virtual methods
.method public cancelQuery(Lcom/codedisaster/steamworks/SteamServerListRequest;)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamServerListRequest;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->cancelQuery(J)V

    return-void
.end method

.method public cancelServerQuery(Lcom/codedisaster/steamworks/SteamServerQuery;)V
    .locals 0

    iget p1, p1, Lcom/codedisaster/steamworks/SteamServerQuery;->handle:I

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->cancelServerQuery(I)V

    return-void
.end method

.method public bridge synthetic dispose()V
    .locals 0

    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public getServerCount(Lcom/codedisaster/steamworks/SteamServerListRequest;)I
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamServerListRequest;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->getServerCount(J)I

    move-result p1

    return p1
.end method

.method public getServerDetails(Lcom/codedisaster/steamworks/SteamServerListRequest;ILcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamServerListRequest;->handle:J

    invoke-static {v0, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->getServerDetails(JILcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;)Z

    move-result p1

    return p1
.end method

.method public isRefreshing(Lcom/codedisaster/steamworks/SteamServerListRequest;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamServerListRequest;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->isRefreshing(J)Z

    move-result p1

    return p1
.end method

.method public pingServer(ISLcom/codedisaster/steamworks/SteamMatchmakingPingResponse;)Lcom/codedisaster/steamworks/SteamServerQuery;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamServerQuery;

    iget-wide v1, p3, Lcom/codedisaster/steamworks/SteamMatchmakingPingResponse;->callback:J

    invoke-static {p1, p2, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->pingServer(ISJ)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamServerQuery;-><init>(I)V

    return-object v0
.end method

.method public playerDetails(ISLcom/codedisaster/steamworks/SteamMatchmakingPlayersResponse;)Lcom/codedisaster/steamworks/SteamServerQuery;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamServerQuery;

    iget-wide v1, p3, Lcom/codedisaster/steamworks/SteamMatchmakingPlayersResponse;->callback:J

    invoke-static {p1, p2, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->playerDetails(ISJ)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamServerQuery;-><init>(I)V

    return-object v0
.end method

.method public refreshQuery(Lcom/codedisaster/steamworks/SteamServerListRequest;)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamServerListRequest;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->refreshQuery(J)V

    return-void
.end method

.method public refreshServer(Lcom/codedisaster/steamworks/SteamServerListRequest;I)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamServerListRequest;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->refreshServer(JI)V

    return-void
.end method

.method public releaseRequest(Lcom/codedisaster/steamworks/SteamServerListRequest;)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamServerListRequest;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->releaseRequest(J)V

    return-void
.end method

.method public requestFavoritesServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;)Lcom/codedisaster/steamworks/SteamServerListRequest;
    .locals 4

    new-instance v0, Lcom/codedisaster/steamworks/SteamServerListRequest;

    array-length v1, p2

    iget-wide v2, p3, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;->callback:J

    invoke-static {p1, p2, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->requestFavoritesServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;IJ)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamServerListRequest;-><init>(J)V

    return-object v0
.end method

.method public requestFriendsServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;)Lcom/codedisaster/steamworks/SteamServerListRequest;
    .locals 4

    new-instance v0, Lcom/codedisaster/steamworks/SteamServerListRequest;

    array-length v1, p2

    iget-wide v2, p3, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;->callback:J

    invoke-static {p1, p2, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->requestFriendsServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;IJ)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamServerListRequest;-><init>(J)V

    return-object v0
.end method

.method public requestHistoryServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;)Lcom/codedisaster/steamworks/SteamServerListRequest;
    .locals 4

    new-instance v0, Lcom/codedisaster/steamworks/SteamServerListRequest;

    array-length v1, p2

    iget-wide v2, p3, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;->callback:J

    invoke-static {p1, p2, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->requestHistoryServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;IJ)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamServerListRequest;-><init>(J)V

    return-object v0
.end method

.method public requestInternetServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;)Lcom/codedisaster/steamworks/SteamServerListRequest;
    .locals 4

    new-instance v0, Lcom/codedisaster/steamworks/SteamServerListRequest;

    array-length v1, p2

    iget-wide v2, p3, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;->callback:J

    invoke-static {p1, p2, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->requestInternetServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;IJ)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamServerListRequest;-><init>(J)V

    return-object v0
.end method

.method public requestLANServerList(ILcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;)Lcom/codedisaster/steamworks/SteamServerListRequest;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamServerListRequest;

    iget-wide v1, p2, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;->callback:J

    invoke-static {p1, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->requestLANServerList(IJ)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamServerListRequest;-><init>(J)V

    return-object v0
.end method

.method public requestSpectatorServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;)Lcom/codedisaster/steamworks/SteamServerListRequest;
    .locals 4

    new-instance v0, Lcom/codedisaster/steamworks/SteamServerListRequest;

    array-length v1, p2

    iget-wide v2, p3, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;->callback:J

    invoke-static {p1, p2, v1, v2, v3}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->requestSpectatorServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;IJ)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamServerListRequest;-><init>(J)V

    return-object v0
.end method

.method public serverRules(ISLcom/codedisaster/steamworks/SteamMatchmakingRulesResponse;)Lcom/codedisaster/steamworks/SteamServerQuery;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamServerQuery;

    iget-wide v1, p3, Lcom/codedisaster/steamworks/SteamMatchmakingRulesResponse;->callback:J

    invoke-static {p1, p2, v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;->serverRules(ISJ)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamServerQuery;-><init>(I)V

    return-object v0
.end method
