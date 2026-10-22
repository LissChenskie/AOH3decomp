.class public abstract Lcom/codedisaster/steamworks/SteamMatchmakingPlayersResponse;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamMatchmakingPlayersResponse.java"


# direct methods
.method protected constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    invoke-static {p0}, Lcom/codedisaster/steamworks/SteamMatchmakingPlayersResponse;->createProxy(Lcom/codedisaster/steamworks/SteamMatchmakingPlayersResponse;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingPlayersResponse;->callback:J

    return-void
.end method

.method private static native createProxy(Lcom/codedisaster/steamworks/SteamMatchmakingPlayersResponse;)J
.end method


# virtual methods
.method public abstract addPlayerToList(Ljava/lang/String;IF)V
.end method

.method public bridge synthetic dispose()V
    .locals 0

    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public abstract playersFailedToRespond()V
.end method

.method public abstract playersRefreshComplete()V
.end method
