.class Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;
.super Lcom/codedisaster/steamworks/SteamCallbackAdapter;
.source "SteamRemoteStorageCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codedisaster/steamworks/SteamCallbackAdapter<",
        "Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/codedisaster/steamworks/SteamCallbackAdapter;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onDownloadUGCResult(JI)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamUGCHandle;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamUGCHandle;-><init>(J)V

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;->onDownloadUGCResult(Lcom/codedisaster/steamworks/SteamUGCHandle;Lcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onFileReadAsyncComplete(JIII)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamAPICall;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p1

    invoke-interface {v0, v1, p1, p4, p5}, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;->onFileReadAsyncComplete(Lcom/codedisaster/steamworks/SteamAPICall;Lcom/codedisaster/steamworks/SteamResult;II)V

    return-void
.end method

.method onFileShareResult(JLjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamUGCHandle;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamUGCHandle;-><init>(J)V

    invoke-static {p4}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p1

    invoke-interface {v0, v1, p3, p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;->onFileShareResult(Lcom/codedisaster/steamworks/SteamUGCHandle;Ljava/lang/String;Lcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onFileWriteAsyncComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;->onFileWriteAsyncComplete(Lcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onPublishFileResult(JZI)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-static {p4}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p1

    invoke-interface {v0, v1, p3, p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;->onPublishFileResult(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onPublishedFileDeleted(JI)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-interface {v0, v1, p3}, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;->onPublishedFileDeleted(Lcom/codedisaster/steamworks/SteamPublishedFileID;I)V

    return-void
.end method

.method onPublishedFileSubscribed(JI)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-interface {v0, v1, p3}, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;->onPublishedFileSubscribed(Lcom/codedisaster/steamworks/SteamPublishedFileID;I)V

    return-void
.end method

.method onPublishedFileUnsubscribed(JI)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-interface {v0, v1, p3}, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;->onPublishedFileUnsubscribed(Lcom/codedisaster/steamworks/SteamPublishedFileID;I)V

    return-void
.end method

.method onUpdatePublishedFileResult(JZI)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-static {p4}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p1

    invoke-interface {v0, v1, p3, p1}, Lcom/codedisaster/steamworks/SteamRemoteStorageCallback;->onUpdatePublishedFileResult(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method
