.class public Lspace/earlygrey/shapedrawer/Drawing;
.super Ljava/lang/Object;
.source "Drawing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lspace/earlygrey/shapedrawer/Drawing$PolygonDrawing;
    }
.end annotation


# instance fields
.field batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

.field private offsetX:F

.field private offsetY:F

.field private scaleX:F

.field private scaleY:F

.field private tmpVertices:[F

.field vertexBatches:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "[F>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lspace/earlygrey/shapedrawer/BatchManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lspace/earlygrey/shapedrawer/Drawing;->scaleX:F

    iput v0, p0, Lspace/earlygrey/shapedrawer/Drawing;->scaleY:F

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/Drawing;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/Drawing;->vertexBatches:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method applyTransformation([FFFFF)[F
    .locals 4

    invoke-virtual {p0, p2, p3, p4, p5}, Lspace/earlygrey/shapedrawer/Drawing;->needsTransforming(FFFF)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lspace/earlygrey/shapedrawer/Drawing;->tmpVertices:[F

    aget v2, p1, v0

    mul-float/2addr v2, p4

    add-float/2addr v2, p2

    aput v2, v1, v0

    add-int/lit8 v2, v0, 0x1

    aget v3, p1, v2

    mul-float/2addr v3, p5

    add-float/2addr v3, p3

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0x2

    aget v3, p1, v2

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0x3

    aget v3, p1, v2

    aput v3, v1, v2

    add-int/lit8 v2, v0, 0x4

    aget v3, p1, v2

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lspace/earlygrey/shapedrawer/Drawing;->tmpVertices:[F

    return-object p1
.end method

.method public draw()V
    .locals 2

    iget v0, p0, Lspace/earlygrey/shapedrawer/Drawing;->offsetX:F

    iget v1, p0, Lspace/earlygrey/shapedrawer/Drawing;->offsetY:F

    invoke-virtual {p0, v0, v1}, Lspace/earlygrey/shapedrawer/Drawing;->draw(FF)V

    return-void
.end method

.method public draw(FF)V
    .locals 2

    iget v0, p0, Lspace/earlygrey/shapedrawer/Drawing;->scaleX:F

    iget v1, p0, Lspace/earlygrey/shapedrawer/Drawing;->scaleY:F

    invoke-virtual {p0, p1, p2, v0, v1}, Lspace/earlygrey/shapedrawer/Drawing;->draw(FFFF)V

    return-void
.end method

.method public draw(FFFF)V
    .locals 11

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/Drawing;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget-object v0, v0, Lspace/earlygrey/shapedrawer/BatchManager;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lspace/earlygrey/shapedrawer/Drawing;->vertexBatches:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/Drawing;->vertexBatches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/Drawing;->getBatchManager()Lspace/earlygrey/shapedrawer/BatchManager;

    move-result-object v3

    invoke-virtual {v3}, Lspace/earlygrey/shapedrawer/BatchManager;->getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-result-object v9

    iget-object v3, p0, Lspace/earlygrey/shapedrawer/Drawing;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    iget-object v3, v3, Lspace/earlygrey/shapedrawer/BatchManager;->r:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v10

    move-object v3, p0

    move-object v4, v2

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lspace/earlygrey/shapedrawer/Drawing;->applyTransformation([FFFFF)[F

    move-result-object v3

    array-length v2, v2

    invoke-interface {v9, v10, v3, v0, v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    add-int/lit8 v1, v1, 0x1

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
    .locals 4

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/Drawing;->vertexBatches:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->setSize(I)[Ljava/lang/Object;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lspace/earlygrey/shapedrawer/Drawing;->vertexBatches:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lspace/earlygrey/shapedrawer/Drawing;->vertexBatches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    array-length v3, v2

    if-le v3, v1, :cond_0

    array-length v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v1, [F

    iput-object v0, p0, Lspace/earlygrey/shapedrawer/Drawing;->tmpVertices:[F

    return-void
.end method

.method getBatchManager()Lspace/earlygrey/shapedrawer/BatchManager;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/Drawing;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    return-object v0
.end method

.method public getOffsetX()F
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/Drawing;->offsetX:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/Drawing;->offsetY:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/Drawing;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/Drawing;->scaleY:F

    return v0
.end method

.method needsTransforming(FFFF)Z
    .locals 1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    cmpl-float p1, p2, v0

    if-nez p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p2, p3, p1

    if-nez p2, :cond_1

    cmpl-float p1, p4, p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method pushVertices([FI)V
    .locals 2

    new-array v0, p2, [F

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lspace/earlygrey/shapedrawer/Drawing;->vertexBatches:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public setOffset(FF)V
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/Drawing;->offsetX:F

    iput p2, p0, Lspace/earlygrey/shapedrawer/Drawing;->offsetY:F

    return-void
.end method

.method public setScaleX(FF)V
    .locals 0

    iput p1, p0, Lspace/earlygrey/shapedrawer/Drawing;->scaleX:F

    iput p2, p0, Lspace/earlygrey/shapedrawer/Drawing;->scaleY:F

    return-void
.end method
