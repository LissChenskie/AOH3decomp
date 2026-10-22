.class public abstract Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamMatchmakingServerListResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    invoke-static {p0}, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;->createProxy(Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;->callback:J

    return-void
.end method

.method private static native createProxy(Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;)J
.end method


# virtual methods
.method public bridge synthetic dispose()V
    .locals 0

    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method refreshComplete(JI)V
    .locals 1

    new-instance v0, Lcom/codedisaster/steamworks/SteamServerListRequest;

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamServerListRequest;-><init>(J)V

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;->refreshComplete(Lcom/codedisaster/steamworks/SteamServerListRequest;Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;)V

    return-void
.end method

.method public abstract refreshComplete(Lcom/codedisaster/steamworks/SteamServerListRequest;Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse$Response;)V
.end method

.method serverFailedToRespond(JI)V
    .locals 1

    new-instance v0, Lcom/codedisaster/steamworks/SteamServerListRequest;

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamServerListRequest;-><init>(J)V

    invoke-virtual {p0, v0, p3}, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;->serverFailedToRespond(Lcom/codedisaster/steamworks/SteamServerListRequest;I)V

    return-void
.end method

.method public abstract serverFailedToRespond(Lcom/codedisaster/steamworks/SteamServerListRequest;I)V
.end method

.method serverResponded(JI)V
    .locals 1

    new-instance v0, Lcom/codedisaster/steamworks/SteamServerListRequest;

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamServerListRequest;-><init>(J)V

    invoke-virtual {p0, v0, p3}, Lcom/codedisaster/steamworks/SteamMatchmakingServerListResponse;->serverResponded(Lcom/codedisaster/steamworks/SteamServerListRequest;I)V

    return-void
.end method

.method public abstract serverResponded(Lcom/codedisaster/steamworks/SteamServerListRequest;I)V
.end method
