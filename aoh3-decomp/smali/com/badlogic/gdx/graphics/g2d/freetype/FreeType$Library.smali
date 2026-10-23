.class public Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;
.super Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;
.source "FreeType.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Library"
.end annotation


# instance fields
.field fontData:Lcom/badlogic/gdx/utils/LongMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/LongMap<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Pointer;-><init>(J)V

    new-instance p1, Lcom/badlogic/gdx/utils/LongMap;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/LongMap;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->fontData:Lcom/badlogic/gdx/utils/LongMap;

    return-void
.end method

.method private static native doneFreeType(J)V
.end method

.method private static native newMemoryFace(JLjava/nio/ByteBuffer;II)J
.end method

.method private static native strokerNew(J)J
.end method


# virtual methods
.method public createStroker()Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;
    .locals 4

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->strokerNew(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Stroker;-><init>(J)V

    return-object v2

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    sget-object v2, Landroidx/arch/core/ht/qIuEvFbUtcea;->kucmut:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->getLastErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispose()V
    .locals 3

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->address:J

    invoke-static {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->doneFreeType(J)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->fontData:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap;->values()Lcom/badlogic/gdx/utils/LongMap$Values;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->isUnsafeByteBuffer(Ljava/nio/ByteBuffer;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public newFace(Lcom/badlogic/gdx/files/FileHandle;I)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->map()Ljava/nio/ByteBuffer;

    move-result-object v0
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    :try_start_1
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->length()J

    move-result-wide v1

    long-to-int p1, v1

    if-nez p1, :cond_0

    const/16 p1, 0x4000

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStreamToByteArray(Ljava/io/InputStream;I)[B

    move-result-object p1

    array-length v1, p1

    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([BILjava/nio/Buffer;I)V

    move-object p1, v1

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStream(Ljava/io/InputStream;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, p1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :try_start_2
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-static {v0}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1

    :cond_1
    :goto_3
    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->newMemoryFace(Ljava/nio/ByteBuffer;I)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    move-result-object p1

    return-object p1
.end method

.method public newMemoryFace(Ljava/nio/ByteBuffer;I)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;
    .locals 4

    iget-wide v0, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->address:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v0, v1, p1, v2, p2}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->newMemoryFace(JLjava/nio/ByteBuffer;II)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/badlogic/gdx/utils/BufferUtils;->isUnsafeByteBuffer(Ljava/nio/ByteBuffer;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/badlogic/gdx/utils/BufferUtils;->disposeUnsafeByteBuffer(Ljava/nio/ByteBuffer;)V

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Couldn\'t load font, FreeType error code: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType;->getLastErrorCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->fontData:Lcom/badlogic/gdx/utils/LongMap;

    invoke-virtual {p2, v0, v1, p1}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    invoke-direct {p1, v0, v1, p0}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;-><init>(JLcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;)V

    return-object p1
.end method

.method public newMemoryFace([BII)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;
    .locals 2

    array-length p2, p1

    invoke-static {p2}, Lcom/badlogic/gdx/utils/BufferUtils;->newUnsafeByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, p2, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([BILjava/nio/Buffer;I)V

    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Library;->newMemoryFace(Ljava/nio/ByteBuffer;I)Lcom/badlogic/gdx/graphics/g2d/freetype/FreeType$Face;

    move-result-object p1

    return-object p1
.end method
