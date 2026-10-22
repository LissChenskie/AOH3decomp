.class final Lcom/google/android/play/core/assetpacks/internal/y;
.super Ljava/lang/Object;
.source "com.google.android.play:asset-delivery@@2.2.2"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/play/core/assetpacks/internal/z;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/play/core/assetpacks/internal/z;Lcom/google/android/play/core/assetpacks/internal/x;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/internal/y;->a:Lcom/google/android/play/core/assetpacks/internal/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/internal/y;->a:Lcom/google/android/play/core/assetpacks/internal/z;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/internal/z;->f(Lcom/google/android/play/core/assetpacks/internal/z;)Lcom/google/android/play/core/assetpacks/internal/o;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "ServiceConnectionImpl.onServiceConnected(%s)"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/internal/o;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p1, Lcom/google/android/play/core/assetpacks/internal/v;

    invoke-direct {p1, p0, p2}, Lcom/google/android/play/core/assetpacks/internal/v;-><init>(Lcom/google/android/play/core/assetpacks/internal/y;Landroid/os/IBinder;)V

    iget-object p2, p0, Lcom/google/android/play/core/assetpacks/internal/y;->a:Lcom/google/android/play/core/assetpacks/internal/z;

    invoke-virtual {p2}, Lcom/google/android/play/core/assetpacks/internal/z;->c()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/internal/y;->a:Lcom/google/android/play/core/assetpacks/internal/z;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/internal/z;->f(Lcom/google/android/play/core/assetpacks/internal/z;)Lcom/google/android/play/core/assetpacks/internal/o;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "ServiceConnectionImpl.onServiceDisconnected(%s)"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/internal/o;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance p1, Lcom/google/android/play/core/assetpacks/internal/w;

    invoke-direct {p1, p0}, Lcom/google/android/play/core/assetpacks/internal/w;-><init>(Lcom/google/android/play/core/assetpacks/internal/y;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/internal/y;->a:Lcom/google/android/play/core/assetpacks/internal/z;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/internal/z;->c()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
