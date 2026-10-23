.class public Lcom/codedisaster/steamworks/SteamController;
.super Lcom/codedisaster/steamworks/SteamInterface;
.source "SteamController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codedisaster/steamworks/SteamController$LEDFlag;,
        Lcom/codedisaster/steamworks/SteamController$InputType;,
        Lcom/codedisaster/steamworks/SteamController$XboxOrigin;,
        Lcom/codedisaster/steamworks/SteamController$ActionOrigin;,
        Lcom/codedisaster/steamworks/SteamController$SourceMode;,
        Lcom/codedisaster/steamworks/SteamController$Source;,
        Lcom/codedisaster/steamworks/SteamController$Pad;
    }
.end annotation


# static fields
.field public static final STEAM_CONTROLLER_HANDLE_ALL_CONTROLLERS:J = -0x1L

.field public static final STEAM_CONTROLLER_MAX_ANALOG_ACTIONS:I = 0x10

.field public static final STEAM_CONTROLLER_MAX_ANALOG_ACTION_DATA:F = 1.0f

.field public static final STEAM_CONTROLLER_MAX_COUNT:I = 0x10

.field public static final STEAM_CONTROLLER_MAX_DIGITAL_ACTIONS:I = 0x80

.field public static final STEAM_CONTROLLER_MAX_ORIGINS:I = 0x8

.field public static final STEAM_CONTROLLER_MIN_ANALOG_ACTION_DATA:F = -1.0f


# instance fields
.field private final actionOrigins:[I

.field private final controllerHandles:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, v0, v1}, Lcom/codedisaster/steamworks/SteamInterface;-><init>(J)V

    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/codedisaster/steamworks/SteamController;->controllerHandles:[J

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/codedisaster/steamworks/SteamController;->actionOrigins:[I

    return-void
.end method


# virtual methods
.method public activateActionSet(Lcom/codedisaster/steamworks/SteamControllerHandle;Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    iget-wide p1, p2, Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;->handle:J

    invoke-static {v0, v1, p1, p2}, Lcom/codedisaster/steamworks/SteamControllerNative;->activateActionSet(JJ)V

    return-void
.end method

.method public bridge synthetic dispose()V
    .locals 0

    invoke-super {p0}, Lcom/codedisaster/steamworks/SteamInterface;->dispose()V

    return-void
.end method

.method public getActionSetHandle(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamControllerNative;->getActionSetHandle(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;-><init>(J)V

    return-object v0
.end method

.method public getAnalogActionData(Lcom/codedisaster/steamworks/SteamControllerHandle;Lcom/codedisaster/steamworks/SteamControllerAnalogActionHandle;Lcom/codedisaster/steamworks/SteamControllerAnalogActionData;)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    iget-wide p1, p2, Lcom/codedisaster/steamworks/SteamControllerAnalogActionHandle;->handle:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/codedisaster/steamworks/SteamControllerNative;->getAnalogActionData(JJLcom/codedisaster/steamworks/SteamControllerAnalogActionData;)V

    return-void
.end method

.method public getAnalogActionHandle(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamControllerAnalogActionHandle;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamControllerAnalogActionHandle;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamControllerNative;->getAnalogActionHandle(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamControllerAnalogActionHandle;-><init>(J)V

    return-object v0
.end method

.method public getAnalogActionOrigins(Lcom/codedisaster/steamworks/SteamControllerHandle;Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;Lcom/codedisaster/steamworks/SteamControllerAnalogActionHandle;[Lcom/codedisaster/steamworks/SteamController$ActionOrigin;)I
    .locals 9

    array-length v0, p4

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    iget-wide v2, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    iget-wide v4, p2, Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;->handle:J

    iget-wide v6, p3, Lcom/codedisaster/steamworks/SteamControllerAnalogActionHandle;->handle:J

    iget-object v8, p0, Lcom/codedisaster/steamworks/SteamController;->actionOrigins:[I

    invoke-static/range {v2 .. v8}, Lcom/codedisaster/steamworks/SteamControllerNative;->getAnalogActionOrigins(JJJ[I)I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    iget-object p3, p0, Lcom/codedisaster/steamworks/SteamController;->actionOrigins:[I

    aget p3, p3, p2

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamController$ActionOrigin;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamController$ActionOrigin;

    move-result-object p3

    aput-object p3, p4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array size must be at least STEAM_CONTROLLER_MAX_ORIGINS"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getConnectedControllers([Lcom/codedisaster/steamworks/SteamControllerHandle;)I
    .locals 6

    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/codedisaster/steamworks/SteamController;->controllerHandles:[J

    invoke-static {v0}, Lcom/codedisaster/steamworks/SteamControllerNative;->getConnectedControllers([J)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v2, Lcom/codedisaster/steamworks/SteamControllerHandle;

    iget-object v3, p0, Lcom/codedisaster/steamworks/SteamController;->controllerHandles:[J

    aget-wide v4, v3, v1

    invoke-direct {v2, v4, v5}, Lcom/codedisaster/steamworks/SteamControllerHandle;-><init>(J)V

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array size must be at least STEAM_CONTROLLER_MAX_COUNT"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getControllerForGamepadIndex(I)Lcom/codedisaster/steamworks/SteamControllerHandle;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamControllerHandle;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamControllerNative;->getControllerForGamepadIndex(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamControllerHandle;-><init>(J)V

    return-object v0
.end method

.method public getCurrentActionSet(Lcom/codedisaster/steamworks/SteamControllerHandle;)Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;

    iget-wide v1, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    invoke-static {v1, v2}, Lcom/codedisaster/steamworks/SteamControllerNative;->getCurrentActionSet(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;-><init>(J)V

    return-object v0
.end method

.method public getDigitalActionData(Lcom/codedisaster/steamworks/SteamControllerHandle;Lcom/codedisaster/steamworks/SteamControllerDigitalActionHandle;Lcom/codedisaster/steamworks/SteamControllerDigitalActionData;)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    iget-wide p1, p2, Lcom/codedisaster/steamworks/SteamControllerDigitalActionHandle;->handle:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/codedisaster/steamworks/SteamControllerNative;->getDigitalActionData(JJLcom/codedisaster/steamworks/SteamControllerDigitalActionData;)V

    return-void
.end method

.method public getDigitalActionHandle(Ljava/lang/String;)Lcom/codedisaster/steamworks/SteamControllerDigitalActionHandle;
    .locals 3

    new-instance v0, Lcom/codedisaster/steamworks/SteamControllerDigitalActionHandle;

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamControllerNative;->getDigitalActionHandle(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/codedisaster/steamworks/SteamControllerDigitalActionHandle;-><init>(J)V

    return-object v0
.end method

.method public getDigitalActionOrigins(Lcom/codedisaster/steamworks/SteamControllerHandle;Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;Lcom/codedisaster/steamworks/SteamControllerDigitalActionHandle;[Lcom/codedisaster/steamworks/SteamController$ActionOrigin;)I
    .locals 9

    array-length v0, p4

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    iget-wide v2, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    iget-wide v4, p2, Lcom/codedisaster/steamworks/SteamControllerActionSetHandle;->handle:J

    iget-wide v6, p3, Lcom/codedisaster/steamworks/SteamControllerDigitalActionHandle;->handle:J

    iget-object v8, p0, Lcom/codedisaster/steamworks/SteamController;->actionOrigins:[I

    invoke-static/range {v2 .. v8}, Lcom/codedisaster/steamworks/SteamControllerNative;->getDigitalActionOrigins(JJJ[I)I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    iget-object p3, p0, Lcom/codedisaster/steamworks/SteamController;->actionOrigins:[I

    aget p3, p3, p2

    invoke-static {p3}, Lcom/codedisaster/steamworks/SteamController$ActionOrigin;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamController$ActionOrigin;

    move-result-object p3

    aput-object p3, p4, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array size must be at least STEAM_CONTROLLER_MAX_ORIGINS"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getGamepadIndexForController(Lcom/codedisaster/steamworks/SteamControllerHandle;)I
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamControllerNative;->getGamepadIndexForController(J)I

    move-result p1

    return p1
.end method

.method public getGlyphForActionOrigin(Lcom/codedisaster/steamworks/SteamController$ActionOrigin;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/codedisaster/steamworks/SteamController$ActionOrigin;->ordinal()I

    move-result p1

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamControllerNative;->getGlyphForActionOrigin(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInputTypeForHandle(Lcom/codedisaster/steamworks/SteamControllerHandle;)Lcom/codedisaster/steamworks/SteamController$InputType;
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamControllerNative;->getInputTypeForHandle(J)I

    move-result p1

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamController$InputType;->byOrdinal(I)Lcom/codedisaster/steamworks/SteamController$InputType;

    move-result-object p1

    return-object p1
.end method

.method public getMotionData(Lcom/codedisaster/steamworks/SteamControllerHandle;Lcom/codedisaster/steamworks/SteamControllerMotionData;)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    iget-object p1, p2, Lcom/codedisaster/steamworks/SteamControllerMotionData;->data:[F

    invoke-static {v0, v1, p1}, Lcom/codedisaster/steamworks/SteamControllerNative;->getMotionData(J[F)V

    return-void
.end method

.method public getStringForActionOrigin(Lcom/codedisaster/steamworks/SteamController$ActionOrigin;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/codedisaster/steamworks/SteamController$ActionOrigin;->ordinal()I

    move-result p1

    invoke-static {p1}, Lcom/codedisaster/steamworks/SteamControllerNative;->getStringForActionOrigin(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public init()Z
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamControllerNative;->init()Z

    move-result v0

    return v0
.end method

.method public runFrame()V
    .locals 0

    invoke-static {}, Lcom/codedisaster/steamworks/SteamControllerNative;->runFrame()V

    return-void
.end method

.method public setLEDColor(Lcom/codedisaster/steamworks/SteamControllerHandle;IIILcom/codedisaster/steamworks/SteamController$LEDFlag;)V
    .locals 6

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    and-int/lit16 p1, p2, 0xff

    int-to-byte v2, p1

    and-int/lit16 p1, p3, 0xff

    int-to-byte v3, p1

    and-int/lit16 p1, p4, 0xff

    int-to-byte v4, p1

    invoke-virtual {p5}, Lcom/codedisaster/steamworks/SteamController$LEDFlag;->ordinal()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/codedisaster/steamworks/SteamControllerNative;->setLEDColor(JBBBI)V

    return-void
.end method

.method public showBindingPanel(Lcom/codedisaster/steamworks/SteamControllerHandle;)Z
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    invoke-static {v0, v1}, Lcom/codedisaster/steamworks/SteamControllerNative;->showBindingPanel(J)Z

    move-result p1

    return p1
.end method

.method public shutdown()Z
    .locals 1

    invoke-static {}, Lcom/codedisaster/steamworks/SteamControllerNative;->shutdown()Z

    move-result v0

    return v0
.end method

.method public stopAnalogActionMomentum(Lcom/codedisaster/steamworks/SteamControllerHandle;Lcom/codedisaster/steamworks/SteamControllerAnalogActionHandle;)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    iget-wide p1, p2, Lcom/codedisaster/steamworks/SteamControllerAnalogActionHandle;->handle:J

    invoke-static {v0, v1, p1, p2}, Lcom/codedisaster/steamworks/SteamControllerNative;->stopAnalogActionMomentum(JJ)V

    return-void
.end method

.method public triggerHapticPulse(Lcom/codedisaster/steamworks/SteamControllerHandle;Lcom/codedisaster/steamworks/SteamController$Pad;I)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamController$Pad;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1, p3}, Lcom/codedisaster/steamworks/SteamControllerNative;->triggerHapticPulse(JII)V

    return-void
.end method

.method public triggerRepeatedHapticPulse(Lcom/codedisaster/steamworks/SteamControllerHandle;Lcom/codedisaster/steamworks/SteamController$Pad;IIII)V
    .locals 7

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    invoke-virtual {p2}, Lcom/codedisaster/steamworks/SteamController$Pad;->ordinal()I

    move-result v2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/codedisaster/steamworks/SteamControllerNative;->triggerRepeatedHapticPulse(JIIIII)V

    return-void
.end method

.method public triggerVibration(Lcom/codedisaster/steamworks/SteamControllerHandle;SS)V
    .locals 2

    iget-wide v0, p1, Lcom/codedisaster/steamworks/SteamControllerHandle;->handle:J

    invoke-static {v0, v1, p2, p3}, Lcom/codedisaster/steamworks/SteamControllerNative;->triggerVibration(JSS)V

    return-void
.end method
