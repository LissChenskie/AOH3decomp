.class public interface abstract Lcom/codedisaster/steamworks/SteamFriendsCallback;
.super Ljava/lang/Object;
.source "SteamFriendsCallback.java"


# virtual methods
.method public abstract onAvatarImageLoaded(Lcom/codedisaster/steamworks/SteamID;III)V
.end method

.method public abstract onFriendRichPresenceUpdate(Lcom/codedisaster/steamworks/SteamID;I)V
.end method

.method public abstract onGameLobbyJoinRequested(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;)V
.end method

.method public abstract onGameOverlayActivated(Z)V
.end method

.method public abstract onGameRichPresenceJoinRequested(Lcom/codedisaster/steamworks/SteamID;Ljava/lang/String;)V
.end method

.method public abstract onGameServerChangeRequested(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPersonaStateChange(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;)V
.end method

.method public abstract onSetPersonaNameResponse(ZZLcom/codedisaster/steamworks/SteamResult;)V
.end method
