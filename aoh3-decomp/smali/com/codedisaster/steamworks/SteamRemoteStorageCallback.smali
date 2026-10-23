.class public interface abstract Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;
.super Ljava/lang/Object;
.source "SteamRemoteStorageCallback.java"


# virtual methods
.method public abstract onDownloadUGCResult(Lcom/codedisaster/steamworks/SteamUGCHandle;Lcom/codedisaster/steamworks/SteamResult;)V
.end method

.method public abstract onFileReadAsyncComplete(Lcom/codedisaster/steamworks/SteamAPICall;Lcom/codedisaster/steamworks/SteamResult;II)V
.end method

.method public abstract onFileShareResult(Lcom/codedisaster/steamworks/SteamUGCHandle;Ljava/lang/String;Lcom/codedisaster/steamworks/SteamResult;)V
.end method

.method public abstract onFileWriteAsyncComplete(Lcom/codedisaster/steamworks/SteamResult;)V
.end method

.method public abstract onPublishFileResult(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
.end method

.method public abstract onPublishedFileDeleted(Lcom/codedisaster/steamworks/SteamPublishedFileID;I)V
.end method

.method public abstract onPublishedFileSubscribed(Lcom/codedisaster/steamworks/SteamPublishedFileID;I)V
.end method

.method public abstract onPublishedFileUnsubscribed(Lcom/codedisaster/steamworks/SteamPublishedFileID;I)V
.end method

.method public abstract onUpdatePublishedFileResult(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V
.end method
