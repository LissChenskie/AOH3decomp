.class final Lcom/google/android/play/core/assetpacks/dy;
.super Ljava/lang/Object;
.source "com.google.android.play:asset-delivery@@2.2.2"


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/bh;

.field private final b:Lcom/google/android/play/core/assetpacks/de;

.field private final c:Lcom/google/android/play/core/assetpacks/co;

.field private final d:Lcom/google/android/play/core/assetpacks/ea;

.field private final e:Lcom/google/android/play/core/assetpacks/internal/aq;

.field private final f:Lcom/google/android/play/core/assetpacks/internal/aq;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/assetpacks/bh;Lcom/google/android/play/core/assetpacks/internal/aq;Lcom/google/android/play/core/assetpacks/de;Lcom/google/android/play/core/assetpacks/internal/aq;Lcom/google/android/play/core/assetpacks/co;Lcom/google/android/play/core/assetpacks/ea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/dy;->a:Lcom/google/android/play/core/assetpacks/bh;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/dy;->e:Lcom/google/android/play/core/assetpacks/internal/aq;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/dy;->b:Lcom/google/android/play/core/assetpacks/de;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/dy;->f:Lcom/google/android/play/core/assetpacks/internal/aq;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/dy;->c:Lcom/google/android/play/core/assetpacks/co;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/dy;->d:Lcom/google/android/play/core/assetpacks/ea;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/assetpacks/dw;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/dy;->a:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/dw;->l:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/dw;->a:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/dw;->b:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/bh;->j(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/bh;->l(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/dy;->a:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/dw;->l:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/play/core/assetpacks/dw;->a:I

    iget-wide v6, p1, Lcom/google/android/play/core/assetpacks/dw;->b:J

    invoke-virtual {v1, v2, v3, v6, v7}, Lcom/google/android/play/core/assetpacks/bh;->h(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v5, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/dy;->a:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/dw;->l:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/play/core/assetpacks/dw;->a:I

    iget-wide v4, p1, Lcom/google/android/play/core/assetpacks/dw;->b:J

    new-instance v6, Ljava/io/File;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/bh;->h(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    const-string v2, "merge.tmp"

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/dy;->a:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/dw;->l:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/play/core/assetpacks/dw;->a:I

    iget-wide v4, p1, Lcom/google/android/play/core/assetpacks/dw;->b:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/play/core/assetpacks/bh;->i(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/dy;->d:Lcom/google/android/play/core/assetpacks/ea;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/dw;->l:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/play/core/assetpacks/dw;->a:I

    iget-wide v4, p1, Lcom/google/android/play/core/assetpacks/dw;->b:J

    iget-object v6, p1, Lcom/google/android/play/core/assetpacks/dw;->c:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/play/core/assetpacks/ea;->b(Ljava/lang/String;IJLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/dy;->f:Lcom/google/android/play/core/assetpacks/internal/aq;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/internal/aq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/assetpacks/dx;

    invoke-direct {v1, p0, p1}, Lcom/google/android/play/core/assetpacks/dx;-><init>(Lcom/google/android/play/core/assetpacks/dy;Lcom/google/android/play/core/assetpacks/dw;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/dy;->b:Lcom/google/android/play/core/assetpacks/de;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/dw;->l:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/dw;->a:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/dw;->b:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/de;->k(Ljava/lang/String;IJ)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/dy;->c:Lcom/google/android/play/core/assetpacks/co;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/dw;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/assetpacks/co;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/dy;->e:Lcom/google/android/play/core/assetpacks/internal/aq;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/internal/aq;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/y;

    iget v1, p1, Lcom/google/android/play/core/assetpacks/dw;->k:I

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/dw;->l:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/y;->h(ILjava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/dw;->l:Ljava/lang/String;

    new-instance v2, Lcom/google/android/play/core/assetpacks/ck;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Could not write asset pack version tag for pack %s: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/dw;->k:I

    invoke-direct {v2, v0, p1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_0
    iget p1, p1, Lcom/google/android/play/core/assetpacks/dw;->k:I

    new-instance v0, Lcom/google/android/play/core/assetpacks/ck;

    const-string v1, "Cannot move metadata files to final location."

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    iget p1, p1, Lcom/google/android/play/core/assetpacks/dw;->k:I

    new-instance v0, Lcom/google/android/play/core/assetpacks/ck;

    const-string v1, "Cannot move merged pack files to final location."

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/android/play/core/assetpacks/ck;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/dw;->l:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Cannot find pack files to move for pack %s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/android/play/core/assetpacks/dw;->k:I

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method final synthetic b(Lcom/google/android/play/core/assetpacks/dw;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/dy;->a:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/dw;->l:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/dw;->a:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/dw;->b:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/play/core/assetpacks/bh;->B(Ljava/lang/String;IJ)V

    return-void
.end method
