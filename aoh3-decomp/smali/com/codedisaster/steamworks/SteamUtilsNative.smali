.class final Lcom/codedisaster/steamworks/SteamUtilsNative;
.super Ljava/lang/Object;
.source "SteamUtilsNative.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native createCallback(Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;)J
.end method

.method static native dismissFloatingGamepadTextInput()Z
.end method

.method static native enableWarningMessageHook(JZ)V
.end method

.method static native getAPICallFailureReason(J)I
.end method

.method static native getAppID()I
.end method

.method static native getConnectedUniverse()I
.end method

.method static native getIPCountry()Ljava/lang/String;
.end method

.method static native getImageHeight(I)I
.end method

.method static native getImageRGBA(ILjava/nio/ByteBuffer;II)Z
.end method

.method static native getImageSize(I[I)Z
.end method

.method static native getImageWidth(I)I
.end method

.method static native getSecondsSinceAppActive()I
.end method

.method static native getSecondsSinceComputerActive()I
.end method

.method static native getServerRealTime()I
.end method

.method static native isAPICallCompleted(J[Z)Z
.end method

.method static native isOverlayEnabled()Z
.end method

.method static native isSteamRunningOnSteamDeck()Z
.end method

.method static native setOverlayNotificationPosition(I)V
.end method

.method static native showFloatingGamepadTextInput(IIIII)Z
.end method
