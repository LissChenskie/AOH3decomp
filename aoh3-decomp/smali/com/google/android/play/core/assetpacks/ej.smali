.class final Lcom/google/android/play/core/assetpacks/ej;
.super Ljava/lang/Object;
.source "com.google.android.play:asset-delivery@@2.2.2"


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/bh;

.field private final b:Lcom/google/android/play/core/assetpacks/de;

.field private final c:Lcom/google/android/play/core/assetpacks/co;

.field private final d:Lcom/google/android/play/core/assetpacks/internal/aq;

.field private final e:Lcom/google/android/play/core/assetpacks/internal/aq;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/bh;Lcom/google/android/play/core/assetpacks/internal/aq;Lcom/google/android/play/core/assetpacks/de;Lcom/google/android/play/core/assetpacks/internal/aq;Lcom/google/android/play/core/assetpacks/co;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/ej;->a:Lcom/google/android/play/core/assetpacks/bh;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/ej;->d:Lcom/google/android/play/core/assetpacks/internal/aq;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/ej;->b:Lcom/google/android/play/core/assetpacks/de;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/ej;->e:Lcom/google/android/play/core/assetpacks/internal/aq;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/ej;->c:Lcom/google/android/play/core/assetpacks/co;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/assetpacks/eh;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ej;->a:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/eh;->l:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/eh;->a:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/eh;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/bh;->h(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/ej;->a:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/eh;->l:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/play/core/assetpacks/eh;->b:I

    iget-wide v4, p1, Lcom/google/android/play/core/assetpacks/eh;->c:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/bh;->h(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ej;->e:Lcom/google/android/play/core/assetpacks/internal/aq;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/internal/aq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/ei;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/assetpacks/ei;-><init>(Lcom/google/android/play/core/assetpacks/ej;Lcom/google/android/play/core/assetpacks/eh;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ej;->b:Lcom/google/android/play/core/assetpacks/de;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/eh;->l:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/eh;->b:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/eh;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/de;->k(Ljava/lang/String;IJ)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ej;->c:Lcom/google/android/play/core/assetpacks/co;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/eh;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/co;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ej;->d:Lcom/google/android/play/core/assetpacks/internal/aq;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/internal/aq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/y;

    iget v1, p1, Lcom/google/android/play/core/assetpacks/eh;->k:I

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/eh;->l:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/y;->h(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/eh;->l:Ljava/lang/String;

    new-instance v3, Lcom/google/android/play/core/assetpacks/ck;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Cannot promote pack %s from %s to %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/eh;->k:I

    invoke-direct {v3, v0, p1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_1
    new-instance v1, Lcom/google/android/play/core/assetpacks/ck;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/eh;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Cannot find pack files to promote for pack %s at %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/eh;->k:I

    invoke-direct {v1, v0, p1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method final synthetic b(Lcom/google/android/play/core/assetpacks/eh;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/ej;->a:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/eh;->l:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/eh;->b:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/eh;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/bh;->B(Ljava/lang/String;IJ)V

    return-void
.end method
