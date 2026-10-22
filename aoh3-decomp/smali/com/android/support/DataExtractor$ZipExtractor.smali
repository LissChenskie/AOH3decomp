.class Lcom/android/support/DataExtractor$ZipExtractor;
.super Ljava/lang/Object;
.source "DataExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/support/DataExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ZipExtractor"
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000000

.field private static final TAG:Ljava/lang/String; = "MOD_MENU_ZIPEXTRACTION"


# instance fields
.field private context:Landroid/content/Context;

.field private outputDirectory:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/support/DataExtractor;

.field private zipFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/support/DataExtractor;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/support/DataExtractor$ZipExtractor;->this$0:Lcom/android/support/DataExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/support/DataExtractor$ZipExtractor;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/support/DataExtractor$ZipExtractor;->zipFileName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/support/DataExtractor$ZipExtractor;->outputDirectory:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public extractZip()V
    .locals 13

    const-string v0, "MOD_MENU_ZIPEXTRACTION"

    iget-object v1, p0, Lcom/android/support/DataExtractor$ZipExtractor;->outputDirectory:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/support/DataExtractor$ZipExtractor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/support/DataExtractor$ZipExtractor;->zipFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    const/high16 v3, 0x1000000

    new-array v4, v3, [B

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/support/DataExtractor$ZipExtractor;->outputDirectory:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    move-object v7, v6

    if-eqz v6, :cond_5

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    goto :goto_2

    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    :cond_2
    new-instance v9, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v10

    move v11, v10

    const/4 v12, -0x1

    if-eq v10, v12, :cond_3

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10, v11}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    :cond_3
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V

    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    goto :goto_5

    :catch_0
    move-exception v2

    goto :goto_3

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_6

    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v3

    :cond_6
    :goto_4
    throw v2

    :catch_2
    move-exception v2

    if-eqz v1, :cond_7

    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :cond_7
    :goto_5
    return-void
.end method
