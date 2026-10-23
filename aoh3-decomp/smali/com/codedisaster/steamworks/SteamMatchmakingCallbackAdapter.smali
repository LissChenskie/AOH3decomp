.class Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;
.super Lcom/codedisaster/steamworks/SteamCallbackAdapter;
.source "SteamMatchmakingCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codedisaster/steamworks/SteamCallbackAdapter<",
        "Lcom/codedisaster/steamworks/SteamMatchmakingCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final stateChangeValues:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->values()[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    move-result-object v0

    sput-object v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->stateChangeValues:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    return-void
.end method

.method constructor <init>(Lcom/codedisaster/steamworks/SteamMatchmakingCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/codedisaster/steamworks/SteamCallbackAdapter;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onFavoritesListAccountsUpdated(I)V
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;->onFavoritesListAccountsUpdated(Lcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onFavoritesListChanged(IIIIIZI)V
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->callback:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;->onFavoritesListChanged(IIIIIZI)V

    return-void
.end method

.method onLobbyChatMessage(JJII)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    new-instance p1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {p1, p3, p4}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-static {p5}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->byValue(I)Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    move-result-object p2

    invoke-interface {v0, v1, p1, p2, p6}, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;->onLobbyChatMessage(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;I)V

    return-void
.end method

.method onLobbyChatUpdate(JJJI)V
    .locals 2

    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    new-instance p1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {p1, p3, p4}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    new-instance p2, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {p2, p5, p6}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    sget-object p3, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->stateChangeValues:[Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;

    array-length p4, p3

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_1

    aget-object p6, p3, p5

    invoke-static {p6, p7}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;->isSet(Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v1, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    invoke-interface {v1, v0, p1, p2, p6}, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;->onLobbyChatUpdate(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamMatchmaking$ChatMemberStateChange;)V

    :cond_0
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method onLobbyCreated(IJ)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p1

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p2, p3}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-interface {v0, p1, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;->onLobbyCreated(Lcom/codedisaster/steamworks/SteamResult;Lcom/codedisaster/steamworks/SteamID;)V

    return-void
.end method

.method onLobbyDataUpdate(JJZ)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    new-instance p1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {p1, p3, p4}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-interface {v0, v1, p1, p5}, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;->onLobbyDataUpdate(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;Z)V

    return-void
.end method

.method onLobbyEnter(JIZI)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-static {p5}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;->byValue(I)Lcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;

    move-result-object p1

    invoke-interface {v0, v1, p3, p4, p1}, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;->onLobbyEnter(Lcom/codedisaster/steamworks/SteamID;IZLcom/codedisaster/steamworks/SteamMatchmaking$ChatRoomEnterResponse;)V

    return-void
.end method

.method onLobbyGameCreated(JJIS)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    new-instance p1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {p1, p3, p4}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-interface {v0, v1, p1, p5, p6}, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;->onLobbyGameCreated(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;IS)V

    return-void
.end method

.method onLobbyInvite(JJJ)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    new-instance p1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {p1, p3, p4}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-interface {v0, v1, p1, p5, p6}, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;->onLobbyInvite(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;J)V

    return-void
.end method

.method onLobbyKicked(JJZ)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    new-instance p1, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {p1, p3, p4}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    invoke-interface {v0, v1, p1, p5}, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;->onLobbyKicked(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamID;Z)V

    return-void
.end method

.method onLobbyMatchList(I)V
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;

    invoke-interface {v0, p1}, Lcom/codedisaster/steamworks/SteamMatchmakingCallback;->onLobbyMatchList(I)V

    return-void
.end method
