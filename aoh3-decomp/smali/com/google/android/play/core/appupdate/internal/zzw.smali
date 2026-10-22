.class final Lcom/google/android/play/core/appupdate/internal/zzw;
.super Ljava/lang/Object;
.source "com.google.android.play:app-update@@2.1.0"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/appupdate/internal/zzx;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/play/core/appupdate/internal/zzx;Lcom/google/android/play/core/appupdate/internal/zzv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzf(Lcom/google/android/play/core/appupdate/internal/zzx;)Lcom/google/android/play/core/appupdate/internal/zzm;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "ServiceConnectionImpl.onServiceConnected(%s)"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    new-instance v0, Lcom/google/android/play/core/appupdate/internal/zzt;

    invoke-direct {v0, p0, p2}, Lcom/google/android/play/core/appupdate/internal/zzt;-><init>(Lcom/google/android/play/core/appupdate/internal/zzw;Landroid/os/IBinder;)V

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzf(Lcom/google/android/play/core/appupdate/internal/zzx;)Lcom/google/android/play/core/appupdate/internal/zzm;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/play/core/appupdate/internal/zzm;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzw;->zza:Lcom/google/android/play/core/appupdate/internal/zzx;

    new-instance v0, Lcom/google/android/play/core/appupdate/internal/zzu;

    invoke-direct {v0, p0}, Lcom/google/android/play/core/appupdate/internal/zzu;-><init>(Lcom/google/android/play/core/appupdate/internal/zzw;)V

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/internal/zzx;->zzc()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
