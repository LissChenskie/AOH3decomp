.class public Lcom/badlogic/gdx/backends/android/AndroidHaptics;
.super Ljava/lang/Object;
.source "AndroidHaptics.java"


# instance fields
.field private audioAttributes:Landroid/media/AudioAttributes;

.field private hapticsSupport:Z

.field private final vibrator:Landroid/os/Vibrator;

.field private vibratorSupport:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->vibratorSupport:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->hapticsSupport:Z

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->vibrator:Landroid/os/Vibrator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->vibratorSupport:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/os/Vibrator;->hasAmplitudeControl()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->hapticsSupport:Z

    :cond_0
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_1
    return-void
.end method


# virtual methods
.method public hasHapticsSupport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->hapticsSupport:Z

    return v0
.end method

.method public hasVibratorAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->vibratorSupport:Z

    return v0
.end method

.method public vibrate(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->vibratorSupport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->vibrator:Landroid/os/Vibrator;

    int-to-long v1, p1

    const/4 p1, -0x1

    invoke-static {v1, v2, p1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_0
    return-void
.end method

.method public vibrate(IIZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->hapticsSupport:Z

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    const/16 v0, 0xff

    invoke-static {p2, p3, v0}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result p2

    iget-object p3, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->vibrator:Landroid/os/Vibrator;

    int-to-long v0, p1

    invoke-static {v0, v1, p2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->vibrate(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public vibrate(Lcom/badlogic/gdx/Input$VibrationType;)V
    .locals 3

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->hapticsSupport:Z

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    sget-object v0, Lcom/badlogic/gdx/backends/android/AndroidHaptics$1;->$SwitchMap$com$badlogic$gdx$Input$VibrationType:[I

    invoke-virtual {p1}, Lcom/badlogic/gdx/Input$VibrationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown VibrationType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->vibrator:Landroid/os/Vibrator;

    invoke-static {v2}, Landroid/os/VibrationEffect;->createPredefined(I)Landroid/os/VibrationEffect;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidHaptics;->audioAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p1, v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    :cond_3
    return-void
.end method
