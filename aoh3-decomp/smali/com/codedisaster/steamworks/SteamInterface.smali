.class abstract Lcom/codedisaster/steamworks/SteamInterface;
.super Ljava/lang/Object;
.source "SteamInterface.java"


# instance fields
.field protected callback:J


# direct methods
.method constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    return-void
.end method

.method constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/codedisaster/steamworks/SteamInterface;->callback:J

    return-void
.end method

.method protected static native deleteCallback(J)V
.end method


# virtual methods
.method checkArray([BI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    array-length v0, p1

    if-lt v0, p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/codedisaster/steamworks/SteamException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Array too small, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " found but "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " expected."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkBuffer(Ljava/nio/Buffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/Buffer;->isDirect()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/codedisaster/steamworks/SteamException;

    const-string v0, "Direct buffer required."

    invoke-direct {p1, v0}, Lcom/codedisaster/steamworks/SteamException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dispose()V
    .locals 2

    iget-wide v0, p0, Lcom/codedisaster/steamworks/SteamInterface;->callback:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;->deleteCallback(J)V

    return-void
.end method

.method setCallback(J)V
    .locals 0

    iput-wide p1, p0, Lcom/codedisaster/steamworks/SteamInterface;->callback:J

    return-void
.end method
