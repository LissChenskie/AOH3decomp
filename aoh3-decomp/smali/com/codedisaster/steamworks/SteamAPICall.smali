.class public Lcom/codedisaster/steamworks/SteamAPICall;
.super Lcom/codedisaster/steamworks/SteamNativeHandle;
.source "SteamAPICall.java"


# direct methods
.method constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/codedisaster/steamworks/SteamNativeHandle;-><init>(J)V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 4

    iget-wide v0, p0, Lcom/codedisaster/steamworks/SteamAPICall;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
