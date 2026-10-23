.class final Lcom/codedisaster/steamworks/SteamMatchmakingServersNative;
.super Ljava/lang/Object;
.source "SteamMatchmakingServersNative.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native cancelQuery(J)V
.end method

.method static native cancelServerQuery(I)V
.end method

.method static native getServerCount(J)I
.end method

.method static native getServerDetails(JILcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;)Z
.end method

.method static native isRefreshing(J)Z
.end method

.method static native pingServer(ISJ)I
.end method

.method static native playerDetails(ISJ)I
.end method

.method static native refreshQuery(J)V
.end method

.method static native refreshServer(JI)V
.end method

.method static native releaseRequest(J)V
.end method

.method static native requestFavoritesServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;IJ)J
.end method

.method static native requestFriendsServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;IJ)J
.end method

.method static native requestHistoryServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;IJ)J
.end method

.method static native requestInternetServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;IJ)J
.end method

.method static native requestLANServerList(IJ)J
.end method

.method static native requestSpectatorServerList(I[Lcom/codedisaster/steamworks/SteamMatchmakingKeyValuePair;IJ)J
.end method

.method static native serverRules(ISJ)I
.end method
