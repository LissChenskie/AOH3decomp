.class public Lcom/codedisaster/steamworks/SteamScreenshots;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamScreenshots.java"


# direct methods
.method public constructor <init>(Lcom/codedisaster/steamworks/SteamScreenshotsCallback;)V
    .locals 2

    new-instance v0, Lcom/codedisaster/steamworks/SteamScreenshotsCallbackAdapter;

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamScreenshotsCallbackAdapter;-><init>(Lcom/codedisaster/steamworks/SteamScreenshotsCallback;)V

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamScreenshotsNative;->createCallback(Lcom/codedisaster/steamworks/SteamScreenshotsCallbackAdapter;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    return-void
.end method


# virtual methods
.method public addScreenshotToLibrary(Ljava/lang/String;Ljava/lang/String;II)Lcom/codedisaster/steamworks/SteamScreenshotHandle;
    .locals 1

    new-instance v0, Lcom/codedisaster/steamworks/SteamScreenshotHandle;

    invoke-static {p1, p2, p3, p4}, Lcom/codedisaster/steamworks/SteamScreenshotsNative;->addScreenshotToLibrary(Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamScreenshotHandle;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic dispose()V
    .locals 0

    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public hookScreenshots(Z)V
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamScreenshotsNative;->hookScreenshots(Z)V

    return-void
.end method

.method public isScreenshotsHooked()Z
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamScreenshotsNative;->isScreenshotsHooked()Z

    move-result v0

    return v0
.end method

.method public setLocation(Lcom/codedisaster/steamworks/SteamScreenshotHandle;Ljava/lang/String;)Z
    .locals 0

    iget p1, p1, Lcom/codedisaster/steamworks/SteamScreenshotHandle;->handle:I

    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamScreenshotsNative;->setLocation(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public tagPublishedFile(Lcom/codedisaster/steamworks/SteamScreenshotHandle;Lcom/codedisaster/steamworks/SteamPublishedFileID;)Z
    .locals 2

    iget p1, p1, Lcom/codedisaster/steamworks/SteamScreenshotHandle;->handle:I

    iget-wide v0, p2, Lcom/codedisaster/steamworks/SteamPublishedFileID;->handle:J

    invoke-static {p1, v0, v1}, Lcom/codedisaster/steamworks/SteamScreenshotsNative;->tagPublishedFile(IJ)Z

    move-result p1

    return p1
.end method

.method public tagUser(Lcom/codedisaster/steamworks/SteamScreenshotHandle;Lcom/codedisaster/steamworks/SteamID;)Z
    .locals 2

    iget p1, p1, Lcom/codedisaster/steamworks/SteamScreenshotHandle;->handle:I

    iget-wide v0, p2, Lcom/codedisaster/steamworks/SteamID;->handle:J

    invoke-static {p1, v0, v1}, Lcom/codedisaster/steamworks/SteamScreenshotsNative;->tagUser(IJ)Z

    move-result p1

    return p1
.end method

.method public triggerScreenshot()V
    .locals 0

    invoke-static {}, Lcom/codedisaster/steamworks/SteamScreenshotsNative;->triggerScreenshot()V

    return-void
.end method

.method public writeScreenshot(Ljava/nio/ByteBuffer;II)Lcom/codedisaster/steamworks/SteamScreenshotHandle;
    .locals 2

    new-instance v0, Lcom/codedisaster/steamworks/SteamScreenshotHandle;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p1, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamScreenshotsNative;->writeScreenshot(Ljava/nio/ByteBuffer;III)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamScreenshotHandle;-><init>(I)V

    return-object v0
.end method
