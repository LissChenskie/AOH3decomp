.class public Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/RelativeTemporalAction;
.source "ScaleByAction.java"


# instance fields
.field private amountX:F

.field private amountY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/RelativeTemporalAction;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountX()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->amountX:F

    return v0
.end method

.method public getAmountY()F
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->amountY:F

    return v0
.end method

.method public setAmount(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->amountX:F

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->amountY:F

    return-void
.end method

.method public setAmount(FF)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->amountX:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->amountY:F

    return-void
.end method

.method public setAmountX(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->amountX:F

    return-void
.end method

.method public setAmountY(F)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->amountY:F

    return-void
.end method

.method protected updateRelative(F)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->amountX:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;->amountY:F

    mul-float/2addr v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleBy(FF)V

    return-void
.end method
