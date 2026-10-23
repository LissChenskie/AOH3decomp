.class public Lcom/codedisaster/steamworks/SteamFriends;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamFriends.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;,
        Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;,
        Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;,
        Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;,
        Lcom/codedisaster/steamworks/SteamFriends$FriendGameInfo;,
        Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;,
        Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;,
        Lcom/codedisaster/steamworks/SteamFriends$PersonaState;,
        Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/codedisaster/steamworks/SteamFriendsCallback;)V
    .locals 2

    new-instance v0, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;-><init>(Lcom/codedisaster/steamworks/SteamFriendsCallback;)V

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamFriendsNative;->createCallback(Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    return-void
.end method


# virtual methods
.method public activateGameOverlay(Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;)V
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;->access$100(Lcom/codedisaster/steamworks/SteamFriends$OverlayDialog;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->activateGameOverlay(Ljava/lang/String;)V

    return-void
.end method

.method public activateGameOverlayInviteDialog(Lcom/codedisaster/steamworks/SteamID;)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->activateGameOverlayInviteDialog(J)V

    return-void
.end method

.method public activateGameOverlayToStore(ILcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;)V
    .locals 0

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToStoreFlag;->ordinal()I

    move-result p2

    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamFriendsNative;->activateGameOverlayToStore(II)V

    return-void
.end method

.method public activateGameOverlayToUser(Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;Lcom/codedisaster/steamworks/SteamID;)V
    .locals 2

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;->access$200(Lcom/codedisaster/steamworks/SteamFriends$OverlayToUserDialog;)Ljava/lang/String;

    move-result-object p1

    iget-wide v0, p2, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {p1, v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->activateGameOverlayToUser(Ljava/lang/String;J)V

    return-void
.end method

.method public activateGameOverlayToWebPage(Ljava/lang/String;Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;)V
    .locals 0

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamFriends$OverlayToWebPageMode;->ordinal()I

    move-result p2

    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamFriendsNative;->activateGameOverlayToWebPage(Ljava/lang/String;I)V

    return-void
.end method

.method public clearRichPresence()V
    .locals 0

    invoke-static {}, Lcom/codedisaster/steamworks/SteamFriendsNative;->clearRichPresence()V

    return-void
.end method

.method public bridge synthetic dispose()V
    .locals 0

    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public getCoplayFriend(I)Lcom/codedisaster/steamworks/SteamID;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getCoplayFriend(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getCoplayFriendCount()I
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getCoplayFriendCount()I

    move-result v0

    return v0
.end method

.method public getFriendByIndex(ILcom/codedisaster/steamworks/SteamFriends$FriendFlags;)Lcom/codedisaster/steamworks/SteamID;
    .locals 1

    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    invoke-static {p2}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->access$000(Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendByIndex(II)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getFriendByIndex(ILjava/util/Collection;)Lcom/codedisaster/steamworks/SteamID;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;",
            ">;)",
            "Lcom/codedisaster/steamworks/SteamID;"
        }
    .end annotation

    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    invoke-static {p2}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->asBits(Ljava/util/Collection;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendByIndex(II)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getFriendCoplayGame(Lcom/codedisaster/steamworks/SteamID;)I
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendCoplayGame(J)I

    move-result p1

    return p1
.end method

.method public getFriendCoplayTime(Lcom/codedisaster/steamworks/SteamID;)I
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendCoplayTime(J)I

    move-result p1

    return p1
.end method

.method public getFriendCount(Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;)I
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->access$000(Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;)I

    move-result p1

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendCount(I)I

    move-result p1

    return p1
.end method

.method public getFriendCount(Ljava/util/Collection;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;",
            ">;)I"
        }
    .end annotation

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamFriends$FriendFlags;->asBits(Ljava/util/Collection;)I

    move-result p1

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendCount(I)I

    move-result p1

    return p1
.end method

.method public getFriendGamePlayed(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamFriends$FriendGameInfo;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendGamePlayed(JLcom/codedisaster/steamworks/SteamFriends$FriendGameInfo;)Z

    move-result p1

    return p1
.end method

.method public getFriendPersonaName(Lcom/codedisaster/steamworks/SteamID;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendPersonaName(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFriendPersonaState(Lcom/codedisaster/steamworks/SteamID;)Lcom/codedisaster/steamworks/SteamFriends$PersonaState;
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendPersonaState(J)I

    move-result p1

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    move-result-object p1

    return-object p1
.end method

.method public getFriendRelationship(Lcom/codedisaster/steamworks/SteamID;)Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendRelationship(J)I

    move-result p1

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamFriends$FriendRelationship;

    move-result-object p1

    return-object p1
.end method

.method public getFriendRichPresence(Lcom/codedisaster/steamworks/SteamID;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendRichPresence(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFriendRichPresenceKeyByIndex(Lcom/codedisaster/steamworks/SteamID;I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendRichPresenceKeyByIndex(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFriendRichPresenceKeyCount(Lcom/codedisaster/steamworks/SteamID;)I
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getFriendRichPresenceKeyCount(J)I

    move-result p1

    return p1
.end method

.method public getLargeFriendAvatar(Lcom/codedisaster/steamworks/SteamID;)I
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getLargeFriendAvatar(J)I

    move-result p1

    return p1
.end method

.method public getMediumFriendAvatar(Lcom/codedisaster/steamworks/SteamID;)I
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getMediumFriendAvatar(J)I

    move-result p1

    return p1
.end method

.method public getPersonaName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getPersonaName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersonaState()Lcom/codedisaster/steamworks/SteamFriends$PersonaState;
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getPersonaState()I

    move-result v0

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamFriends$PersonaState;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamFriends$PersonaState;

    move-result-object v0

    return-object v0
.end method

.method public getSmallFriendAvatar(Lcom/codedisaster/steamworks/SteamID;)I
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->getSmallFriendAvatar(J)I

    move-result p1

    return p1
.end method

.method public inviteUserToGame(Lcom/codedisaster/steamworks/SteamID;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamFriendsNative;->inviteUserToGame(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public requestFriendRichPresence(Lcom/codedisaster/steamworks/SteamID;)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->requestFriendRichPresence(J)V

    return-void
.end method

.method public requestUserInformation(Lcom/codedisaster/steamworks/SteamID;Z)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamFriendsNative;->requestUserInformation(JZ)Z

    move-result p1

    return p1
.end method

.method public setInGameVoiceSpeaking(Lcom/codedisaster/steamworks/SteamID;Z)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamFriendsNative;->setInGameVoiceSpeaking(JZ)V

    return-void
.end method

.method public setPersonaName(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamFriends;->callback:J

    invoke-static {v1, v2, p1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->setPersonaName(JLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public setPlayedWith(Lcom/codedisaster/steamworks/SteamID;)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamFriendsNative;->setPlayedWith(J)V

    return-void
.end method

.method public setRichPresence(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamFriendsNative;->setRichPresence(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
