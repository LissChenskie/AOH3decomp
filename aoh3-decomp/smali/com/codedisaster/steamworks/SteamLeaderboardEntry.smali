.class public Lcom/codedisaster/steamworks/SteamLeaderboardEntry;
.super Ljava/lang/Object;
.source "SteamLeaderboardEntry.java"


# instance fields
.field details:I

.field globalRank:I

.field score:I

.field steamIDUser:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGlobalRank()I
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamLeaderboardEntry;->globalRank:I

    return v0
.end method

.method public getNumDetails()I
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamLeaderboardEntry;->details:I

    return v0
.end method

.method public getScore()I
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamLeaderboardEntry;->score:I

    return v0
.end method

.method public getSteamIDUser()Lcom/codedisaster/steamworks/SteamID;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamLeaderboardEntry;->steamIDUser:J

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method
