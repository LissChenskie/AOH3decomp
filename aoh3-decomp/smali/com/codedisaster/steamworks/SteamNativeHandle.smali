.class public abstract Lcom/codedisaster/steamworks/SteamNativeHandle;
.super Ljava/lang/Object;
.source "SteamNativeHandle.java"


# instance fields
.field handle:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/codedisaster/steamworks/SteamNativeHandle;->handle:J

    return-void
.end method

.method public static getNativeHandle(Lcom/codedisaster/steamworks/SteamNativeHandle;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/codedisaster/steamworks/SteamNativeHandle;",
            ">(TT;)J"
        }
    .end annotation

    iget-wide v0, p0, Lcom/codedisaster/steamworks/SteamNativeHandle;->handle:J

    return-wide v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/codedisaster/steamworks/SteamNativeHandle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/codedisaster/steamworks/SteamNativeHandle;->handle:J

    check-cast p1, Lcom/codedisaster/steamworks/SteamNativeHandle;

    iget-wide v4, p1, Lcom/codedisaster/steamworks/SteamNativeHandle;->handle:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/codedisaster/steamworks/SteamNativeHandle;->handle:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/codedisaster/steamworks/SteamNativeHandle;->handle:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
