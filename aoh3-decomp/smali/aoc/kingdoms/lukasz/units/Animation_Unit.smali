.class public Laoc/kingdoms/lukasz/units/Animation_Unit;
.super Ljava/lang/Object;
.source "Animation_Unit.java"


# instance fields
.field public ANIMATION_FRAME_TIME:I

.field private animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

.field protected hitbox:Laoc/kingdoms/lukasz/units/Hitbox;

.field private iNumOfFrames:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;IILaoc/kingdoms/lukasz/units/Hitbox;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->iNumOfFrames:I

    const/16 v0, 0x30

    iput v0, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->ANIMATION_FRAME_TIME:I

    invoke-static {p1, p2, p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImageRegion(Ljava/lang/String;II)Laoc/kingdoms/lukasz/textures/ImageRegion;

    move-result-object p1

    iput-object p1, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/ImageRegion;->getHeight()I

    move-result p1

    iget-object p2, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/ImageRegion;->getRegionHeight()I

    move-result p2

    div-int/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->iNumOfFrames:I

    iput-object p4, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->hitbox:Laoc/kingdoms/lukasz/units/Hitbox;

    iput p5, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->ANIMATION_FRAME_TIME:I

    return-void
.end method


# virtual methods
.method public final drawFrame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/ImageRegion;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/ImageRegion;->getRegionWidth()I

    move-result v1

    mul-int/2addr p4, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/ImageRegion;->getRegionHeight()I

    move-result v1

    mul-int/2addr p5, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/ImageRegion;->getRegionWidth()I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/ImageRegion;->getRegionHeight()I

    move-result v2

    invoke-virtual {v0, p4, p5, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    iget-object p4, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    sget-object p5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result p5

    add-int/2addr p2, p5

    iget-object p5, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/textures/ImageRegion;->getRegionWidth()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p2, p5

    sget-object p5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result p5

    add-int/2addr p3, p5

    iget-object p5, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/textures/ImageRegion;->getRegionHeight()I

    move-result p5

    sub-int/2addr p3, p5

    invoke-virtual {p4, p1, p2, p3}, Laoc/kingdoms/lukasz/textures/ImageRegion;->drawRegion(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public final drawFrameHitboxes(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/ImageRegion;->getRegionWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->hitbox:Laoc/kingdoms/lukasz/units/Hitbox;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/units/Hitbox;->getPosX()I

    move-result v0

    add-int/2addr p2, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v0

    add-int/2addr p3, v0

    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->animation:Laoc/kingdoms/lukasz/textures/ImageRegion;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/ImageRegion;->getRegionHeight()I

    move-result v0

    sub-int/2addr p3, v0

    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->hitbox:Laoc/kingdoms/lukasz/units/Hitbox;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/units/Hitbox;->getPosY()I

    move-result v0

    add-int/2addr p3, v0

    iget-object v0, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->hitbox:Laoc/kingdoms/lukasz/units/Hitbox;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/units/Hitbox;->getWidth()I

    move-result v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->hitbox:Laoc/kingdoms/lukasz/units/Hitbox;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/units/Hitbox;->getHeight()I

    move-result v1

    invoke-static {p1, p2, p3, v0, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getNumOfFrames()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/units/Animation_Unit;->iNumOfFrames:I

    return v0
.end method
