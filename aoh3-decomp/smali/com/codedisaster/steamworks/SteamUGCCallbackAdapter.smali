.class Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;
.super Lcom/codedisaster/steamworks/SteamCallbackAdapter;
.source "SteamUGCCallbackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codedisaster/steamworks/SteamCallbackAdapter<",
        "Lcom/codedisaster/steamworks/SteamUGCCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/codedisaster/steamworks/SteamUGCCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/codedisaster/steamworks/SteamCallbackAdapter;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onCreateItem(JZI)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGCCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-static {p4}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p1

    invoke-interface {v0, v1, p3, p1}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onCreateItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onDeleteItem(JI)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGCCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onDeleteItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onDownloadItemResult(IJI)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGCCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p2, p3}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-static {p4}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p2

    invoke-interface {v0, p1, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onDownloadItemResult(ILcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onGetUserItemVote(JZZZI)V
    .locals 7

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/codedisaster/steamworks/SteamUGCCallback;

    new-instance v2, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v2, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-static {p6}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v6

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v1 .. v6}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onGetUserItemVote(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZZZLcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onRequestUGCDetails(JILjava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZIIJII)V
    .locals 4

    new-instance v0, Lcom/codedisaster/steamworks/SteamUGCDetails;

    invoke-direct {v0}, Lcom/codedisaster/steamworks/SteamUGCDetails;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->publishedFileID:J

    move v1, p3

    iput v1, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->result:I

    move-object v2, p4

    iput-object v2, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->title:Ljava/lang/String;

    move-object v2, p5

    iput-object v2, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->description:Ljava/lang/String;

    move-wide v2, p6

    iput-wide v2, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->fileHandle:J

    move-wide v2, p8

    iput-wide v2, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->previewFileHandle:J

    move-object v2, p10

    iput-object v2, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->fileName:Ljava/lang/String;

    move/from16 v2, p12

    iput v2, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->votesUp:I

    move/from16 v2, p13

    iput v2, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->votesDown:I

    move-wide/from16 v2, p14

    iput-wide v2, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->ownerID:J

    move/from16 v2, p16

    iput v2, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->timeCreated:I

    move/from16 v2, p17

    iput v2, v0, Lcom/codedisaster/steamworks/SteamUGCDetails;->timeUpdated:I

    move-object v2, p0

    iget-object v3, v2, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v3, Lcom/codedisaster/steamworks/SteamUGCCallback;

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onRequestUGCDetails(Lcom/codedisaster/steamworks/SteamUGCDetails;Lcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onSetUserItemVote(JZI)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGCCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-static {p4}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p1

    invoke-interface {v0, v1, p3, p1}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onSetUserItemVote(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onStartPlaytimeTracking(I)V
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGCCallback;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onStartPlaytimeTracking(Lcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onStopPlaytimeTracking(I)V
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGCCallback;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onStopPlaytimeTracking(Lcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onStopPlaytimeTrackingForAllItems(I)V
    .locals 1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGCCallback;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onStopPlaytimeTrackingForAllItems(Lcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onSubmitItemUpdate(JZI)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGCCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-static {p4}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p1

    invoke-interface {v0, v1, p3, p1}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onSubmitItemUpdate(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onSubscribeItem(JI)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGCCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onSubscribeItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onUGCQueryCompleted(JIIZI)V
    .locals 7

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/codedisaster/steamworks/SteamUGCCallback;

    new-instance v2, Lcom/codedisaster/steamworks/SteamUGCQuery;

    invoke-direct {v2, p1, p2}, Lcom/codedisaster/steamworks/SteamUGCQuery;-><init>(J)V

    invoke-static {p6}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object v6

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v1 .. v6}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onUGCQueryCompleted(Lcom/codedisaster/steamworks/SteamUGCQuery;IIZLcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onUnsubscribeItem(JI)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGCCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onUnsubscribeItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method

.method onUserFavoriteItemsListChanged(JZI)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/codedisaster/steamworks/SteamUGCCallback;

    new-instance v1, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    invoke-direct {v1, p1, p2}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    invoke-static {p4}, Lcom/codedisaster/steamworks/SteamResult;->byValue(I)Lcom/codedisaster/steamworks/SteamResult;

    move-result-object p1

    invoke-interface {v0, v1, p3, p1}, Lcom/codedisaster/steamworks/SteamUGCCallback;->onUserFavoriteItemsListChanged(Lcom/codedisaster/steamworks/SteamPublishedFileID;ZLcom/codedisaster/steamworks/SteamResult;)V

    return-void
.end method
