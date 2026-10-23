.class public Lcom/codedisaster/steamworks/SteamUtils;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;,
        Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;,
        Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;
    }
.end annotation


# instance fields
.field private final callbackAdapter:Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;


# direct methods
.method public constructor <init>(Lcom/codedisaster/steamworks/SteamUtilsCallback;)V
    .locals 2

    invoke-direct {p0}, Lcom/codedisaster/steamworks/SteamInterface;-><init>()V

    new-instance v0, Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;

    invoke-direct {v0, p1}, Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;-><init>(Lcom/codedisaster/steamworks/SteamUtilsCallback;)V

    iput-object v0, p0, Lcom/codedisaster/steamworks/SteamUtils;->callbackAdapter:Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamUtilsNative;->createCallback(Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamUtils;->setCallback(J)V

    return-void
.end method


# virtual methods
.method public dismissFloatingGamepadTextInput()Z
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUtilsNative;->dismissFloatingGamepadTextInput()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic dispose()V
    .locals 0

    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public getAPICallFailureReason(Lcom/codedisaster/steamworks/SteamAPICall;)Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamAPICall;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamUtilsNative;->getAPICallFailureReason(J)I

    move-result p1

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;->byValue(I)Lcom/codedisaster/steamworks/SteamUtils$SteamAPICallFailure;

    move-result-object p1

    return-object p1
.end method

.method public getAppID()I
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUtilsNative;->getAppID()I

    move-result v0

    return v0
.end method

.method public getConnectedUniverse()Lcom/codedisaster/steamworks/SteamUniverse;
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUtilsNative;->getConnectedUniverse()I

    move-result v0

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamUniverse;->byValue(I)Lcom/codedisaster/steamworks/SteamUniverse;

    move-result-object v0

    return-object v0
.end method

.method public getImageHeight(I)I
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUtilsNative;->getImageHeight(I)I

    move-result p1

    return p1
.end method

.method public getImageRGBA(ILjava/nio/ByteBuffer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/codedisaster/steamworks/SteamException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/codedisaster/steamworks/SteamUtils;->checkBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-static {p1, p2, v0, v1}, Lcom/codedisaster/steamworks/SteamUtilsNative;->getImageRGBA(ILjava/nio/ByteBuffer;II)Z

    move-result p1

    return p1
.end method

.method public getImageSize(I[I)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/codedisaster/steamworks/SteamUtilsNative;->getImageSize(I[I)Z

    move-result p1

    return p1
.end method

.method public getImageWidth(I)I
    .locals 0

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUtilsNative;->getImageWidth(I)I

    move-result p1

    return p1
.end method

.method public getSecondsSinceAppActive()I
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUtilsNative;->getSecondsSinceAppActive()I

    move-result v0

    return v0
.end method

.method public getSecondsSinceComputerActive()I
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUtilsNative;->getSecondsSinceComputerActive()I

    move-result v0

    return v0
.end method

.method public getServerRealTime()I
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUtilsNative;->getServerRealTime()I

    move-result v0

    return v0
.end method

.method public isAPICallCompleted(Lcom/codedisaster/steamworks/SteamAPICall;[Z)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamAPICall;->handle:J

    invoke-static {v0, v1, p2}, Lcom/codedisaster/steamworks/SteamUtilsNative;->isAPICallCompleted(J[Z)Z

    move-result p1

    return p1
.end method

.method public isOverlayEnabled()Z
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUtilsNative;->isOverlayEnabled()Z

    move-result v0

    return v0
.end method

.method public isSteamRunningOnSteamDeck()Z
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamUtilsNative;->isSteamRunningOnSteamDeck()Z

    move-result v0

    return v0
.end method

.method public setOverlayNotificationPosition(Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;)V
    .locals 0

    invoke-virtual {p1}, Lcom/codedisaster/steamworks/SteamUtils$NotificationPosition;->ordinal()I

    move-result p1

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamUtilsNative;->setOverlayNotificationPosition(I)V

    return-void
.end method

.method public setWarningMessageHook(Lcom/codedisaster/steamworks/SteamAPIWarningMessageHook;)V
    .locals 2

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamUtils;->callbackAdapter:Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;

    invoke-virtual {v0, p1}, Lcom/codedisaster/steamworks/SteamUtilsCallbackAdapter;->setWarningMessageHook(Lcom/codedisaster/steamworks/SteamAPIWarningMessageHook;)V

    iget-wide v0, p0, Lcom/codedisaster/steamworks/SteamUtils;->callback:J

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, v1, p1}, Lcom/codedisaster/steamworks/SteamUtilsNative;->enableWarningMessageHook(JZ)V

    return-void
.end method

.method public showFloatingGamepadTextInput(Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;IIII)Z
    .locals 0

    invoke-virtual {p1}, Lcom/codedisaster/steamworks/SteamUtils$FloatingGamepadTextInputMode;->ordinal()I

    move-result p1

    invoke-static {p1, p2, p3, p4, p5}, Lcom/codedisaster/steamworks/SteamUtilsNative;->showFloatingGamepadTextInput(IIIII)Z

    move-result p1

    return p1
.end method
