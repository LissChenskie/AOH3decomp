.class final Lcom/google/android/play/core/assetpacks/bt;
.super Ljava/lang/Object;
.source "com.google.android.play:asset-delivery@@2.2.2"


# direct methods
.method static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetLocation;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const-string v5, "Attempted to get file location from a null apk path."

    invoke-static {v4, v5}, Lcom/google/android/play/core/assetpacks/internal/aj;->b(ZLjava/lang/Object;)V

    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "Attempted to get file location in apk %s with a null file path."

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    invoke-static {v5, v4}, Lcom/google/android/play/core/assetpacks/internal/aj;->b(ZLjava/lang/Object;)V

    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v5, "r"

    invoke-direct {v4, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x16

    new-array v6, v5, [B

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    const-wide/16 v9, -0x16

    add-long/2addr v7, v9

    invoke-virtual {v4, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4, v6}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-static {v6, v3}, Lcom/google/android/play/core/assetpacks/br;->b([BI)I

    move-result v7

    const v8, 0x504b0506

    if-ne v7, v8, :cond_2

    invoke-static {v6}, Lcom/google/android/play/core/assetpacks/bt;->b([B)Lcom/google/android/play/core/assetpacks/bs;

    move-result-object v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x6

    if-nez v6, :cond_b

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v12

    add-long/2addr v12, v9

    const-wide/16 v9, 0x400

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v14

    invoke-static {v9, v10, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    long-to-int v6, v9

    new-array v9, v6, [B

    new-array v5, v5, [B

    move-wide v14, v12

    :goto_3
    const-wide/32 v16, -0x10000

    add-long v16, v12, v16

    const-wide/16 v18, 0x0

    cmp-long v10, v16, v18

    if-gez v10, :cond_3

    move-wide/from16 v20, v12

    move-wide/from16 v11, v18

    move-wide/from16 v18, v20

    goto :goto_4

    :cond_3
    move-wide/from16 v18, v12

    move-wide/from16 v11, v16

    :goto_4
    int-to-long v2, v6

    sub-long/2addr v14, v2

    const-wide/16 v2, 0x3

    add-long/2addr v14, v2

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4, v9}, Ljava/io/RandomAccessFile;->readFully([B)V

    add-int/lit8 v2, v6, -0x4

    :goto_5
    if-ltz v2, :cond_9

    aget-byte v3, v9, v2

    const/4 v10, 0x5

    if-eq v3, v10, :cond_7

    if-eq v3, v7, :cond_6

    const/16 v10, 0x4b

    if-eq v3, v10, :cond_5

    const/16 v10, 0x50

    if-eq v3, v10, :cond_4

    const/4 v3, -0x1

    goto :goto_6

    :cond_4
    const/4 v3, 0x0

    goto :goto_6

    :cond_5
    const/4 v3, 0x1

    goto :goto_6

    :cond_6
    const/4 v3, 0x3

    goto :goto_6

    :cond_7
    const/4 v3, 0x2

    :goto_6
    if-ltz v3, :cond_8

    if-lt v2, v3, :cond_8

    sub-int v10, v2, v3

    invoke-static {v9, v10}, Lcom/google/android/play/core/assetpacks/br;->b([BI)I

    move-result v10

    if-ne v10, v8, :cond_8

    int-to-long v8, v2

    add-long/2addr v14, v8

    int-to-long v2, v3

    sub-long/2addr v14, v2

    invoke-virtual {v4, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-static {v5}, Lcom/google/android/play/core/assetpacks/bt;->b([B)Lcom/google/android/play/core/assetpacks/bs;

    move-result-object v6

    goto :goto_7

    :cond_8
    add-int/lit8 v2, v2, -0x4

    goto :goto_5

    :cond_9
    cmp-long v2, v14, v11

    if-eqz v2, :cond_a

    move-wide/from16 v12, v18

    const/4 v3, 0x0

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/util/zip/ZipException;

    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "End Of Central Directory signature not found in APK %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_7
    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x2e

    new-array v3, v3, [B

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    new-array v5, v5, [B

    iget-wide v8, v6, Lcom/google/android/play/core/assetpacks/bs;->a:J

    const/4 v10, 0x0

    :goto_8
    iget v11, v6, Lcom/google/android/play/core/assetpacks/bs;->b:I

    if-ge v10, v11, :cond_e

    invoke-virtual {v4, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 v11, 0x0

    invoke-static {v3, v11}, Lcom/google/android/play/core/assetpacks/br;->b([BI)I

    move-result v12

    const v11, 0x504b0102

    if-ne v12, v11, :cond_d

    const-wide/16 v11, 0x1c

    add-long/2addr v11, v8

    invoke-virtual {v4, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v11, 0x1c

    invoke-static {v3, v11}, Lcom/google/android/play/core/assetpacks/br;->a([BI)I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v11, v12, :cond_c

    const-wide/16 v12, 0x2e

    add-long/2addr v12, v8

    invoke-virtual {v4, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v5, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v12

    if-eqz v12, :cond_c

    const/16 v0, 0x2a

    invoke-static {v3, v0}, Lcom/google/android/play/core/assetpacks/br;->c([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_9

    :cond_c
    const/16 v12, 0x1e

    invoke-static {v3, v12}, Lcom/google/android/play/core/assetpacks/br;->a([BI)I

    move-result v12

    const/16 v13, 0x20

    invoke-static {v3, v13}, Lcom/google/android/play/core/assetpacks/br;->a([BI)I

    move-result v13

    add-int/lit8 v11, v11, 0x2e

    add-int/2addr v11, v12

    add-int/2addr v11, v13

    int-to-long v11, v11

    add-long/2addr v8, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_d
    new-instance v7, Ljava/util/zip/ZipException;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v6, Lcom/google/android/play/core/assetpacks/bs;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Missing central directory file header signature when looking for file %s in APK %s. Read %d entries out of %d. Found %d instead of the header signature %d."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_e
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_f

    const/4 v2, 0x0

    return-object v2

    :cond_f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v5, 0x16

    add-long/2addr v5, v2

    const/16 v0, 0x8

    new-array v0, v0, [B

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v4, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/google/android/play/core/assetpacks/br;->c([BI)J

    move-result-wide v4

    const/4 v6, 0x4

    invoke-static {v0, v6}, Lcom/google/android/play/core/assetpacks/br;->a([BI)I

    move-result v6

    int-to-long v8, v6

    invoke-static {v0, v7}, Lcom/google/android/play/core/assetpacks/br;->a([BI)I

    move-result v0

    int-to-long v6, v0

    const-wide/16 v10, 0x1e

    add-long/2addr v2, v10

    new-instance v10, Lcom/google/android/play/core/assetpacks/bl;

    add-long/2addr v2, v8

    add-long/2addr v2, v6

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/bl;-><init>(Ljava/lang/String;JJ)V

    return-object v10
.end method

.method private static b([B)Lcom/google/android/play/core/assetpacks/bs;
    .locals 7

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/google/android/play/core/assetpacks/br;->a([BI)I

    move-result v6

    const/16 v0, 0xc

    invoke-static {p0, v0}, Lcom/google/android/play/core/assetpacks/br;->c([BI)J

    move-result-wide v4

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/google/android/play/core/assetpacks/br;->c([BI)J

    move-result-wide v2

    new-instance p0, Lcom/google/android/play/core/assetpacks/bs;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/play/core/assetpacks/bs;-><init>(JJI)V

    return-object p0
.end method
