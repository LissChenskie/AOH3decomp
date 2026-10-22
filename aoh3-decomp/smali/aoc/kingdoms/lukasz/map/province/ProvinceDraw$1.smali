.class Laoc/kingdoms/lukasz/map/province/ProvinceDraw$1;
.super Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawExtraDetails;
.source "ProvinceDraw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->updateDrawExtraDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawExtraDetails;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 14

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyRecruitSize()I

    move-result v2

    if-ge v1, v2, :cond_2

    move v2, v0

    :goto_1
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->armyImages:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->ImageID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v4, 0x84c0

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMapMask:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    mul-float/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v6

    mul-float/2addr v5, v6

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    add-int/lit8 v7, v2, 0x1

    mul-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    mul-int/lit8 v6, v7, 0x1

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, p1, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    mul-float/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v5

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v5, v8

    int-to-float v5, v5

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v8

    mul-float/2addr v5, v8

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v5, v8

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v8

    mul-int/2addr v8, v7

    int-to-float v8, v8

    sub-float/2addr v5, v8

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, p1, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBarBG:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v9

    mul-float/2addr v8, v9

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v8, v3

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    iget v10, v10, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-float/2addr v9, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    mul-int/2addr v10, v7

    int-to-float v10, v10

    sub-float/2addr v9, v10

    sub-float/2addr v9, v6

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v4

    invoke-virtual {v5, p1, v8, v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object v5, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->progressBar:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v5

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v5, v9

    int-to-float v5, v5

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v9

    mul-float/2addr v5, v9

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    sub-float/2addr v5, v9

    float-to-int v5, v5

    add-int v10, v3, v5

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    mul-float/2addr v3, v5

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    mul-int/2addr v5, v7

    int-to-float v5, v5

    sub-float/2addr v3, v5

    sub-float/2addr v3, v6

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    float-to-int v3, v3

    add-int v11, v4, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->RecruitmentTime:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->timeLeft:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->unitID:I

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->armyID:I

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->RecruitmentTime:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    float-to-int v12, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrameMask:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v13

    move-object v9, p1

    invoke-virtual/range {v8 .. v13}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getTranslateProvincePosX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v5, v5, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftX:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v5

    mul-float/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapCoords;->getPosY()I

    move-result v5

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lArmyRecruit:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyRecruit;->provinceID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    iget v8, v8, Laoc/kingdoms/lukasz/map/province/Province;->iCenterShiftY:I

    add-int/2addr v5, v8

    int-to-float v5, v5

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v8

    mul-float/2addr v5, v8

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->getArmyHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v5, v8

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v8

    mul-int/2addr v8, v7

    int-to-float v7, v8

    sub-float/2addr v5, v7

    sub-float/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameMap:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->progressBarFrame:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, p1, v4, v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method
