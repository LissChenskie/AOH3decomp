.class public final Lcom/google/android/play/core/assetpacks/internal/ad;
.super Ljava/lang/Object;
.source "com.google.android.play:asset-delivery@@2.2.2"


# static fields
.field private static final a:Lcom/google/android/play/core/assetpacks/internal/o;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/assetpacks/internal/o;

    const-string v1, "SplitInstallInfoProvider"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/assetpacks/internal/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/internal/ad;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/internal/ad;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/internal/ad;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/internal/ad;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/internal/ad;->c:Ljava/lang/String;

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v1, Lcom/google/android/play/core/assetpacks/internal/ad;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "App is not found in PackageManager"

    invoke-virtual {v1, v3, v2}, Lcom/google/android/play/core/assetpacks/internal/o;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_8

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    const-string v5, "com.android.dynamic.apk.fused.modules"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, ","

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v3, ""

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v3, "base"

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v3, Lcom/google/android/play/core/assetpacks/internal/ad;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "App has no fused modules."

    invoke-virtual {v3, v6, v5}, Lcom/google/android/play/core/assetpacks/internal/o;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_2
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v0, Lcom/google/android/play/core/assetpacks/internal/ad;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "Adding splits from package manager: %s"

    invoke-virtual {v0, v5, v3}, Lcom/google/android/play/core/assetpacks/internal/o;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {v4, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    sget-object v1, Lcom/google/android/play/core/assetpacks/internal/ad;->a:Lcom/google/android/play/core/assetpacks/internal/o;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "No splits are found or app cannot be found in package manager."

    invoke-virtual {v1, v3, v0}, Lcom/google/android/play/core/assetpacks/internal/o;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_3
    invoke-static {}, Lcom/google/android/play/core/assetpacks/internal/ac;->a()Lcom/google/android/play/core/assetpacks/internal/ab;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/google/android/play/core/assetpacks/internal/ab;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_5
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "config."

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, ".config."

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    return-object v2

    :cond_8
    :goto_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method
