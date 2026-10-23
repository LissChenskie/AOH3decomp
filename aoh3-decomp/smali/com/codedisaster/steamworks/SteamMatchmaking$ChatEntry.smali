.class public Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntry;
.super Ljava/lang/Object;
.source "SteamMatchmaking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamMatchmaking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChatEntry"
.end annotation


# instance fields
.field private chatEntryType:I

.field private steamIDUser:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChatEntryType()Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntry;->chatEntryType:I

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;->byValue(I)Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntryType;

    move-result-object v0

    return-object v0
.end method

.method public getSteamIDUser()Lcom/codedisaster/steamworks/SteamID;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamMatchmaking$ChatEntry;->steamIDUser:J

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method
