.class final Lcom/google/android/play/core/assetpacks/eq;
.super Ljava/lang/Object;
.source "com.google.android.play:asset-delivery@@2.2.2"


# static fields
.field private static final a:Lcom/google/android/play/core/assetpacks/internal/o;


# instance fields
.field private final b:Lcom/google/android/play/core/assetpacks/bh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/assetpacks/internal/o;

    const-string v1, "VerifySliceTaskHandler"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/assetpacks/internal/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/eq;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/bh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/eq;->b:Lcom/google/android/play/core/assetpacks/bh;

    return-void
.end method

.method private final b(Lcom/google/android/play/core/assetpacks/ep;Ljava/io/File;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/eq;->b:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/ep;->l:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/ep;->a:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/ep;->b:J

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/ep;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/bh;->o(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2, v0}, Lcom/google/android/play/core/assetpacks/eo;->a(Ljava/io/File;Ljava/io/File;)Ljava/util/List;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {p2}, Lcom/google/android/play/core/assetpacks/dq;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p1, Lcom/google/android/play/core/assetpacks/ep;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/google/android/play/core/assetpacks/ep;->c:Ljava/lang/String;

    sget-object v0, Lcom/google/android/play/core/assetpacks/eq;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    iget-object p1, p1, Lcom/google/android/play/core/assetpacks/ep;->l:Ljava/lang/String;

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Verification of slice %s of pack %s successful."

    invoke-virtual {v0, p2, p1}, Lcom/google/android/play/core/assetpacks/internal/o;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_0
    new-instance p2, Lcom/google/android/play/core/assetpacks/ck;

    iget-object v0, p1, Lcom/google/android/play/core/assetpacks/ep;->c:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Verification failed for slice %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/google/android/play/core/assetpacks/ep;->k:I

    invoke-direct {p2, v0, p1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;I)V

    throw p2

    :catch_0
    move-exception p2

    new-instance v0, Lcom/google/android/play/core/assetpacks/ck;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/ep;->c:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Could not digest file during verification for slice %s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/android/play/core/assetpacks/ep;->k:I

    invoke-direct {v0, v1, p2, p1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    :catch_1
    move-exception p2

    iget p1, p1, Lcom/google/android/play/core/assetpacks/ep;->k:I

    new-instance v0, Lcom/google/android/play/core/assetpacks/ck;

    const-string v1, "SHA256 algorithm not supported."

    invoke-direct {v0, v1, p2, p1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0

    :cond_1
    :try_start_2
    new-instance p2, Lcom/google/android/play/core/assetpacks/ck;

    const/4 v0, 0x0

    sget-object v0, Lcom/google/android/gms/internal/common/oss/ClXgFvsSKQc;->wxY:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p1, Lcom/google/android/play/core/assetpacks/ep;->c:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Lcom/google/android/play/core/assetpacks/ep;->k:I

    invoke-direct {p2, v0, v1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;I)V

    throw p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception p2

    new-instance v0, Lcom/google/android/play/core/assetpacks/ck;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/ep;->c:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Could not reconstruct slice archive during verification for slice %s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/android/play/core/assetpacks/ep;->k:I

    invoke-direct {v0, v1, p2, p1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/google/android/play/core/assetpacks/ep;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/eq;->b:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/ep;->l:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/ep;->a:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/ep;->b:J

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/ep;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/bh;->p(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/google/android/play/core/assetpacks/eq;->b(Lcom/google/android/play/core/assetpacks/ep;Ljava/io/File;)V

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/eq;->b:Lcom/google/android/play/core/assetpacks/bh;

    iget-object v3, p1, Lcom/google/android/play/core/assetpacks/ep;->l:Ljava/lang/String;

    iget v4, p1, Lcom/google/android/play/core/assetpacks/ep;->a:I

    iget-wide v5, p1, Lcom/google/android/play/core/assetpacks/ep;->b:J

    iget-object v7, p1, Lcom/google/android/play/core/assetpacks/ep;->c:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/play/core/assetpacks/bh;->q(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/google/android/play/core/assetpacks/ck;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/ep;->c:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Failed to move slice %s after verification."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/android/play/core/assetpacks/ep;->k:I

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    new-instance v0, Lcom/google/android/play/core/assetpacks/ck;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/ep;->c:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Cannot find unverified files for slice %s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/google/android/play/core/assetpacks/ep;->k:I

    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/assetpacks/ck;-><init>(Ljava/lang/String;I)V

    throw v0
.end method
