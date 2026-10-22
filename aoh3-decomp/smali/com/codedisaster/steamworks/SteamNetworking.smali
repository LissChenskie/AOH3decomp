.class public Lcom/codedisaster/steamworks/SteamNetworking;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamNetworking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;,
        Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionError;,
        Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;
    }
.end annotation


# instance fields
.field private final isServer:Z

.field private final tmpIntResult:[I

.field private final tmpLongResult:[J


# direct methods
.method public constructor <init>(Lcom/codedisaster/steamworks/SteamNetworkingCallback;)V
    .locals 2

    new-instance v0, Lcom/codedisaster/steamworks/SteamNetworkingCallbackAdapter;

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamNetworkingCallbackAdapter;-><init>(Lcom/codedisaster/steamworks/SteamNetworkingCallback;)V

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamNetworkingNative;->createCallback(Lcom/codedisaster/steamworks/SteamNetworkingCallbackAdapter;)J

    move-result-wide v0

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/codedisaster/steamworks/SteamNetworking;-><init>(ZJ)V

    return-void
.end method

.method constructor <init>(ZJ)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    const/4 p2, 0x1

    new-array p3, p2, [I

    iput-object p3, p0, Lcom/codedisaster/steamworks/SteamNetworking;->tmpIntResult:[I

    new-array p2, p2, [J

    iput-object p2, p0, Lcom/codedisaster/steamworks/SteamNetworking;->tmpLongResult:[J

    iput-boolean p1, p0, Lcom/codedisaster/steamworks/SteamNetworking;->isServer:Z

    return-void
.end method


# virtual methods
.method public acceptP2PSessionWithUser(Lcom/codedisaster/steamworks/SteamID;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamNetworking;->isServer:Z

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamNetworkingNative;->acceptP2PSessionWithUser(ZJ)Z

    move-result p1

    return p1
.end method

.method public allowP2PPacketRelay(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamNetworking;->isServer:Z

    invoke-static {v0, p1}, Lcom/codedisaster/steamworks/SteamNetworkingNative;->allowP2PPacketRelay(ZZ)Z

    move-result p1

    return p1
.end method

.method public closeP2PChannelWithUser(Lcom/codedisaster/steamworks/SteamID;I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamNetworking;->isServer:Z

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, v2, p2}, Lcom/codedisaster/steamworks/SteamNetworkingNative;->closeP2PChannelWithUser(ZJI)Z

    move-result p1

    return p1
.end method

.method public closeP2PSessionWithUser(Lcom/codedisaster/steamworks/SteamID;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamNetworking;->isServer:Z

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamNetworkingNative;->closeP2PSessionWithUser(ZJ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic dispose()V
    .locals 0

    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public getP2PSessionState(Lcom/codedisaster/steamworks/SteamID;Lcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamNetworking;->isServer:Z

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {v0, v1, v2, p2}, Lcom/codedisaster/steamworks/SteamNetworkingNative;->getP2PSessionState(ZJLcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;)Z

    move-result p1

    return p1
.end method

.method public isP2PPacketAvailable(I[I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamNetworking;->isServer:Z

    invoke-static {v0, p2, p1}, Lcom/codedisaster/steamworks/SteamNetworkingNative;->isP2PPacketAvailable(Z[II)Z

    move-result p1

    return p1
.end method

.method public readP2PPacket(Lcom/codedisaster/steamworks/SteamID;Ljava/nio/ByteBuffer;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/codedisaster/steamworks/SteamNetworking;->isServer:Z

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget-object v5, p0, Lcom/codedisaster/steamworks/SteamNetworking;->tmpIntResult:[I

    iget-object v6, p0, Lcom/codedisaster/steamworks/SteamNetworking;->tmpLongResult:[J

    move-object v2, p2

    move v7, p3

    invoke-static/range {v1 .. v7}, Lcom/codedisaster/steamworks/SteamNetworkingNative;->readP2PPacket(ZLjava/nio/ByteBuffer;II[I[JI)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/codedisaster/steamworks/SteamNetworking;->tmpLongResult:[J

    aget-wide v0, p2, p3

    iput-wide v0, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    iget-object p1, p0, Lcom/codedisaster/steamworks/SteamNetworking;->tmpIntResult:[I

    aget p1, p1, p3

    return p1

    :cond_0
    return p3

    :cond_1
    new-instance p1, Lcom/codedisaster/steamworks/SteamException;

    const-string p2, "Direct buffer required!"

    invoke-direct {p1, p2}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendP2PPacket(Lcom/codedisaster/steamworks/SteamID;Ljava/nio/ByteBuffer;Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/codedisaster/steamworks/SteamNetworking;->isServer:Z

    iget-wide v2, p1, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-virtual {p3}, Lcom/codedisaster/steamworks/SteamNetworking$P2PSend;->ordinal()I

    move-result v7

    move-object v4, p2

    move v8, p4

    invoke-static/range {v1 .. v8}, Lcom/codedisaster/steamworks/SteamNetworkingNative;->sendP2PPacket(ZJLjava/nio/ByteBuffer;IIII)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lcom/codedisaster/steamworks/SteamException;

    const-string p2, "Direct buffer required!"

    invoke-direct {p1, p2}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
