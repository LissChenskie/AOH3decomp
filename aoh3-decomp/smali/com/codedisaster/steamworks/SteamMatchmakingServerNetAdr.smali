.class public Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;
.super Ljava/lang/Object;
.source "SteamMatchmakingServerNetAdr.java"


# instance fields
.field connectionPort:S

.field ip:I

.field queryPort:S


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ISS)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->ip:I

    iput-short p2, p0, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->queryPort:S

    iput-short p3, p0, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->connectionPort:S

    return-void
.end method

.method private static toString(IS)Ljava/lang/String;
    .locals 3

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    and-int/lit16 p0, p0, 0xff

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    filled-new-array {v0, v1, v2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d.%d.%d.%d:%d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getConnectionAddressString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->ip:I

    iget-short v1, p0, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->connectionPort:S

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->toString(IS)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionPort()S
    .locals 1

    iget-short v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->connectionPort:S

    return v0
.end method

.method public getIP()I
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->ip:I

    return v0
.end method

.method public getQueryAddressString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->ip:I

    iget-short v1, p0, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->queryPort:S

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->toString(IS)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryPort()S
    .locals 1

    iget-short v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;->queryPort:S

    return v0
.end method
