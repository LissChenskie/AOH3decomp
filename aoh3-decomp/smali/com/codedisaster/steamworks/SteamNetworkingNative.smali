.class final Lcom/codedisaster/steamworks/SteamNetworkingNative;
.super Ljava/lang/Object;
.source "SteamNetworkingNative.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native acceptP2PSessionWithUser(ZJ)Z
.end method

.method static native allowP2PPacketRelay(ZZ)Z
.end method

.method static native closeP2PChannelWithUser(ZJI)Z
.end method

.method static native closeP2PSessionWithUser(ZJ)Z
.end method

.method static native createCallback(Lcom/codedisaster/steamworks/SteamNetworkingCallbackAdapter;)J
.end method

.method static native getP2PSessionState(ZJLcom/codedisaster/steamworks/SteamNetworking$P2PSessionState;)Z
.end method

.method static native isP2PPacketAvailable(Z[II)Z
.end method

.method static native readP2PPacket(ZLjava/nio/ByteBuffer;II[I[JI)Z
.end method

.method static native sendP2PPacket(ZJLjava/nio/ByteBuffer;IIII)Z
.end method
