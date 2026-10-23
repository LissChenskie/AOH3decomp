.class public Lcom/codedisaster/steamworks/SteamUGC;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamUGC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codedisaster/steamworks/SteamUGC$ItemAdditionalPreview;,
        Lcom/codedisaster/steamworks/SteamUGC$ItemDownloadInfo;,
        Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;,
        Lcom/codedisaster/steamworks/SteamUGC$ItemPreviewType;,
        Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;,
        Lcom/codedisaster/steamworks/SteamUGC$ItemState;,
        Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;,
        Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;,
        Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;,
        Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;,
        Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;,
        Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/codedisaster/steamworks/SteamUGCCallback;)V
    .locals 2

    new-instance v0, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;-><init>(Lcom/codedisaster/steamworks/SteamUGCCallback;)V

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamUGCNative;->createCallback(Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    return-void
.end method


# virtual methods
.method public addExcludedTag(Lcom/codedisaster/steamworks/SteamUGCQuery;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->addExcludedTag(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public addItemKeyValueTag(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    invoke-static {v0, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamUGCNative;->addItemKeyValueTag(JLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public addItemToFavorites(ILcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 5

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    iget-wide v3, p2, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v1, v2, p1, v3, v4}, Lcom/codedisaster/steamworks/SteamUGCNative;->addItemToFavorites(JIJ)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public addRequiredKeyValueTag(Lcom/codedisaster/steamworks/SteamUGCQuery;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamUGCNative;->addRequiredKeyValueTag(JLjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public addRequiredTag(Lcom/codedisaster/steamworks/SteamUGCQuery;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->addRequiredTag(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public createItem(ILcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$WorkshopFileType;->ordinal()I

    move-result p2

    invoke-static {v1, v2, p1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->createItem(JII)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public createQueryAllUGCRequest(Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;III)Lcom/codedisaster/steamworks/SteamUGCQuery;
    .locals 1

    new-instance v0, Lcom/codedisaster/steamworks/SteamUGCQuery;

    invoke-virtual {p1}, Lcom/codedisaster/steamworks/SteamUGC$UGCQueryType;->ordinal()I

    move-result p1

    invoke-static {p2}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->access$000(Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;)I

    move-result p2

    invoke-static {p1, p2, p3, p4, p5}, Lcom/codedisaster/steamworks/SteamUGCNative;->createQueryAllUGCRequest(IIIII)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamUGCQuery;-><init>(J)V

    return-object v0
.end method

.method public createQueryUGCDetailsRequest(Lcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamUGCQuery;
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [J

    const/4 v2, 0x0

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    aput-wide v3, v1, v2

    new-instance p1, Lcom/codedisaster/steamworks/SteamUGCQuery;

    invoke-static {v1, v0}, Lcom/codedisaster/steamworks/SteamUGCNative;->createQueryUGCDetailsRequest([JI)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/codedisaster/steamworks/SteamUGCQuery;-><init>(J)V

    return-object p1
.end method

.method public createQueryUGCDetailsRequest(Ljava/util/Collection;)Lcom/codedisaster/steamworks/SteamUGCQuery;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/codedisaster/steamworks/SteamPublishedFileID;",
            ">;)",
            "Lcom/codedisaster/steamworks/SteamUGCQuery;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v1, v0, [J

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    add-int/lit8 v4, v2, 0x1

    iget-wide v5, v3, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    aput-wide v5, v1, v2

    move v2, v4

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/codedisaster/steamworks/SteamUGCQuery;

    invoke-static {v1, v0}, Lcom/codedisaster/steamworks/SteamUGCNative;->createQueryUGCDetailsRequest([JI)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/codedisaster/steamworks/SteamUGCQuery;-><init>(J)V

    return-object p1
.end method

.method public createQueryUserUGCRequest(ILcom/codedisaster/steamworks/SteamUGC$UserUGCList;Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;III)Lcom/codedisaster/steamworks/SteamUGCQuery;
    .locals 8

    new-instance v0, Lcom/codedisaster/steamworks/SteamUGCQuery;

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCList;->ordinal()I

    move-result v2

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;->access$000(Lcom/codedisaster/steamworks/SteamUGC$MatchingUGCType;)I

    move-result v3

    invoke-virtual {p4}, Lcom/codedisaster/steamworks/SteamUGC$UserUGCListSortOrder;->ordinal()I

    move-result v4

    move v1, p1

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-static/range {v1 .. v7}, Lcom/codedisaster/steamworks/SteamUGCNative;->createQueryUserUGCRequest(IIIIIII)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamUGCQuery;-><init>(J)V

    return-object v0
.end method

.method public deleteItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 5

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v1, v2, v3, v4}, Lcom/codedisaster/steamworks/SteamUGCNative;->deleteItem(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic dispose()V
    .locals 0

    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public downloadItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;Z)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->downloadItem(JZ)Z

    move-result p1

    return p1
.end method

.method public getItemDownloadInfo(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamUGC$ItemDownloadInfo;)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [J

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v1, v2, v0}, Lcom/codedisaster/steamworks/SteamUGCNative;->getItemDownloadInfo(J[J)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    aget-wide v1, v0, v1

    iput-wide v1, p2, Lcom/codedisaster/steamworks/SteamUGC$ItemDownloadInfo;->bytesDownloaded:J

    const/4 p1, 0x1

    aget-wide v1, v0, p1

    iput-wide v1, p2, Lcom/codedisaster/steamworks/SteamUGC$ItemDownloadInfo;->bytesTotal:J

    return p1

    :cond_0
    return v1
.end method

.method public getItemInstallInfo(Lcom/codedisaster/steamworks/SteamPublishedFileID;Lcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->getItemInstallInfo(JLcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;)Z

    move-result p1

    return p1
.end method

.method public getItemState(Lcom/codedisaster/steamworks/SteamPublishedFileID;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codedisaster/steamworks/SteamPublishedFileID;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/codedisaster/steamworks/SteamUGC$ItemState;",
            ">;"
        }
    .end annotation

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamUGCNative;->getItemState(J)I

    move-result p1

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUGC$ItemState;->fromBits(I)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getItemUpdateProgress(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;)Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [J

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    invoke-static {v1, v2, v0}, Lcom/codedisaster/steamworks/SteamUGCNative;->getItemUpdateProgress(J[J)I

    move-result p1

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateStatus;

    move-result-object p1

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iput-wide v1, p2, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;->bytesProcessed:J

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    iput-wide v1, p2, Lcom/codedisaster/steamworks/SteamUGC$ItemUpdateInfo;->bytesTotal:J

    return-object p1
.end method

.method public getNumSubscribedItems()I
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUGCNative;->getNumSubscribedItems()I

    move-result v0

    return v0
.end method

.method public getQueryUGCAdditionalPreview(Lcom/codedisaster/steamworks/SteamUGCQuery;IILcom/codedisaster/steamworks/SteamUGC$ItemAdditionalPreview;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2, p3, p4}, Lcom/codedisaster/steamworks/SteamUGCNative;->getQueryUGCAdditionalPreview(JIILcom/codedisaster/steamworks/SteamUGC$ItemAdditionalPreview;)Z

    move-result p1

    return p1
.end method

.method public getQueryUGCKeyValueTag(Lcom/codedisaster/steamworks/SteamUGCQuery;II[Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2, p3, p4}, Lcom/codedisaster/steamworks/SteamUGCNative;->getQueryUGCKeyValueTag(JII[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getQueryUGCMetadata(Lcom/codedisaster/steamworks/SteamUGCQuery;I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->getQueryUGCMetadata(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getQueryUGCNumAdditionalPreviews(Lcom/codedisaster/steamworks/SteamUGCQuery;I)I
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->getQueryUGCNumAdditionalPreviews(JI)I

    move-result p1

    return p1
.end method

.method public getQueryUGCNumKeyValueTags(Lcom/codedisaster/steamworks/SteamUGCQuery;I)I
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->getQueryUGCNumKeyValueTags(JI)I

    move-result p1

    return p1
.end method

.method public getQueryUGCPreviewURL(Lcom/codedisaster/steamworks/SteamUGCQuery;I)Ljava/lang/String;
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->getQueryUGCPreviewURL(JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getQueryUGCResult(Lcom/codedisaster/steamworks/SteamUGCQuery;ILcom/codedisaster/steamworks/SteamUGCDetails;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamUGCNative;->getQueryUGCResult(JILcom/codedisaster/steamworks/SteamUGCDetails;)Z

    move-result p1

    return p1
.end method

.method public getQueryUGCStatistic(Lcom/codedisaster/steamworks/SteamUGCQuery;ILcom/codedisaster/steamworks/SteamUGC$ItemStatistic;)J
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-virtual {p3}, Lcom/codedisaster/steamworks/SteamUGC$ItemStatistic;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p2, p1}, Lcom/codedisaster/steamworks/SteamUGCNative;->getQueryUGCStatistic(JII)J

    move-result-wide p1

    return-wide p1
.end method

.method public getSubscribedItems([Lcom/codedisaster/steamworks/SteamPublishedFileID;)I
    .locals 6

    array-length v0, p1

    new-array v0, v0, [J

    array-length v1, p1

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamUGCNative;->getSubscribedItems([JI)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    new-instance v3, Lcom/codedisaster/steamworks/SteamPublishedFileID;

    aget-wide v4, v0, v2

    invoke-direct {v3, v4, v5}, Lcom/codedisaster/steamworks/SteamPublishedFileID;-><init>(J)V

    aput-object v3, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getUserItemVote(Lcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 5

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v1, v2, v3, v4}, Lcom/codedisaster/steamworks/SteamUGCNative;->getUserItemVote(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public initWorkshopForGameServer(ILjava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->initWorkshopForGameServer(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public releaseQueryUserUGCRequest(Lcom/codedisaster/steamworks/SteamUGCQuery;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamUGCNative;->releaseQueryUserUGCRequest(J)Z

    move-result p1

    return p1
.end method

.method public removeItemFromFavorites(ILcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 5

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    iget-wide v3, p2, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v1, v2, p1, v3, v4}, Lcom/codedisaster/steamworks/SteamUGCNative;->removeItemFromFavorites(JIJ)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public removeItemKeyValueTags(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->removeItemKeyValueTags(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public requestUGCDetails(Lcom/codedisaster/steamworks/SteamPublishedFileID;I)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v1, v2, v3, v4, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->requestUGCDetails(JJI)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public sendQueryUGCRequest(Lcom/codedisaster/steamworks/SteamUGCQuery;)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 5

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v1, v2, v3, v4}, Lcom/codedisaster/steamworks/SteamUGCNative;->sendQueryUGCRequest(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public setAllowCachedResponse(Lcom/codedisaster/steamworks/SteamUGCQuery;I)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setAllowCachedResponse(JI)Z

    move-result p1

    return p1
.end method

.method public setCloudFileNameFilter(Lcom/codedisaster/steamworks/SteamUGCQuery;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setCloudFileNameFilter(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setItemContent(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setItemContent(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setItemDescription(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setItemDescription(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setItemMetadata(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setItemMetadata(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setItemPreview(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setItemPreview(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setItemTags(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;[Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    array-length p1, p2

    invoke-static {v0, v1, p2, p1}, Lcom/codedisaster/steamworks/SteamUGCNative;->setItemTags(J[Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public setItemTitle(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setItemTitle(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setItemUpdateLanguage(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setItemUpdateLanguage(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setItemVisibility(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamRemoteStorage$PublishedFileVisibility;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/codedisaster/steamworks/SteamUGCNative;->setItemVisibility(JI)Z

    move-result p1

    return p1
.end method

.method public setLanguage(Lcom/codedisaster/steamworks/SteamUGCQuery;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setLanguage(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setMatchAnyTag(Lcom/codedisaster/steamworks/SteamUGCQuery;Z)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setMatchAnyTag(JZ)Z

    move-result p1

    return p1
.end method

.method public setRankedByTrendDays(Lcom/codedisaster/steamworks/SteamUGCQuery;I)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setRankedByTrendDays(JI)Z

    move-result p1

    return p1
.end method

.method public setReturnAdditionalPreviews(Lcom/codedisaster/steamworks/SteamUGCQuery;Z)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setReturnAdditionalPreviews(JZ)Z

    move-result p1

    return p1
.end method

.method public setReturnChildren(Lcom/codedisaster/steamworks/SteamUGCQuery;Z)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setReturnChildren(JZ)Z

    move-result p1

    return p1
.end method

.method public setReturnKeyValueTags(Lcom/codedisaster/steamworks/SteamUGCQuery;Z)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setReturnKeyValueTags(JZ)Z

    move-result p1

    return p1
.end method

.method public setReturnLongDescription(Lcom/codedisaster/steamworks/SteamUGCQuery;Z)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setReturnLongDescription(JZ)Z

    move-result p1

    return p1
.end method

.method public setReturnMetadata(Lcom/codedisaster/steamworks/SteamUGCQuery;Z)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setReturnMetadata(JZ)Z

    move-result p1

    return p1
.end method

.method public setReturnOnlyIDs(Lcom/codedisaster/steamworks/SteamUGCQuery;Z)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setReturnOnlyIDs(JZ)Z

    move-result p1

    return p1
.end method

.method public setReturnPlaytimeStats(Lcom/codedisaster/steamworks/SteamUGCQuery;I)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setReturnPlaytimeStats(JI)Z

    move-result p1

    return p1
.end method

.method public setReturnTotalOnly(Lcom/codedisaster/steamworks/SteamUGCQuery;Z)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setReturnTotalOnly(JZ)Z

    move-result p1

    return p1
.end method

.method public setSearchText(Lcom/codedisaster/steamworks/SteamUGCQuery;Ljava/lang/String;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamUGCQuery;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setSearchText(JLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setUserItemVote(Lcom/codedisaster/steamworks/SteamPublishedFileID;Z)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 5

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v1, v2, v3, v4, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->setUserItemVote(JJZ)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public startItemUpdate(ILcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;

    iget-wide v1, p2, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {p1, v1, v2}, Lcom/codedisaster/steamworks/SteamUGCNative;->startItemUpdate(IJ)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;-><init>(J)V

    return-object v0
.end method

.method public startPlaytimeTracking([Lcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 5

    array-length v0, p1

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget-wide v3, v3, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v2, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    invoke-static {v2, v3, v1, v0}, Lcom/codedisaster/steamworks/SteamUGCNative;->startPlaytimeTracking(J[JI)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object p1
.end method

.method public stopPlaytimeTracking([Lcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 5

    array-length v0, p1

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget-wide v3, v3, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v2, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    invoke-static {v2, v3, v1, v0}, Lcom/codedisaster/steamworks/SteamUGCNative;->stopPlaytimeTracking(J[JI)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object p1
.end method

.method public stopPlaytimeTrackingForAllItems()Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    invoke-static {v1, v2}, Lcom/codedisaster/steamworks/SteamUGCNative;->stopPlaytimeTrackingForAllItems(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public submitItemUpdate(Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 5

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamUGCUpdateHandle;->handle:J

    invoke-static {v1, v2, v3, v4, p2}, Lcom/codedisaster/steamworks/SteamUGCNative;->submitItemUpdate(JJLjava/lang/String;)J

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public subscribeItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 5

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v1, v2, v3, v4}, Lcom/codedisaster/steamworks/SteamUGCNative;->subscribeItem(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method

.method public suspendDownloads(Z)V
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUGCNative;->suspendDownloads(Z)V

    return-void
.end method

.method public unsubscribeItem(Lcom/codedisaster/steamworks/SteamPublishedFileID;)Lcom/codedisaster/steamworks/SteamAPICall;
    .locals 5

    new-instance v0, Lcom/codedisaster/steamworks/SteamAPICall;

    iget-wide v1, p0, Lcom/codedisaster/steamworks/SteamUGC;->callback:J

    iget-wide v3, p1, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {v1, v2, v3, v4}, Lcom/codedisaster/steamworks/SteamUGCNative;->unsubscribeItem(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamAPICall;-><init>(J)V

    return-object v0
.end method
