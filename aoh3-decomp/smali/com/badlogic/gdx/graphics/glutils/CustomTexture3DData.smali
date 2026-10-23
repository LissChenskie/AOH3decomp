.class public Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;
.super Ljava/lang/Object;
.source "CustomTexture3DData.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/Texture3DData;


# instance fields
.field private depth:I

.field private glFormat:I

.field private glInternalFormat:I

.field private glType:I

.field private height:I

.field private mipMapLevel:I

.field private pixels:Ljava/nio/ByteBuffer;

.field private width:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->width:I

    iput p2, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->height:I

    iput p3, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->depth:I

    iput p5, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->glFormat:I

    iput p6, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->glInternalFormat:I

    iput p7, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->glType:I

    iput p4, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->mipMapLevel:I

    return-void
.end method


# virtual methods
.method public consume3DData()V
    .locals 11

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    const v1, 0x806f

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->mipMapLevel:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->glInternalFormat:I

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->width:I

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->height:I

    iget v6, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->depth:I

    const/4 v7, 0x0

    iget v8, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->glFormat:I

    iget v9, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->glType:I

    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->pixels:Ljava/nio/ByteBuffer;

    invoke-interface/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/GL30;->glTexImage3D(IIIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public getDepth()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->depth:I

    return v0
.end method

.method public getGLFormat()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->glFormat:I

    return v0
.end method

.method public getGLType()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->glType:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->height:I

    return v0
.end method

.method public getInternalFormat()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->glInternalFormat:I

    return v0
.end method

.method public getMipMapLevel()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->mipMapLevel:I

    return v0
.end method

.method public getPixels()Ljava/nio/ByteBuffer;
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->pixels:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_e

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->glFormat:I

    const/16 v1, 0x1903

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_7

    const v1, 0x8d94

    if-eq v0, v1, :cond_7

    const/16 v1, 0x1909

    if-eq v0, v1, :cond_7

    const/16 v1, 0x1906

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    const v1, 0x8227

    if-eq v0, v1, :cond_6

    const v1, 0x8228

    if-eq v0, v1, :cond_6

    const/16 v1, 0x190a

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v1, 0x1907

    if-eq v0, v1, :cond_5

    const v1, 0x8d98

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x1908

    if-eq v0, v1, :cond_4

    const v1, 0x8d99

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported glFormat: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->glFormat:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    move v0, v2

    goto :goto_4

    :cond_5
    :goto_1
    const/4 v0, 0x3

    goto :goto_4

    :cond_6
    :goto_2
    move v0, v3

    goto :goto_4

    :cond_7
    :goto_3
    move v0, v4

    :goto_4
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->glType:I

    const/16 v5, 0x1401

    if-eq v1, v5, :cond_c

    const/16 v5, 0x1400

    if-ne v1, v5, :cond_8

    goto :goto_6

    :cond_8
    const/16 v4, 0x1403

    if-eq v1, v4, :cond_b

    const/16 v4, 0x1402

    if-eq v1, v4, :cond_b

    const/16 v4, 0x140b

    if-ne v1, v4, :cond_9

    goto :goto_5

    :cond_9
    const/16 v3, 0x1405

    if-eq v1, v3, :cond_d

    const/16 v3, 0x1404

    if-eq v1, v3, :cond_d

    const/16 v3, 0x1406

    if-ne v1, v3, :cond_a

    goto :goto_7

    :cond_a
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported glType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->glType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_5
    move v2, v3

    goto :goto_7

    :cond_c
    :goto_6
    move v2, v4

    :cond_d
    :goto_7
    mul-int/2addr v0, v2

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->width:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->height:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->depth:I

    mul-int/2addr v1, v2

    mul-int/2addr v1, v0

    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->pixels:Ljava/nio/ByteBuffer;

    :cond_e
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->pixels:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->width:I

    return v0
.end method

.method public isManaged()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/CustomTexture3DData;->pixels:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPrepared()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare()V
    .locals 0

    return-void
.end method

.method public useMipMaps()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
