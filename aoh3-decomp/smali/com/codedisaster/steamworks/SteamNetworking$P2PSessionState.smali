.class public Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;
.super Ljava/lang/Object;
.source "SteamNetworking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamNetworking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "P2PSessionState"
.end annotation


# instance fields
.field bytesQueuedForSend:I

.field connecting:B

.field connectionActive:B

.field packetsQueuedForSend:I

.field remoteIP:I

.field remotePort:S

.field sessionError:B

.field usingRelay:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytesQueuedForSend()I
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;->bytesQueuedForSend:I

    return v0
.end method

.method public getLastSessionError()Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;
    .locals 1

    iget-byte v0, p0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;->sessionError:B

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;

    move-result-object v0

    return-object v0
.end method

.method public getPacketsQueuedForSend()I
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;->packetsQueuedForSend:I

    return v0
.end method

.method public getRemoteIP()I
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;->remoteIP:I

    return v0
.end method

.method public getRemotePort()S
    .locals 1

    iget-short v0, p0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;->remotePort:S

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    iget-byte v0, p0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;->connecting:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnectionActive()Z
    .locals 1

    iget-byte v0, p0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;->connectionActive:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUsingRelay()Z
    .locals 1

    iget-byte v0, p0, Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;->usingRelay:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
