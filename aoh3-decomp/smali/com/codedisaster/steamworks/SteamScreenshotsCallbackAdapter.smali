.class public Lcom/codedisaster/steamworks/SteamScreenshotsCallbackAdapter;
.super Lcom/codedisaster/steamworks/SteamCallbackAdapter;
.source "SteamScreenshotsCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codedisaster/steamworks/SteamCallbackAdapter<",
        "Lcom/codedisaster/steamworks/SteamScreenshotsCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/codedisaster/steamworks/SteamScreenshotsCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/codedisaster/steamworks/SteamCallbackAdapter;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onScreenshotReady(II)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamScreenshotsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamScreenshotsCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamScreenshotHandle;

    invoke-direct {v1, p1}, Lcom/codedisaster/steamworks/SteamScreenshotHandle;-><init>(I)V

    invoke-static {p2}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/codedisaster/steamworks/SteamScreenshotsCallback;->onScreenshotReady(Lcom/codedisaster/steamworks/SteamScreenshotHandle;Lcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onScreenshotRequested()V
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamScreenshotsCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamScreenshotsCallback;

    invoke-interface {v0}, Lcom/codedisaster/steamworks/SteamScreenshotsCallback;->onScreenshotRequested()V

    return-void
.end method
