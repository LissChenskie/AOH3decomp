.class Lspace/earlygrey/shapedrawer/PolygonBatchManager;
.super Lspace/earlygrey/shapedrawer/BatchManager;
.source "PolygonBatchManager.java"


# instance fields
.field protected triangleCount:I

.field protected triangles:[S


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/graphics/g2d/PolygonBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lspace/earlygrey/shapedrawer/BatchManager;-><init>(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const/4 p1, 0x0

    iput p1, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->triangleCount:I

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->verts:[F

    array-length p1, p1

    div-int/lit8 p1, p1, 0x5

    mul-int/lit8 p1, p1, 0x3

    int-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    new-array p1, p1, [S

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->triangles:[S

    return-void
.end method


# virtual methods
.method createDrawing()Lspace/earlygrey/shapedrawer/Drawing;
    .locals 1

    new-instance v0, Lspace/earlygrey/shapedrawer/Drawing$PolygonDrawing;

    invoke-direct {v0, p0}, Lspace/earlygrey/shapedrawer/Drawing$PolygonDrawing;-><init>(Lspace/earlygrey/shapedrawer/PolygonBatchManager;)V

    return-object v0
.end method

.method ensureSpaceForTriangle()V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->ensureSpace(I)V

    return-void
.end method

.method public bridge synthetic getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;
    .locals 1

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->getBatch()Lcom/badlogic/gdx/graphics/g2d/PolygonBatch;

    move-result-object v0

    return-object v0
.end method

.method public getBatch()Lcom/badlogic/gdx/graphics/g2d/PolygonBatch;
    .locals 1

    invoke-super {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/PolygonBatch;

    return-object v0
.end method

.method getTrianglesArrayOffset()I
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->triangleCount:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method increaseCacheSize(I)V
    .locals 2

    invoke-super {p0, p1}, Lspace/earlygrey/shapedrawer/BatchManager;->increaseCacheSize(I)V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->verts:[F

    array-length p1, p1

    div-int/lit8 p1, p1, 0x5

    mul-int/lit8 p1, p1, 0x3

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    new-array p1, p1, [S

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->triangles:[S

    return-void
.end method

.method pushQuad()V
    .locals 3

    iget v0, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->vertexCount:I

    int-to-short v0, v0

    iget v1, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->vertexCount:I

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iget v2, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->vertexCount:I

    add-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->pushTriangleIndices(SSS)V

    iget v0, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->vertexCount:I

    int-to-short v0, v0

    iget v1, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->vertexCount:I

    add-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    iget v2, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->vertexCount:I

    add-int/lit8 v2, v2, 0x3

    int-to-short v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->pushTriangleIndices(SSS)V

    invoke-super {p0}, Lspace/earlygrey/shapedrawer/BatchManager;->pushQuad()V

    return-void
.end method

.method pushToBatch()V
    .locals 11

    iget v0, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->vertexCount:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->drawing:Lspace/earlygrey/shapedrawer/Drawing;

    iget-object v1, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->verts:[F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->getVerticesArrayIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lspace/earlygrey/shapedrawer/Drawing;->pushVertices([FI)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->getBatch()Lcom/badlogic/gdx/graphics/g2d/PolygonBatch;

    move-result-object v3

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v4

    iget-object v5, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->verts:[F

    const/4 v6, 0x0

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->getVerticesArrayIndex()I

    move-result v7

    iget-object v8, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->triangles:[S

    const/4 v9, 0x0

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->getTrianglesArrayOffset()I

    move-result v10

    invoke-interface/range {v3 .. v10}, Lcom/badlogic/gdx/graphics/g2d/PolygonBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII[SII)V

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->vertexCount:I

    iput v0, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->triangleCount:I

    return-void
.end method

.method pushTriangle()V
    .locals 3

    iget v0, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->vertexCount:I

    int-to-short v0, v0

    iget v1, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->vertexCount:I

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iget v2, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->vertexCount:I

    add-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->pushTriangleIndices(SSS)V

    iget v0, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->vertexCount:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->vertexCount:I

    return-void
.end method

.method pushTriangleIndices(SSS)V
    .locals 2

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->getTrianglesArrayOffset()I

    move-result v0

    iget-object v1, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->triangles:[S

    aput-short p1, v1, v0

    add-int/lit8 p1, v0, 0x1

    aput-short p2, v1, p1

    add-int/lit8 v0, v0, 0x2

    aput-short p3, v1, v0

    iget p1, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->triangleCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->triangleCount:I

    return-void
.end method

.method protected pushVertexData([F[SIF)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v8}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->pushVertexData([F[SIFFFFF)V

    return-void
.end method

.method protected pushVertexData([F[SIFFFFF)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->getVerticesArrayIndex()I

    move-result v3

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->getTrianglesArrayOffset()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v2, :cond_0

    iget-object v7, v0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->triangles:[S

    add-int v8, v4, v6

    iget v9, v0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->vertexCount:I

    aget-short v10, p2, v6

    add-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget v4, v0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->triangleCount:I

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v4, v2

    iput v4, v0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->triangleCount:I

    :goto_1
    array-length v2, v1

    if-ge v5, v2, :cond_1

    aget v2, v1, v5

    mul-float v2, v2, p7

    add-float v2, v2, p5

    add-int/lit8 v4, v5, 0x1

    aget v4, v1, v4

    mul-float v4, v4, p8

    add-float v4, v4, p6

    iget-object v6, v0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->verts:[F

    add-int/lit8 v7, v3, 0x0

    aput v2, v6, v7

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->verts:[F

    add-int/lit8 v6, v3, 0x1

    aput v4, v2, v6

    iget-object v2, v0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->verts:[F

    add-int/lit8 v4, v3, 0x2

    aput p4, v2, v4

    add-int/lit8 v3, v3, 0x5

    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_1
    iget v2, v0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->vertexCount:I

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    iput v2, v0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->vertexCount:I

    return-void
.end method
