.class public Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;
.source "SizeToAction.java"


# instance fields
.field private endHeight:F

.field private endWidth:F

.field private startHeight:F

.field private startWidth:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/TemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected begin()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->startWidth:F

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->startHeight:F

    return-void
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->endHeight:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->endWidth:F

    return v0
.end method

.method public setHeight(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->endHeight:F

    return-void
.end method

.method public setSize(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->endWidth:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->endHeight:F

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->endWidth:F

    return-void
.end method

.method protected update(F)V
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->startWidth:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->startHeight:F

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->endWidth:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->endHeight:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->startWidth:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->endWidth:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->startHeight:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->endHeight:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float p1, v1, v2

    move v3, v0

    move v0, p1

    move p1, v3

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    return-void
.end method
