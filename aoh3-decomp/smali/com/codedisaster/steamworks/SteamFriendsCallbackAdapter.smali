.class Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;
.super Lcom/codedisaster/steamworks/SteamCallbackAdapter;
.source "SteamFriendsCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codedisaster/steamworks/SteamCallbackAdapter<",
        "Lcom/codedisaster/steamworks/SteamFriendsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final personaChangeValues:[Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->values()[Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;->personaChangeValues:[Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    return-void
.end method

.method constructor <init>(Lcom/codedisaster/steamworks/SteamFriendsCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/codedisaster/steamworks/SteamCallbackAdapter;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onAvatarImageLoaded(JIII)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamFriendsCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-interface {v0, v1, p3, p4, p5}, Lcom/codedisaster/steamworks/SteamFriendsCallback;->onAvatarImageLoaded(Lcom/codedisaster/steamworks/SteamID;III)V

    return-void
.end method

.method onFriendRichPresenceUpdate(JI)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamFriendsCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-interface {v0, v1, p3}, Lcom/codedisaster/steamworks/SteamFriendsCallback;->onFriendRichPresenceUpdate(Lcom/codedisaster/steamworks/SteamID;I)V

    return-void
.end method

.method onGameLobbyJoinRequested(JJ)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamFriendsCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    new-instance p1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {p1, p3, p4}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-interface {v0, v1, p1}, Lcom/codedisaster/steamworks/SteamFriendsCallback;->onGameLobbyJoinRequested(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;)V

    return-void
.end method

.method onGameOverlayActivated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamFriendsCallback;

    invoke-interface {v0, p1}, Lcom/codedisaster/steamworks/SteamFriendsCallback;->onGameOverlayActivated(Z)V

    return-void
.end method

.method onGameRichPresenceJoinRequested(JLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamFriendsCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-interface {v0, v1, p3}, Lcom/codedisaster/steamworks/SteamFriendsCallback;->onGameRichPresenceJoinRequested(Lcom/codedisaster/steamworks/SteamID;Ljava/lang/String;)V

    return-void
.end method

.method onGameServerChangeRequested(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamFriendsCallback;

    invoke-interface {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamFriendsCallback;->onGameServerChangeRequested(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method onPersonaStateChange(JI)V
    .locals 4

    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    sget-object p1, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;->personaChangeValues:[Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;

    array-length p2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    invoke-static {v2, p3}, Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;->isSet(Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v3, Lcom/codedisaster/steamworks/SteamFriendsCallback;

    invoke-interface {v3, v0, v2}, Lcom/codedisaster/steamworks/SteamFriendsCallback;->onPersonaStateChange(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamFriends$PersonaChange;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method onSetPersonaNameResponse(ZZI)V
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamFriendsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamFriendsCallback;

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p3

    invoke-interface {v0, p1, p2, p3}, Lcom/codedisaster/steamworks/SteamFriendsCallback;->onSetPersonaNameResponse(ZZLcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method
