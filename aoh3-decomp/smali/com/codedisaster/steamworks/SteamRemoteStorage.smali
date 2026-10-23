.class public Lcom/codedisaster/steamworks/SteamRemoteStorage;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamRemoteStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;,
        Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;,
        Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;,
        Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;)V
    .locals 2

    new-instance v0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;-><init>(Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;)V

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->createCallback(Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    return-void
.end method


# virtual methods
.method public commitPublishedFileUpdate(Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 5

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamRemoteStorage;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;->handle:J

    invoke-static {v1, v2, v3, v4}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->commitPublishedFileUpdate(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public createPublishedFileUpdateRequest(Lcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->createPublishedFileUpdateRequest(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic dispose()V
    .locals 0

    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public fileDelete(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileDelete(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public fileExists(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileExists(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public fileForget(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileForget(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public filePersisted(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->filePersisted(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public fileRead(Ljava/lang/String;Ljava/nio/ByteBuffer;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorage;->checkBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileRead(Ljava/lang/String;Ljava/nio/ByteBuffer;II)I

    move-result p1

    return p1
.end method

.method public fileReadAsync(Ljava/lang/String;II)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamRemoteStorage;->callback:J

    invoke-static {v1, v2, p1, p2, p3}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileReadAsync(JLjava/lang/String;II)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public fileReadAsyncComplete(Lcom/codedisaster/steamworks/SteamAPICall;Ljava/nio/ByteBuffer;I)Z
    .locals 6

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamAPICall;->handle:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    int-to-long v3, p1

    move-object v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileReadAsyncComplete(JLjava/nio/ByteBuffer;JI)Z

    move-result p1

    return p1
.end method

.method public fileShare(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamRemoteStorage;->callback:J

    invoke-static {v1, v2, p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileShare(JLjava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public fileWrite(Ljava/lang/String;Ljava/nio/ByteBuffer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorage;->checkBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileWrite(Ljava/lang/String;Ljava/nio/ByteBuffer;II)Z

    move-result p1

    return p1
.end method

.method public fileWriteAsync(Ljava/lang/String;Ljava/nio/ByteBuffer;)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorage;->checkBuffer(Ljava/nio/Buffer;)V

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamRemoteStorage;->callback:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileWriteAsync(JLjava/lang/String;Ljava/nio/ByteBuffer;II)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public fileWriteStreamCancel(Lcom/codedisaster/steamworks/SteamUGCFileWriteStreamHandle;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCFileWriteStreamHandle;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileWriteStreamCancel(J)Z

    move-result p1

    return p1
.end method

.method public fileWriteStreamClose(Lcom/codedisaster/steamworks/SteamUGCFileWriteStreamHandle;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCFileWriteStreamHandle;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileWriteStreamClose(J)Z

    move-result p1

    return p1
.end method

.method public fileWriteStreamOpen(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamUGCFileWriteStreamHandle;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamUGCFileWriteStreamHandle;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileWriteStreamOpen(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGCFileWriteStreamHandle;-><init>(J)V

    return-object v0
.end method

.method public fileWriteStreamWriteChunk(Lcom/codedisaster/steamworks/SteamUGCFileWriteStreamHandle;Ljava/nio/ByteBuffer;)Z
    .locals 3

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCFileWriteStreamHandle;->handle:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, p2, p1, v2}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->fileWriteStreamWriteChunk(JLjava/nio/ByteBuffer;II)Z

    move-result p1

    return p1
.end method

.method public getCachedUGCCount()I
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->getCachedUGCCount()I

    move-result v0

    return v0
.end method

.method public getCachedUGCHandle(I)Lcom/codedisaster/steamworks/SteamUGCHandle;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamUGCHandle;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->getCachedUGCHandle(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamUGCHandle;-><init>(J)V

    return-object v0
.end method

.method public getFileCount()I
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->getFileCount()I

    move-result v0

    return v0
.end method

.method public getFileNameAndSize(I[I)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->getFileNameAndSize(I[I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getFileSize(Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->getFileSize(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getFileTimestamp(Ljava/lang/String;)J
    .locals 2

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->getFileTimestamp(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getQuota([J[J)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->getQuota([J[J)Z

    move-result p1

    return p1
.end method

.method public getSyncPlatforms(Ljava/lang/String;)[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->getSyncPlatforms(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->byMask(I)[Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;

    move-result-object p1

    return-object p1
.end method

.method public getUGCDownloadProgress(Lcom/codedisaster/steamworks/SteamUGCHandle;[I[I)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCHandle;->handle:J

    invoke-static {v0, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->getUGCDownloadProgress(J[I[I)Z

    move-result p1

    return p1
.end method

.method public isCloudEnabledForAccount()Z
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->isCloudEnabledForAccount()Z

    move-result v0

    return v0
.end method

.method public isCloudEnabledForApp()Z
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->isCloudEnabledForApp()Z

    move-result v0

    return v0
.end method

.method public publishWorkshopFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;[Ljava/lang/String;Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 13

    move-object/from16 v8, p7

    new-instance v11, Lcom/codedisaster/steamworks/SteamAPICall;

    move-object v12, p0

    iget-wide v0, v12, Lcom/codedisaster/steamworks/SteamRemoteStorage;->callback:J

    invoke-virtual/range {p6 .. p6}, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;->ordinal()I

    move-result v7

    if-eqz v8, :cond_0

    array-length v2, v8

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v9, v2

    invoke-virtual/range {p8 .. p8}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->ordinal()I

    move-result v10

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v10}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->publishWorkshopFile(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[Ljava/lang/String;II)J

    move-result-wide v0

    invoke-direct {v11, v0, v1}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v11
.end method

.method public setCloudEnabledForApp(Z)V
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->setCloudEnabledForApp(Z)V

    return-void
.end method

.method public setSyncPlatforms(Ljava/lang/String;Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;)Z
    .locals 0

    invoke-static {p2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;->access$000(Lcom/codedisaster/steamworks/SteamRemoteStorage$RemoteStoragePlatform;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->setSyncPlatforms(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public ugcDownload(Lcom/codedisaster/steamworks/SteamUGCHandle;I)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 5

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamRemoteStorage;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamUGCHandle;->handle:J

    invoke-static {v1, v2, v3, v4, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->ugcDownload(JJI)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public ugcRead(Lcom/codedisaster/steamworks/SteamUGCHandle;Ljava/nio/ByteBuffer;IILcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;)I
    .locals 7

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCHandle;->handle:J

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p5}, Lcom/codedisaster/steamworks/SteamRemoteStorage$UGCReadAction;->ordinal()I

    move-result v6

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->ugcRead(JLjava/nio/ByteBuffer;IIII)I

    move-result p1

    return p1
.end method

.method public updatePublishedFileDescription(Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->updatePublishedFileDescription(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updatePublishedFileFile(Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->updatePublishedFileFile(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updatePublishedFilePreviewFile(Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->updatePublishedFilePreviewFile(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updatePublishedFileTags(Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;[Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;->handle:J

    if-eqz p2, :cond_0

    array-length p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, v1, p2, p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->updatePublishedFileTags(J[Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public updatePublishedFileTitle(Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->updatePublishedFileTitle(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public updatePublishedFileVisibility(Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamPublishedFileUpdateHandle;->handle:J

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageNative;->updatePublishedFileVisibility(JI)Z

    move-result p1

    return p1
.end method
