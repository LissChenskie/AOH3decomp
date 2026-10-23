.class Lspace/earlygrey/shapedrawer/Drawing$PolygonDrawing;
.super Lspace/earlygrey/shapedrawer/Drawing;
.source "Drawing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lspace/earlygrey/shapedrawer/Drawing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PolygonDrawing"
.end annotation


# instance fields
.field triangleBatches:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "[S>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lspace/earlygrey/shapedrawer/PolygonBatchManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lspace/earlygrey/shapedrawer/Drawing;-><init>(Lspace/earlygrey/shapedrawer/BatchManager;)V

    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/Drawing$PolygonDrawing;->triangleBatches:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public draw(FFFF)V
    .locals 11

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/Drawing$PolygonDrawing;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget-object v0, v0, Lspace/earlygrey/shapedrawer/BatchManager;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lspace/earlygrey/shapedrawer/Drawing$PolygonDrawing;->vertexBatches:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lspace/earlygrey/shapedrawer/Drawing$PolygonDrawing;->vertexBatches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/Drawing$PolygonDrawing;->triangleBatches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [S

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/Drawing$PolygonDrawing;->getBatchManager()Lspace/earlygrey/shapedrawer/PolygonBatchManager;

    move-result-object v2

    invoke-virtual {v2}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->getBatch()Lcom/badlogic/gdx/graphics/g2d/PolygonBatch;

    move-result-object v9

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/Drawing$PolygonDrawing;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget-object v2, v2, Lspace/earlygrey/shapedrawer/BatchManager;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v10

    move-object v2, p0

    move-object v3, v1

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lspace/earlygrey/shapedrawer/Drawing$PolygonDrawing;->applyTransformation([FFFFF)[F

    move-result-object v5

    const/4 v6, 0x0

    array-length v7, v1

    const/4 v1, 0x0

    array-length v2, v8

    move-object v3, v9

    move-object v4, v10

    move v9, v1

    move v10, v2

    invoke-interface/range {v3 .. v10}, Lcom/badlogic/gdx/graphics/g2d/PolygonBatch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII[SII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The texture region is null. Please set a texture region first (e.g. in the constructor or by calling setTextureRegion(TextureRegion region))"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method finalise()V
    .locals 2

    invoke-super {p0}, Lspace/earlygrey/shapedrawer/Drawing;->finalise()V

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/Drawing$PolygonDrawing;->triangleBatches:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->setSize(I)[Ljava/lang/Object;

    return-void
.end method

.method bridge synthetic getBatchManager()Lspace/earlygrey/shapedrawer/BatchManager;
    .locals 1

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/Drawing$PolygonDrawing;->getBatchManager()Lspace/earlygrey/shapedrawer/PolygonBatchManager;

    move-result-object v0

    return-object v0
.end method

.method getBatchManager()Lspace/earlygrey/shapedrawer/PolygonBatchManager;
    .locals 1

    invoke-super {p0}, Lspace/earlygrey/shapedrawer/Drawing;->getBatchManager()Lspace/earlygrey/shapedrawer/BatchManager;

    move-result-object v0

    check-cast v0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;

    return-object v0
.end method

.method pushVertices([FI)V
    .locals 2

    invoke-super {p0, p1, p2}, Lspace/earlygrey/shapedrawer/Drawing;->pushVertices([FI)V

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/Drawing$PolygonDrawing;->getBatchManager()Lspace/earlygrey/shapedrawer/PolygonBatchManager;

    move-result-object p1

    invoke-virtual {p1}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->getTrianglesArrayOffset()I

    move-result p1

    new-array p2, p1, [S

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/Drawing$PolygonDrawing;->getBatchManager()Lspace/earlygrey/shapedrawer/PolygonBatchManager;

    move-result-object v0

    iget-object v0, v0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;->triangles:[S

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/Drawing$PolygonDrawing;->triangleBatches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method
