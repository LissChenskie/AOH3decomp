.class final Lcom/codedisaster/steamworks/SteamUGCNative;
.super Ljava/lang/Object;
.source "SteamUGCNative.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native addExcludedTag(JLjava/lang/String;)Z
.end method

.method static native addItemKeyValueTag(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method static native addItemToFavorites(JIJ)J
.end method

.method static native addRequiredKeyValueTag(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method static native addRequiredTag(JLjava/lang/String;)Z
.end method

.method static native createCallback(Lcom/codedisaster/steamworks/SteamUGCCallbackAdapter;)J
.end method

.method static native createItem(JII)J
.end method

.method static native createQueryAllUGCRequest(IIIII)J
.end method

.method static native createQueryUGCDetailsRequest([JI)J
.end method

.method static native createQueryUserUGCRequest(IIIIIII)J
.end method

.method static native deleteItem(JJ)J
.end method

.method static native downloadItem(JZ)Z
.end method

.method static native getItemDownloadInfo(J[J)Z
.end method

.method static native getItemInstallInfo(JLcom/codedisaster/steamworks/SteamUGC$ItemInstallInfo;)Z
.end method

.method static native getItemState(J)I
.end method

.method static native getItemUpdateProgress(J[J)I
.end method

.method static native getNumSubscribedItems()I
.end method

.method static native getQueryUGCAdditionalPreview(JIILcom/codedisaster/steamworks/SteamUGC$ItemAdditionalPreview;)Z
.end method

.method static native getQueryUGCKeyValueTag(JII[Ljava/lang/String;)Z
.end method

.method static native getQueryUGCMetadata(JI)Ljava/lang/String;
.end method

.method static native getQueryUGCNumAdditionalPreviews(JI)I
.end method

.method static native getQueryUGCNumKeyValueTags(JI)I
.end method

.method static native getQueryUGCPreviewURL(JI)Ljava/lang/String;
.end method

.method static native getQueryUGCResult(JILcom/codedisaster/steamworks/SteamUGCDetails;)Z
.end method

.method static native getQueryUGCStatistic(JII)J
.end method

.method static native getSubscribedItems([JI)I
.end method

.method static native getUserItemVote(JJ)J
.end method

.method static native initWorkshopForGameServer(ILjava/lang/String;)Z
.end method

.method static native releaseQueryUserUGCRequest(J)Z
.end method

.method static native removeItemFromFavorites(JIJ)J
.end method

.method static native removeItemKeyValueTags(JLjava/lang/String;)Z
.end method

.method static native requestUGCDetails(JJI)J
.end method

.method static native sendQueryUGCRequest(JJ)J
.end method

.method static native setAllowCachedResponse(JI)Z
.end method

.method static native setCloudFileNameFilter(JLjava/lang/String;)Z
.end method

.method static native setItemContent(JLjava/lang/String;)Z
.end method

.method static native setItemDescription(JLjava/lang/String;)Z
.end method

.method static native setItemMetadata(JLjava/lang/String;)Z
.end method

.method static native setItemPreview(JLjava/lang/String;)Z
.end method

.method static native setItemTags(J[Ljava/lang/String;I)Z
.end method

.method static native setItemTitle(JLjava/lang/String;)Z
.end method

.method static native setItemUpdateLanguage(JLjava/lang/String;)Z
.end method

.method static native setItemVisibility(JI)Z
.end method

.method static native setLanguage(JLjava/lang/String;)Z
.end method

.method static native setMatchAnyTag(JZ)Z
.end method

.method static native setRankedByTrendDays(JI)Z
.end method

.method static native setReturnAdditionalPreviews(JZ)Z
.end method

.method static native setReturnChildren(JZ)Z
.end method

.method static native setReturnKeyValueTags(JZ)Z
.end method

.method static native setReturnLongDescription(JZ)Z
.end method

.method static native setReturnMetadata(JZ)Z
.end method

.method static native setReturnOnlyIDs(JZ)Z
.end method

.method static native setReturnPlaytimeStats(JI)Z
.end method

.method static native setReturnTotalOnly(JZ)Z
.end method

.method static native setSearchText(JLjava/lang/String;)Z
.end method

.method static native setUserItemVote(JJZ)J
.end method

.method static native startItemUpdate(IJ)J
.end method

.method static native startPlaytimeTracking(J[JI)J
.end method

.method static native stopPlaytimeTracking(J[JI)J
.end method

.method static native stopPlaytimeTrackingForAllItems(J)J
.end method

.method static native submitItemUpdate(JJLjava/lang/String;)J
.end method

.method static native subscribeItem(JJ)J
.end method

.method static native suspendDownloads(Z)V
.end method

.method static native unsubscribeItem(JJ)J
.end method
