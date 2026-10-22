.class final Lcom/google/android/play/core/assetpacks/aj;
.super Lcom/google/android/play/core/assetpacks/internal/p;
.source "com.google.android.play:asset-delivery@@2.2.2"


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic f:Lcom/google/android/play/core/assetpacks/aw;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/aw;Lcom/google/android/gms/tasks/TaskCompletionSource;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    iput p3, p0, Lcom/google/android/play/core/assetpacks/aj;->a:I

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/aj;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/aj;->c:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/play/core/assetpacks/aj;->d:I

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/aj;->e:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/aj;->f:Lcom/google/android/play/core/assetpacks/aw;

    invoke-direct {p0, p2}, Lcom/google/android/play/core/assetpacks/internal/p;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/aj;->f:Lcom/google/android/play/core/assetpacks/aw;

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/aw;->s(Lcom/google/android/play/core/assetpacks/aw;)Lcom/google/android/play/core/assetpacks/internal/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/internal/z;->e()Landroid/os/IInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/aj;->f:Lcom/google/android/play/core/assetpacks/aw;

    invoke-static {v1}, Lcom/google/android/play/core/assetpacks/aw;->u(Lcom/google/android/play/core/assetpacks/aw;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/android/play/core/assetpacks/aj;->a:I

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/aj;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/aj;->c:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/play/core/assetpacks/aj;->d:I

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/aw;->k(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {}, Lcom/google/android/play/core/assetpacks/aw;->m()Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Lcom/google/android/play/core/assetpacks/an;

    iget-object v5, p0, Lcom/google/android/play/core/assetpacks/aj;->f:Lcom/google/android/play/core/assetpacks/aw;

    iget-object v6, p0, Lcom/google/android/play/core/assetpacks/aj;->e:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v4, v5, v6}, Lcom/google/android/play/core/assetpacks/an;-><init>(Lcom/google/android/play/core/assetpacks/aw;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/internal/f;->d(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/google/android/play/core/assetpacks/internal/h;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/aj;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/play/core/assetpacks/aw;->r()Lcom/google/android/play/core/assetpacks/internal/o;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/play/core/assetpacks/aj;->c:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/play/core/assetpacks/aj;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/google/android/play/core/assetpacks/aj;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v1, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "getChunkFileDescriptor(%s, %s, %d, session=%d)"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/play/core/assetpacks/internal/o;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/aj;->e:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method
