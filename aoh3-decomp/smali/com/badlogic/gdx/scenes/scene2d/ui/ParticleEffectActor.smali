.class public Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "ParticleEffectActor.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field private autoRemove:Z

.field protected isRunning:Z

.field protected lastDelta:F

.field protected ownsEffect:Z

.field private final particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

.field private resetOnStart:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->ownsEffect:Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->ownsEffect:Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    iput-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->resetOnStart:Z

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->act(F)V

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->lastDelta:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->lastDelta:F

    iget-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->autoRemove:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->isComplete()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->remove()Z

    :cond_0
    return-void
.end method

.method public allowCompletion()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->isRunning:Z

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->ownsEffect:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->dispose()V

    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 2

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->getY()F

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->lastDelta:F

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v1, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->update(F)V

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->lastDelta:F

    :cond_0
    iget-boolean p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->isRunning:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->isComplete()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->isRunning:Z

    :cond_1
    return-void
.end method

.method public getEffect()Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    return-object v0
.end method

.method public isAutoRemove()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->autoRemove:Z

    return v0
.end method

.method public isResetOnStart()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->resetOnStart:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->isRunning:Z

    return v0
.end method

.method protected scaleChanged()V
    .locals 4

    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleChanged()V

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->getScaleX()F

    move-result v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->getScaleY()F

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->getScaleY()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->scaleEffect(FFF)V

    return-void
.end method

.method public setAutoRemove(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->autoRemove:Z

    return-object p0
.end method

.method public setResetOnStart(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->resetOnStart:Z

    return-object p0
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->isRunning:Z

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->resetOnStart:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->reset(Z)V

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ParticleEffectActor;->particleEffect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->start()V

    return-void
.end method
