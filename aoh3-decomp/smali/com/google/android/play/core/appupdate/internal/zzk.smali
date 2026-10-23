.class final Lcom/google/android/play/core/appupdate/internal/zzk;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.play:app-update@@2.1.0"


# instance fields
.field final synthetic zza:Lcom/google/android/play/core/appupdate/internal/zzl;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/play/core/appupdate/internal/zzl;Lcom/google/android/play/core/appupdate/internal/zzj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/appupdate/internal/zzk;->zza:Lcom/google/android/play/core/appupdate/internal/zzl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic zza$001(Lcom/google/android/play/core/appupdate/internal/zzl;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual/range {p0 .. p2}, Lcom/google/android/play/core/appupdate/internal/zzl;->zza(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const v0, 0x0

    aput-object p0, v2, v0

    const v0, 0x1

    aput-object p1, v2, v0

    const v0, 0x2

    aput-object p2, v2, v0

    const-string/jumbo v1, "ZxYvMuQVSzgPQzdH"

    invoke-static {v1, v2}, Lcom/pairip/VMRunner;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-void
.end method
