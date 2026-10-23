.class final Lcom/codedisaster/steamworks/SteamControllerNative;
.super Ljava/lang/Object;
.source "SteamControllerNative.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native activateActionSet(JJ)V
.end method

.method static native getActionSetHandle(Ljava/lang/String;)J
.end method

.method static native getAnalogActionData(JJLcom/codedisaster/steamworks/SteamControllerAnalogActionData;)V
.end method

.method static native getAnalogActionHandle(Ljava/lang/String;)J
.end method

.method static native getAnalogActionOrigins(JJJ[I)I
.end method

.method static native getConnectedControllers([J)I
.end method

.method static native getControllerForGamepadIndex(I)J
.end method

.method static native getCurrentActionSet(J)J
.end method

.method static native getDigitalActionData(JJLcom/codedisaster/steamworks/SteamControllerDigitalActionData;)V
.end method

.method static native getDigitalActionHandle(Ljava/lang/String;)J
.end method

.method static native getDigitalActionOrigins(JJJ[I)I
.end method

.method static native getGamepadIndexForController(J)I
.end method

.method static native getGlyphForActionOrigin(I)Ljava/lang/String;
.end method

.method static native getInputTypeForHandle(J)I
.end method

.method static native getMotionData(J[F)V
.end method

.method static native getStringForActionOrigin(I)Ljava/lang/String;
.end method

.method static native init()Z
.end method

.method static native runFrame()V
.end method

.method static native setLEDColor(JBBBI)V
.end method

.method static native showBindingPanel(J)Z
.end method

.method static native shutdown()Z
.end method

.method static native stopAnalogActionMomentum(JJ)V
.end method

.method static native triggerHapticPulse(JII)V
.end method

.method static native triggerRepeatedHapticPulse(JIIIII)V
.end method

.method static native triggerVibration(JSS)V
.end method
