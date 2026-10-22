.class public Lcom/codedisaster/steamworks/SteamUGC$ItemDownloadInfo;
.super Ljava/lang/Object;
.source "SteamUGC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codedisaster/steamworks/SteamUGC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemDownloadInfo"
.end annotation


# instance fields
.field bytesDownloaded:J

.field bytesTotal:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytesDownloaded()J
    .locals 2

    iget-wide v0, p0, Lcom/codedisaster/steamworks/SteamUGC$ItemDownloadInfo;->bytesDownloaded:J

    return-wide v0
.end method

.method public getBytesTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/codedisaster/steamworks/SteamUGC$ItemDownloadInfo;->bytesTotal:J

    return-wide v0
.end method
