.class public Lcom/codedisaster/steamworks/SteamMatchmaking;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamMatchmaking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntry;,
        Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;,
        Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;,
        Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;,
        Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;,
        Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;,
        Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/codedisaster/steamworks/SteamMatchmakingCallback;)V
    .locals 2

    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;-><init>(Lcom/codedisaster/steamworks/SteamMatchmakingCallback;)V

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->createCallback(Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    return-void
.end method


# virtual methods
.method public addFavoriteGame(IISSII)I
    .locals 0

    invoke-static/range {p1 .. p6}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->addFavoriteGame(IISSII)I

    move-result p1

    return p1
.end method

.method public addRequestLobbyListCompatibleMembersFilter(Lcom/codedisaster/steamworks/SteamID;)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->addRequestLobbyListCompatibleMembersFilter(J)V

    return-void
.end method

.method public addRequestLobbyListDistanceFilter(Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;)V
    .locals 0

    invoke-virtual {p1}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyDistanceFilter;->ordinal()I

    move-result p1

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->addRequestLobbyListDistanceFilter(I)V

    return-void
.end method

.method public addRequestLobbyListFilterSlotsAvailable(I)V
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->addRequestLobbyListFilterSlotsAvailable(I)V

    return-void
.end method

.method public addRequestLobbyListNearValueFilter(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->addRequestLobbyListNearValueFilter(Ljava/lang/String;I)V

    return-void
.end method

.method public addRequestLobbyListNumericalFilter(Ljava/lang/String;ILcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;)V
    .locals 0

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;->access$000(Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;)I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->addRequestLobbyListNumericalFilter(Ljava/lang/String;II)V

    return-void
.end method

.method public addRequestLobbyListResultCountFilter(I)V
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->addRequestLobbyListResultCountFilter(I)V

    return-void
.end method

.method public addRequestLobbyListStringFilter(Ljava/lang/String;Ljava/lang/String;Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;)V
    .locals 0

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;->access$000(Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyComparison;)I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->addRequestLobbyListStringFilter(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public createLobby(Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;I)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamMatchmaking;->callback:J

    invoke-virtual {p1}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;->ordinal()I

    move-result p1

    invoke-static {v1, v2, p1, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->createLobby(JII)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public deleteLobbyData(Lcom/codedisaster/steamworks/SteamID;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->deleteLobbyData(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic dispose()V
    .locals 0

    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public getFavoriteGame(I[I[I[S[S[I[I)Z
    .locals 0

    invoke-static/range {p1 .. p7}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getFavoriteGame(I[I[I[S[S[I[I)Z

    move-result p1

    return p1
.end method

.method public getFavoriteGameCount()I
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getFavoriteGameCount()I

    move-result v0

    return v0
.end method

.method public getLobbyByIndex(I)Lcom/codedisaster/steamworks/SteamID;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getLobbyByIndex(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getLobbyChatEntry(Lcom/codedisaster/steamworks/SteamID;ILcom/codedisaster/steamworks/SteamMatchmaking$ChatEntry;Ljava/nio/ByteBuffer;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v7}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getLobbyChatEntry(JILcom/codedisaster/steamworks/SteamMatchmaking$ChatEntry;Ljava/nio/ByteBuffer;II)I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lcom/codedisaster/steamworks/SteamException;

    const-string p2, "Direct buffer required!"

    invoke-direct {p1, p2}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getLobbyData(Lcom/codedisaster/steamworks/SteamID;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getLobbyData(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLobbyDataByIndex(Lcom/codedisaster/steamworks/SteamID;ILcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getLobbyDataByIndex(JILcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;)Z

    move-result p1

    return p1
.end method

.method public getLobbyDataCount(Lcom/codedisaster/steamworks/SteamID;)I
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getLobbyDataCount(J)I

    move-result p1

    return p1
.end method

.method public getLobbyGameServer(Lcom/codedisaster/steamworks/SteamID;[I[SLcom/codedisaster/steamworks/SteamID;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [J

    iget-wide v2, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v2, v3, p2, p3, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getLobbyGameServer(J[I[S[J)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    aget-wide p1, v1, p2

    iput-wide p1, p4, Lcom/codedisaster/steamworks/SteamID;->handle:J

    return v0

    :cond_0
    return p2
.end method

.method public getLobbyMemberByIndex(Lcom/codedisaster/steamworks/SteamID;I)Lcom/codedisaster/steamworks/SteamID;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v1, v2, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getLobbyMemberByIndex(JI)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getLobbyMemberData(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    iget-wide p1, p2, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getLobbyMemberData(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLobbyMemberLimit(Lcom/codedisaster/steamworks/SteamID;)I
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getLobbyMemberLimit(J)I

    move-result p1

    return p1
.end method

.method public getLobbyOwner(Lcom/codedisaster/steamworks/SteamID;)Lcom/codedisaster/steamworks/SteamID;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getLobbyOwner(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getNumLobbyMembers(Lcom/codedisaster/steamworks/SteamID;)I
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->getNumLobbyMembers(J)I

    move-result p1

    return p1
.end method

.method public inviteUserToLobby(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    iget-wide p1, p2, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p1, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->inviteUserToLobby(JJ)Z

    move-result p1

    return p1
.end method

.method public joinLobby(Lcom/codedisaster/steamworks/SteamID;)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 5

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamMatchmaking;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v1, v2, v3, v4}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->joinLobby(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public leaveLobby(Lcom/codedisaster/steamworks/SteamID;)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->leaveLobby(J)V

    return-void
.end method

.method public removeFavoriteGame(IISSI)Z
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->removeFavoriteGame(IISSI)Z

    move-result p1

    return p1
.end method

.method public requestLobbyData(Lcom/codedisaster/steamworks/SteamID;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->requestLobbyData(J)Z

    move-result p1

    return p1
.end method

.method public requestLobbyList()Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamMatchmaking;->callback:J

    invoke-static {v1, v2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->requestLobbyList(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public sendLobbyChatMsg(Lcom/codedisaster/steamworks/SteamID;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->sendLobbyChatMsg(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public sendLobbyChatMsg(Lcom/codedisaster/steamworks/SteamID;Ljava/nio/ByteBuffer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, p2, p1, v2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->sendLobbyChatMsg(JLjava/nio/ByteBuffer;II)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lcom/codedisaster/steamworks/SteamException;

    const-string p2, "Direct buffer required!"

    invoke-direct {p1, p2}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLinkedLobby(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    iget-wide p1, p2, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p1, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->setLinkedLobby(JJ)Z

    move-result p1

    return p1
.end method

.method public setLobbyData(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->setLobbyData(JLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setLobbyData(Lcom/codedisaster/steamworks/SteamID;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->setLobbyData(JLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setLobbyGameServer(Lcom/codedisaster/steamworks/SteamID;ISLcom/codedisaster/steamworks/SteamID;)V
    .locals 6

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    iget-wide v4, p4, Lcom/codedisaster/steamworks/SteamID;->handle:J

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->setLobbyGameServer(JISJ)V

    return-void
.end method

.method public setLobbyJoinable(Lcom/codedisaster/steamworks/SteamID;Z)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->setLobbyJoinable(JZ)Z

    move-result p1

    return p1
.end method

.method public setLobbyMemberData(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p1, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->setLobbyMemberData(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLobbyMemberData(Lcom/codedisaster/steamworks/SteamID;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->setLobbyMemberData(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLobbyMemberLimit(Lcom/codedisaster/steamworks/SteamID;I)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->setLobbyMemberLimit(JI)Z

    move-result p1

    return p1
.end method

.method public setLobbyOwner(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    iget-wide p1, p2, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p1, p2}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->setLobbyOwner(JJ)Z

    move-result p1

    return p1
.end method

.method public setLobbyType(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamMatchmaking$LobbyType;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/codedisaster/steamworks/SteamMatchmakingNative;->setLobbyType(JI)Z

    move-result p1

    return p1
.end method
