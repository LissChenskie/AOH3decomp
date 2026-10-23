.class public Lcom/codedisaster/steamworks/SteamFriends$FriendGameInfo;
.super Ljava/lang/Object;
.source "SteamFriends.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendGameInfo"
.end annotation


# instance fields
.field private gameID:J

.field private gameIP:I

.field private gamePort:S

.field private queryPort:S

.field private steamIDLobby:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameID()J
    .locals 2

    iget-wide v0, p0, Lcom/codedisaster/steamworks/SteamFriends$FriendGameInfo;->gameID:J

    return-wide v0
.end method

.method public getGameIP()I
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamFriends$FriendGameInfo;->gameIP:I

    return v0
.end method

.method public getGamePort()S
    .locals 1

    iget-short v0, p0, Lcom/codedisaster/steamworks/SteamFriends$FriendGameInfo;->gamePort:S

    return v0
.end method

.method public getQueryPort()S
    .locals 1

    iget-short v0, p0, Lcom/codedisaster/steamworks/SteamFriends$FriendGameInfo;->queryPort:S

    return v0
.end method

.method public getSteamIDLobby()Lcom/codedisaster/steamworks/SteamID;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamFriends$FriendGameInfo;->steamIDLobby:J

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method
