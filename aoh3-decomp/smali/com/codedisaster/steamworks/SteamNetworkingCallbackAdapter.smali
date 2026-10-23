.class Lcom/codedisaster/steamworks/SteamNetworkingCallbackAdapter;
.super Lcom/codedisaster/steamworks/SteamCallbackAdapter;
.source "SteamNetworkingCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codedisaster/steamworks/SteamCallbackAdapter<",
        "Lcom/codedisaster/steamworks/SteamNetworkingCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/codedisaster/steamworks/SteamNetworkingCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/codedisaster/steamworks/SteamCallbackAdapter;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onP2PSessionConnectFail(JI)V
    .locals 1

    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    iget-object p1, p0, Lcom/codedisaster/steamworks/SteamNetworkingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast p1, Lcom/codedisaster/steamworks/SteamNetworkingCallback;

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/codedisaster/steamworks/SteamNetworkingCallback;->onP2PSessionConnectFail(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;)V

    return-void
.end method

.method onP2PSessionRequest(J)V
    .locals 1

    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    iget-object p1, p0, Lcom/codedisaster/steamworks/SteamNetworkingCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast p1, Lcom/codedisaster/steamworks/SteamNetworkingCallback;

    invoke-interface {p1, v0}, Lcom/codedisaster/steamworks/SteamNetworkingCallback;->onP2PSessionRequest(Lcom/codedisaster/steamworks/SteamID;)V

    return-void
.end method
