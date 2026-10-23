.class public Lcom/codedisaster/steamworks/SteamUGCDetails;
.super Ljava/lang/Object;
.source "SteamUGCDetails.java"


# instance fields
.field description:Ljava/lang/String;

.field fileHandle:J

.field fileName:Ljava/lang/String;

.field fileSize:I

.field fileType:I

.field ownerID:J

.field previewFileHandle:J

.field previewFileSize:I

.field publishedFileID:J

.field result:I

.field tags:Ljava/lang/String;

.field tagsTruncated:Z

.field timeCreated:I

.field timeUpdated:I

.field title:Ljava/lang/String;

.field url:Ljava/lang/String;

.field votesDown:I

.field votesUp:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public areTagsTruncated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->tagsTruncated:Z

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFileHandle()Lcom/codedisaster/steamworks/SteamUGCHandle;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamUGCHandle;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->fileHandle:J

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGCHandle;-><init>(J)V

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()I
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->fileSize:I

    return v0
.end method

.method public getFileType()Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->fileType:I

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerID()Lcom/codedisaster/steamworks/SteamID;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamID;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->ownerID:J

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamID;-><init>(J)V

    return-object v0
.end method

.method public getPreviewFileHandle()Lcom/codedisaster/steamworks/SteamUGCHandle;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamUGCHandle;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->previewFileHandle:J

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGCHandle;-><init>(J)V

    return-object v0
.end method

.method public getPreviewFileSize()I
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->previewFileSize:I

    return v0
.end method

.method public getPublishedFileID()Lcom/codedisaster/steamworks/SteamPublishedFileID;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->publishedFileID:J

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    return-object v0
.end method

.method public getResult()Lcom/codedisaster/steamworks/SteamResult;
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->result:I

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v0

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeCreated()I
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->timeCreated:I

    return v0
.end method

.method public getTimeUpdated()I
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->timeUpdated:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVotesDown()I
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->votesDown:I

    return v0
.end method

.method public getVotesUp()I
    .locals 1

    iget v0, p0, Lcom/codedisaster/steamworks/SteamUGCDetails;->votesUp:I

    return v0
.end method
