.class public abstract Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;
.super Ljava/lang/Object;
.source "AbstractShapeDrawer.java"


# static fields
.field protected static final mat4:Lcom/badlogic/gdx/math/Matrix4;

.field protected static final trianglePathPoints:[F


# instance fields
.field final batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

.field defaultLineWidth:F

.field defaultSnap:Z

.field protected final filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

.field protected final lineDrawer:Lspace/earlygrey/shapedrawer/LineDrawer;

.field protected final pathDrawer:Lspace/earlygrey/shapedrawer/PathDrawer;

.field protected final polygonDrawer:Lspace/earlygrey/shapedrawer/PolygonDrawer;

.field private sideEstimator:Lspace/earlygrey/shapedrawer/SideEstimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    sput-object v0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->mat4:Lcom/badlogic/gdx/math/Matrix4;

    const/4 v0, 0x6

    new-array v0, v0, [F

    sput-object v0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->trianglePathPoints:[F

    return-void
.end method

.method constructor <init>(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lspace/earlygrey/shapedrawer/SideEstimator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->defaultLineWidth:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->defaultSnap:Z

    instance-of v0, p1, Lcom/badlogic/gdx/graphics/g2d/PolygonBatch;

    if-eqz v0, :cond_0

    new-instance v0, Lspace/earlygrey/shapedrawer/PolygonBatchManager;

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/PolygonBatch;

    invoke-direct {v0, p1, p2}, Lspace/earlygrey/shapedrawer/PolygonBatchManager;-><init>(Lcom/badlogic/gdx/graphics/g2d/PolygonBatch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    new-instance p1, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;

    invoke-direct {p1, v0, p0}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$PolygonBatchFilledPolygonDrawer;-><init>(Lspace/earlygrey/shapedrawer/PolygonBatchManager;Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;)V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

    iput-object v0, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    goto :goto_0

    :cond_0
    new-instance v0, Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-direct {v0, p1, p2}, Lspace/earlygrey/shapedrawer/BatchManager;-><init>(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    iput-object v0, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    new-instance p1, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;

    invoke-direct {p1, v0, p0}, Lspace/earlygrey/shapedrawer/FilledPolygonDrawer$BatchFilledPolygonDrawer;-><init>(Lspace/earlygrey/shapedrawer/BatchManager;Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;)V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->filledPolygonDrawer:Lspace/earlygrey/shapedrawer/FilledPolygonDrawer;

    :goto_0
    new-instance p1, Lspace/earlygrey/shapedrawer/LineDrawer;

    iget-object p2, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-direct {p1, p2, p0}, Lspace/earlygrey/shapedrawer/LineDrawer;-><init>(Lspace/earlygrey/shapedrawer/BatchManager;Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;)V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->lineDrawer:Lspace/earlygrey/shapedrawer/LineDrawer;

    new-instance p1, Lspace/earlygrey/shapedrawer/PathDrawer;

    iget-object p2, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-direct {p1, p2, p0}, Lspace/earlygrey/shapedrawer/PathDrawer;-><init>(Lspace/earlygrey/shapedrawer/BatchManager;Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;)V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->pathDrawer:Lspace/earlygrey/shapedrawer/PathDrawer;

    new-instance p1, Lspace/earlygrey/shapedrawer/PolygonDrawer;

    iget-object p2, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-direct {p1, p2, p0}, Lspace/earlygrey/shapedrawer/PolygonDrawer;-><init>(Lspace/earlygrey/shapedrawer/BatchManager;Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;)V

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->polygonDrawer:Lspace/earlygrey/shapedrawer/PolygonDrawer;

    iput-object p3, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->sideEstimator:Lspace/earlygrey/shapedrawer/SideEstimator;

    return-void
.end method


# virtual methods
.method protected estimateSidesRequired(FF)I
    .locals 2

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->sideEstimator:Lspace/earlygrey/shapedrawer/SideEstimator;

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->getPixelSize()F

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lspace/earlygrey/shapedrawer/SideEstimator;->estimateSidesRequired(FFF)I

    move-result p1

    return p1
.end method

.method public getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultLineWidth()F
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->defaultLineWidth:F

    return v0
.end method

.method public getPackedColor()F
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->getPackedColor()F

    move-result v0

    return v0
.end method

.method public getPixelSize()F
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->getPixelSize()F

    move-result v0

    return v0
.end method

.method public getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public final getSideEstimator()Lspace/earlygrey/shapedrawer/SideEstimator;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->sideEstimator:Lspace/earlygrey/shapedrawer/SideEstimator;

    return-object v0
.end method

.method public isDefaultSnap()Z
    .locals 1

    iget-boolean v0, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->defaultSnap:Z

    return v0
.end method

.method protected isJoinNecessary()Z
    .locals 1

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->getDefaultLineWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->isJoinNecessary(F)Z

    move-result v0

    return v0
.end method

.method protected isJoinNecessary(F)Z
    .locals 2

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->getPixelSize()F

    move-result v1

    mul-float/2addr v1, v0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setColor(F)F
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/BatchManager;->setColor(F)F

    move-result p1

    return p1
.end method

.method public setColor(FFFF)F
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits(FFFF)F

    move-result p1

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->setColor(F)F

    move-result p1

    return p1
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)F
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result p1

    invoke-virtual {p0, p1}, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->setColor(F)F

    move-result p1

    return p1
.end method

.method public setDefaultLineWidth(F)F
    .locals 1

    iget v0, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->defaultLineWidth:F

    iput p1, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->defaultLineWidth:F

    return v0
.end method

.method public setDefaultSnap(Z)Z
    .locals 1

    iget-boolean v0, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->defaultSnap:Z

    iput-boolean p1, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->defaultSnap:Z

    return v0
.end method

.method public setPixelSize(F)F
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/BatchManager;->setPixelSize(F)F

    move-result p1

    return p1
.end method

.method public setSideEstimator(Lspace/earlygrey/shapedrawer/SideEstimator;)Lspace/earlygrey/shapedrawer/SideEstimator;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->sideEstimator:Lspace/earlygrey/shapedrawer/SideEstimator;

    iput-object p1, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->sideEstimator:Lspace/earlygrey/shapedrawer/SideEstimator;

    return-object v0
.end method

.method public setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0, p1}, Lspace/earlygrey/shapedrawer/BatchManager;->setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object p1

    return-object p1
.end method

.method public startRecording()V
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->startRecording()V

    return-void
.end method

.method public stopRecording()Lspace/earlygrey/shapedrawer/Drawing;
    .locals 1

    iget-object v0, p0, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->batchManager:Lspace/earlygrey/shapedrawer/BatchManager;

    invoke-virtual {v0}, Lspace/earlygrey/shapedrawer/BatchManager;->stopRecording()Lspace/earlygrey/shapedrawer/Drawing;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->update(Z)V

    return-void
.end method

.method public update(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->updatePixelSize()F

    :cond_0
    return-void
.end method

.method public updatePixelSize()F
    .locals 3

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    invoke-virtual {p0}, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;

    move-result-object v1

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v1

    sget-object v2, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->mat4:Lcom/badlogic/gdx/math/Matrix4;

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

    invoke-virtual {p0, v1}, Lspace/earlygrey/shapedrawer/AbstractShapeDrawer;->setPixelSize(F)F

    move-result v0

    return v0
.end method
