.class public Lcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;
.super Ljava/lang/Object;
.source "SteamMatchmakingGameServerItem.java"


# instance fields
.field appID:I

.field botPlayers:I

.field doNotRefresh:Z

.field gameDescription:Ljava/lang/String;

.field gameDir:Ljava/lang/String;

.field gameTags:Ljava/lang/String;

.field hadSuccessfulResponse:Z

.field map:Ljava/lang/String;

.field maxPlayers:I

.field netAdr:Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;

.field password:Z

.field ping:I

.field players:I

.field secure:Z

.field serverName:Ljava/lang/String;

.field serverVersion:I

.field steamID:J

.field timeLastPlayed:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;

    invoke-direct {v0}, Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;-><init>()V

    iput-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;->netAdr:Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;

    return-void
.end method


# virtual methods
.method public doNotRefresh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;->doNotRefresh:Z

    return v0
.end method

.method public getAppID()I
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;->appID:I

    return v0
.end method

.method public getBotPlayers()I
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;->botPlayers:I

    return v0
.end method

.method public getGameDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;->gameDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getGameDir()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;->gameDir:Ljava/lang/String;

    return-object v0
.end method

.method public getGameTags()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;->gameTags:Ljava/lang/String;

    return-object v0
.end method

.method public getMap()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;->map:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxPlayers()I
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;->maxPlayers:I

    return v0
.end method

.method public getNetAdr()Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;->netAdr:Lcom/codedisaster/steamworks/SteamMatchmakingServerNetAdr;

    return-object v0
.end method

.method public getPing()I
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;->ping:I

    return v0
.end method

.method public getPlayers()I
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;->players:I

    return v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerVersion()I
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;->serverVersion:I

    return v0
.end method

.method public getSteamID()Lcom/codedisaster/steamworks/SteamID;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;->steamID:J

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getTimeLastPlayed()I
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;->timeLastPlayed:I

    return v0
.end method

.method public hadSuccessfulResponse()Z
    .locals 1

    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;->hadSuccessfulResponse:Z

    return v0
.end method

.method public hasPassword()Z
    .locals 1

    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;->password:Z

    return v0
.end method

.method public isSecure()Z
    .locals 1

    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamMatchmakingGameServerItem;->secure:Z

    return v0
.end method
