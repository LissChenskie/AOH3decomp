.class public abstract Lcom/codedisaster/steamworks/SteamNativeIntHandle;
.super Ljava/lang/Object;
.source "SteamNativeIntHandle.java"


# instance fields
.field handle:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/codedisaster/steamworks/SteamNativeIntHandle;->handle:I

    return-void
.end method

.method public static getNativeHandle(Lcom/codedisaster/steamworks/SteamNativeIntHandle;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/codedisaster/steamworks/SteamNativeIntHandle;",
            ">(TT;)I"
        }
    .end annotation

    iget p0, p0, Lcom/codedisaster/steamworks/SteamNativeIntHandle;->handle:I

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/codedisaster/steamworks/SteamNativeIntHandle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/codedisaster/steamworks/SteamNativeIntHandle;->handle:I

    check-cast p1, Lcom/codedisaster/steamworks/SteamNativeIntHandle;

    iget p1, p1, Lcom/codedisaster/steamworks/SteamNativeIntHandle;->handle:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamNativeIntHandle;->handle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamNativeIntHandle;->handle:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
