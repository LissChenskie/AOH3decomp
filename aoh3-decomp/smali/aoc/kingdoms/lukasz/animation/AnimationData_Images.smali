.class public Laoc/kingdoms/lukasz/animation/AnimationData_Images;
.super Ljava/lang/Object;
.source "AnimationData_Images.java"


# instance fields
.field protected ANIMATION_DURATION:I

.field protected ANIMATION_FRAME_TIME:I

.field protected animationType:Laoc/kingdoms/lukasz/animation/AnimationData_Type;

.field private iNumOfFrames:I

.field protected lAnimation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILaoc/kingdoms/lukasz/animation/AnimationData_Type;II)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->lAnimation:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->iNumOfFrames:I

    iput v0, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->ANIMATION_DURATION:I

    iput v0, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->ANIMATION_FRAME_TIME:I

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->lAnimation:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%03u"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->lAnimation:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->iNumOfFrames:I

    iput-object p3, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->animationType:Laoc/kingdoms/lukasz/animation/AnimationData_Type;

    iput p4, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->ANIMATION_DURATION:I

    iput p5, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->ANIMATION_FRAME_TIME:I

    return-void
.end method


# virtual methods
.method public final drawFrame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->lAnimation:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    iget-object p2, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->lAnimation:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v1, p2

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result p2

    add-int/2addr p2, p3

    iget-object p3, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->lAnimation:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    invoke-virtual {v0, p1, v1, p2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public final getNumOfFrames()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/animation/AnimationData_Images;->iNumOfFrames:I

    return v0
.end method
