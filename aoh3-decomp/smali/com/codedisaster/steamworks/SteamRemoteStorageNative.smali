.class final Lcom/codedisaster/steamworks/SteamRemoteStorageNative;
.super Ljava/lang/Object;
.source "SteamRemoteStorageNative.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native commitPublishedFileUpdate(JJ)J
.end method

.method static native createCallback(Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;)J
.end method

.method static native createPublishedFileUpdateRequest(J)J
.end method

.method static native fileDelete(Ljava/lang/String;)Z
.end method

.method static native fileExists(Ljava/lang/String;)Z
.end method

.method static native fileForget(Ljava/lang/String;)Z
.end method

.method static native filePersisted(Ljava/lang/String;)Z
.end method

.method static native fileRead(Ljava/lang/String;Ljava/nio/ByteBuffer;II)I
.end method

.method static native fileReadAsync(JLjava/lang/String;II)J
.end method

.method static native fileReadAsyncComplete(JLjava/nio/ByteBuffer;JI)Z
.end method

.method static native fileShare(JLjava/lang/String;)J
.end method

.method static native fileWrite(Ljava/lang/String;Ljava/nio/ByteBuffer;II)Z
.end method

.method static native fileWriteAsync(JLjava/lang/String;Ljava/nio/ByteBuffer;II)J
.end method

.method static native fileWriteStreamCancel(J)Z
.end method

.method static native fileWriteStreamClose(J)Z
.end method

.method static native fileWriteStreamOpen(Ljava/lang/String;)J
.end method

.method static native fileWriteStreamWriteChunk(JLjava/nio/ByteBuffer;II)Z
.end method

.method static native getCachedUGCCount()I
.end method

.method static native getCachedUGCHandle(I)J
.end method

.method static native getFileCount()I
.end method

.method static native getFileNameAndSize(I[I)Ljava/lang/String;
.end method

.method static native getFileSize(Ljava/lang/String;)I
.end method

.method static native getFileTimestamp(Ljava/lang/String;)J
.end method

.method static native getQuota([J[J)Z
.end method

.method static native getSyncPlatforms(Ljava/lang/String;)I
.end method

.method static native getUGCDownloadProgress(J[I[I)Z
.end method

.method static native isCloudEnabledForAccount()Z
.end method

.method static native isCloudEnabledForApp()Z
.end method

.method static native publishWorkshopFile(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I[Ljava/lang/String;II)J
.end method

.method static native setCloudEnabledForApp(Z)V
.end method

.method static native setSyncPlatforms(Ljava/lang/String;I)Z
.end method

.method static native ugcDownload(JJI)J
.end method

.method static native ugcRead(JLjava/nio/ByteBuffer;IIII)I
.end method

.method static native updatePublishedFileDescription(JLjava/lang/String;)Z
.end method

.method static native updatePublishedFileFile(JLjava/lang/String;)Z
.end method

.method static native updatePublishedFilePreviewFile(JLjava/lang/String;)Z
.end method

.method static native updatePublishedFileTags(J[Ljava/lang/String;I)Z
.end method

.method static native updatePublishedFileTitle(JLjava/lang/String;)Z
.end method

.method static native updatePublishedFileVisibility(JI)Z
.end method
