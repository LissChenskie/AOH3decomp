.class final Lcom/codedisaster/steamworks/SteamScreenshotsNative;
.super Ljava/lang/Object;
.source "SteamScreenshotsNative.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native addScreenshotToLibrary(Ljava/lang/String;Ljava/lang/String;II)I
.end method

.method static native createCallback(Lcom/codedisaster/steamworks/SteamScreenshotsCallbackAdapter;)J
.end method

.method static native hookScreenshots(Z)V
.end method

.method static native isScreenshotsHooked()Z
.end method

.method static native setLocation(ILjava/lang/String;)Z
.end method

.method static native tagPublishedFile(IJ)Z
.end method

.method static native tagUser(IJ)Z
.end method

.method static native triggerScreenshot()V
.end method

.method static native writeScreenshot(Ljava/nio/ByteBuffer;III)I
.end method
