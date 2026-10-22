.class public interface abstract Lcom/codedisaster/steamworks/SteamMatchmakingCallback;
.super Ljava/lang/Object;
.source "SteamMatchmakingCallback.java"


# virtual methods
.method public abstract onFavoritesListAccountsUpdated(Lcom/codedisaster/steamworks/SteamResult;)V
.end method

.method public abstract onFavoritesListChanged(IIIIIZI)V
.end method

.method public abstract onLobbyChatMessage(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;I)V
.end method

.method public abstract onLobbyChatUpdate(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;)V
.end method

.method public abstract onLobbyCreated(Lcom/codedisaster/steamworks/SteamResult;Lcom/codedisaster/steamworks/SteamID;)V
.end method

.method public abstract onLobbyDataUpdate(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;Z)V
.end method

.method public abstract onLobbyEnter(Lcom/codedisaster/steamworks/SteamID;IZLcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;)V
.end method

.method public abstract onLobbyGameCreated(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;IS)V
.end method

.method public abstract onLobbyInvite(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;J)V
.end method

.method public abstract onLobbyKicked(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;Z)V
.end method

.method public abstract onLobbyMatchList(I)V
.end method
