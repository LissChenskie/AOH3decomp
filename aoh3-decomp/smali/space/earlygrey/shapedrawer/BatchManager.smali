.class Lspace/earlygrey/shapedrawer/BatchManager;
.super Ljava/lang/Object;
.source "BatchManager.java"


# static fields
.field static final DEFAULT_VERTEX_CACHE_SIZE:I = 0x7d0

.field static final QUAD_PUSH_SIZE:I = 0x14

.field static final VERTEX_SIZE:I = 0x5

.field protected static final mat4:Lcom/badlogic/gdx/math/Matrix4;


# instance fields
.field protected final batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

.field protected cacheDraws:Z

.field drawing:Lspace/earlygrey/shapedrawer/Drawing;

.field protected floatBits:F

.field protected halfPixelSize:F

.field protected offset:F

.field protected pixelSize:F

.field protected r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field protected vertexCount:I

.field protected verts:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sput-object v0, Lspace/earlygrey/shapedrawer/BatchManager;->mat4:Lcom/badlogic/gdx/math/Matrix4;

    return-void
.end method

.method constructor <init>(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->pixelSize:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v0

    iput v1, p0, Lspace/earlygrey/shapedrawer/BatchManager;->halfPixelSize:F

    const v1, 0x3a83126f    # 0.001f

    mul-float/2addr v0, v1

    iput v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->offset:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->cacheDraws:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->drawing:Lspace/earlygrey/shapedrawer/Drawing;

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/BatchManager;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    const/16 p1, 0x7d0

    new-array p1, p1, [F

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0, p2}, Lspace/earlygrey/shapedrawer/BatchManager;->setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/BatchManager;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    return-void
.end method

.method private setTextureRegionUV()V
    .locals 5

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v0

    iget-object v1, p0, Lspace/earlygrey/shapedrawer/BatchManager;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/BatchManager;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v2

    iget-object v3, p0, Lspace/earlygrey/shapedrawer/BatchManager;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v3

    add-float/2addr v2, v3

    mul-float/2addr v2, v1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    array-length v4, v3

    if-ge v1, v4, :cond_0

    add-int/lit8 v4, v1, 0x3

    aput v0, v3, v4

    add-int/lit8 v4, v1, 0x4

    aput v2, v3, v4

    add-int/lit8 v1, v1, 0x5

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method color1(F)V
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getVerticesArrayIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    aput p1, v0, v1

    return-void
.end method

.method color2(F)V
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getVerticesArrayIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    aput p1, v0, v1

    return-void
.end method

.method color3(F)V
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getVerticesArrayIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    aput p1, v0, v1

    return-void
.end method

.method color4(F)V
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getVerticesArrayIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x11

    aput p1, v0, v1

    return-void
.end method

.method createDrawing()Lspace/earlygrey/shapedrawer/Drawing;
    .locals 1

    new-instance v0, Lspace/earlygrey/shapedrawer/Drawing;

    invoke-direct {v0, p0}, Lspace/earlygrey/shapedrawer/Drawing;-><init>(Lspace/earlygrey/shapedrawer/BatchManager;)V

    return-object v0
.end method

.method endCaching()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->cacheDraws:Z

    iget v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->vertexCount:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->pushToBatch()V

    :cond_0
    return-void
.end method

.method ensureSpace(I)V
    .locals 2

    mul-int/lit8 v0, p1, 0x5

    iget-object v1, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    array-length v1, v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lspace/earlygrey/shapedrawer/BatchManager;->increaseCacheSize(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->verticesRemaining()I

    move-result v0

    if-ge v0, p1, :cond_1

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->pushToBatch()V

    :cond_1
    :goto_0
    return-void
.end method

.method ensureSpaceForQuad()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lspace/earlygrey/shapedrawer/BatchManager;->ensureSpace(I)V

    return-void
.end method

.method ensureSpaceForTriangle()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lspace/earlygrey/shapedrawer/BatchManager;->ensureSpace(I)V

    return-void
.end method

.method public getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    return-object v0
.end method

.method public getPackedColor()F
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    return v0
.end method

.method public getPixelSize()F
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->pixelSize:F

    return v0
.end method

.method public getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method getVerticesArrayIndex()I
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->vertexCount:I

    mul-int/lit8 v0, v0, 0x5

    return v0
.end method

.method increaseCacheSize(I)V
    .locals 1

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->pushToBatch()V

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    array-length v0, v0

    :goto_0
    if-le p1, v0, :cond_0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    new-array p1, v0, [F

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-direct {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->setTextureRegionUV()V

    return-void
.end method

.method isCachingDraws()Z
    .locals 1

    iget-boolean v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->cacheDraws:Z

    return v0
.end method

.method isRecording()Z
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->drawing:Lspace/earlygrey/shapedrawer/Drawing;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method pushQuad()V
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->vertexCount:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->vertexCount:I

    return-void
.end method

.method pushToBatch()V
    .locals 5

    iget v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->vertexCount:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->isRecording()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->drawing:Lspace/earlygrey/shapedrawer/Drawing;

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getVerticesArrayIndex()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lspace/earlygrey/shapedrawer/Drawing;->pushVertices([FI)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/BatchManager;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    iget-object v3, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getVerticesArrayIndex()I

    move-result v4

    invoke-interface {v2, v0, v3, v1, v4}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    :goto_0
    iput v1, p0, Lspace/earlygrey/shapedrawer/BatchManager;->vertexCount:I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The texture region is null. Please set a texture region first (e.g. in the constructor or by calling setTextureRegion(TextureRegion region))"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method pushTriangle()V
    .locals 1

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->x3()F

    move-result v0

    invoke-virtual {p0, v0}, Lspace/earlygrey/shapedrawer/BatchManager;->x4(F)V

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->y3()F

    move-result v0

    invoke-virtual {p0, v0}, Lspace/earlygrey/shapedrawer/BatchManager;->y4(F)V

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->pushQuad()V

    return-void
.end method

.method pushVertex()V
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->vertexCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->vertexCount:I

    return-void
.end method

.method public setColor(F)F
    .locals 1

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getPackedColor()F

    move-result v0

    iput p1, p0, Lspace/earlygrey/shapedrawer/BatchManager;->floatBits:F

    return v0
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)F
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/BatchManager;->setColor(F)F

    move-result p1

    return p1
.end method

.method public setPixelSize(F)F
    .locals 2

    iget v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->pixelSize:F

    iput p1, p0, Lspace/earlygrey/shapedrawer/BatchManager;->pixelSize:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, p1

    iput v1, p0, Lspace/earlygrey/shapedrawer/BatchManager;->halfPixelSize:F

    const v1, 0x3a83126f    # 0.001f

    mul-float/2addr p1, v1

    iput p1, p0, Lspace/earlygrey/shapedrawer/BatchManager;->offset:F

    return v0
.end method

.method public setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/BatchManager;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->setTextureRegionUV()V

    return-object v0
.end method

.method startCaching()Z
    .locals 2

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->isCachingDraws()Z

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lspace/earlygrey/shapedrawer/BatchManager;->cacheDraws:Z

    return v0
.end method

.method startRecording()V
    .locals 1

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->createDrawing()Lspace/earlygrey/shapedrawer/Drawing;

    move-result-object v0

    iput-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->drawing:Lspace/earlygrey/shapedrawer/Drawing;

    return-void
.end method

.method stopRecording()Lspace/earlygrey/shapedrawer/Drawing;
    .locals 2

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->pushToBatch()V

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->drawing:Lspace/earlygrey/shapedrawer/Drawing;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/Drawing;->finalise()V

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->drawing:Lspace/earlygrey/shapedrawer/Drawing;

    const/4 v1, 0x0

    iput-object v1, p0, Lspace/earlygrey/shapedrawer/BatchManager;->drawing:Lspace/earlygrey/shapedrawer/Drawing;

    return-object v0
.end method

.method public update()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lspace/earlygrey/shapedrawer/BatchManager;->update(Z)V

    return-void
.end method

.method public update(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->updatePixelSize()F

    :cond_0
    return-void
.end method

.method public updatePixelSize()F
    .locals 3

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-result-object v1

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    sget-object v2, Lspace/earlygrey/shapedrawer/BatchManager;->mat4:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Matrix4;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v2}, Lcom/badlogic/gdx/math/Matrix4;->getScaleX()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lspace/earlygrey/shapedrawer/BatchManager;->setPixelSize(F)F

    move-result v0

    return v0
.end method

.method verticesRemaining()I
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    array-length v0, v0

    iget v1, p0, Lspace/earlygrey/shapedrawer/BatchManager;->vertexCount:I

    mul-int/lit8 v1, v1, 0x14

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x5

    return v0
.end method

.method protected x1()F
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getVerticesArrayIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method protected x1(F)V
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getVerticesArrayIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method protected x2()F
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getVerticesArrayIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method protected x2(F)V
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getVerticesArrayIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    aput p1, v0, v1

    return-void
.end method

.method protected x3()F
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getVerticesArrayIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    aget v0, v0, v1

    return v0
.end method

.method protected x3(F)V
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getVerticesArrayIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    aput p1, v0, v1

    return-void
.end method

.method protected x4()F
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getVerticesArrayIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0xf

    aget v0, v0, v1

    return v0
.end method

.method protected x4(F)V
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getVerticesArrayIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0xf

    aput p1, v0, v1

    return-void
.end method

.method protected y1()F
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getVerticesArrayIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method protected y1(F)V
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getVerticesArrayIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method protected y2()F
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getVerticesArrayIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method protected y2(F)V
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getVerticesArrayIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    aput p1, v0, v1

    return-void
.end method

.method protected y3()F
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getVerticesArrayIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    aget v0, v0, v1

    return v0
.end method

.method protected y3(F)V
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getVerticesArrayIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    aput p1, v0, v1

    return-void
.end method

.method protected y4()F
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getVerticesArrayIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    aget v0, v0, v1

    return v0
.end method

.method protected y4(F)V
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/BatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getVerticesArrayIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    aput p1, v0, v1

    return-void
.end method
