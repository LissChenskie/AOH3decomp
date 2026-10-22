.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "ButtonArmyBattle.java"


# instance fields
.field public iArmyID:I

.field public iAttackWidth:I

.field public iCivID:I

.field public iDefenseWidth:I

.field public iUnitTypeID:I

.field public inBattleView:Z

.field public numOfRegiments:I

.field public unitImgWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIIZ)V
    .locals 14

    move-object v12, p0

    move/from16 v13, p3

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const/4 v0, 0x0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->unitImgWidth:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget v3, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iTextPositionX:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getButtonWidth()I

    move-result v6

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getButtonHeight()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->init(Ljava/lang/String;IIIIIIZZZZ)V

    move/from16 v0, p6

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iUnitTypeID:I

    move/from16 v0, p7

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iArmyID:I

    move/from16 v0, p2

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->numOfRegiments:I

    iput v13, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iCivID:I

    move/from16 v0, p8

    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->inBattleView:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget v5, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iUnitTypeID:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget v5, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iArmyID:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getAttack(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iAttackWidth:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget v4, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iUnitTypeID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget v4, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iArmyID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    invoke-virtual {v3, v13}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getDefense(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iDefenseWidth:I

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->armyImages:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iUnitTypeID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iArmyID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->ImageID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/map/army/ArmyManager;->armyImages:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget v4, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iUnitTypeID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget v4, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iArmyID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->ImageID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->unitImgWidth:I

    return-void
.end method

.method public static getButtonHeight()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getStatsHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getButtonWidth()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    return v0
.end method

.method public static getStatsHeight()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public buildElementHover()V
    .locals 11

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Center;

    sget-object v3, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iUnitTypeID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iArmyID:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->Name:Ljava/lang/String;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG_Center;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Attack"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ": "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iUnitTypeID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iArmyID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iCivID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getAttack(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Defense"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iUnitTypeID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iArmyID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iCivID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->getDefense(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "MovementSpeed"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iUnitTypeID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iArmyID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->MovementSpeed:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->movementSpeed:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "AttackRange"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iUnitTypeID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iArmyID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->AttackRange:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "SiegeAbility"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iUnitTypeID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iArmyID:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->SiegeProgress:F

    const/16 v6, 0x64

    invoke-static {v5, v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v5, 0x0

    sget-object v5, Landroidx/lifecycle/livedata/core/jzw/jkEBdieJhbh;->cXwDcIfMMCVJkH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iUnitTypeID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-eqz v4, :cond_2

    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iUnitTypeID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iUnitTypeID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Support"

    goto :goto_1

    :cond_1
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v5, 0x0

    sget-object v5, Lcom/badlogic/gdx/backends/android/surfaceview/JuyF/CvuNnwgYwe;->nmFEyokKDoW:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "FirstLine"

    :goto_1
    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v5, 0x0

    sget-object v5, Laoc/kingdoms/lukasz/map/technology/Bhs/fiRhHJntP;->LenBbyM:Ljava/lang/String;

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->numOfRegiments:I

    mul-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->inBattleView:Z

    if-eqz v1, :cond_3

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle$1;

    invoke-direct {v1, p0, v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle$1;-><init>(Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;Ljava/util/List;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    goto :goto_2

    :cond_3
    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    :goto_2
    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getPosY()I

    move-result v1

    add-int/2addr v1, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_1
    :try_start_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipViewPeek()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    neg-int v3, v3

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->armyImages:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iUnitTypeID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->iArmyID:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->ImageID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getPosX()I

    move-result v0

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->unitImgWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->unitImgWidth:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipViewPeek_Add(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    if-eqz p4, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getPosX()I

    move-result p4

    add-int v1, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getPosY()I

    move-result p4

    add-int v2, p4, p3

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_BOX_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxLineFrame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getIsHovered()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getPosX()I

    move-result p4

    add-int v1, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getPosY()I

    move-result p4

    add-int v2, p4, p3

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_BOX_HOVER:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxLineFrame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V

    :cond_3
    :goto_1
    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    invoke-direct {p4, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getPosY()I

    move-result p4

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int/2addr p4, v1

    add-int v3, p4, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getWidth()I

    move-result v4

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getStatsHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getPosY()I

    move-result p4

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int/2addr p4, v1

    add-int v3, p4, p3

    const/4 v4, 0x1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getStatsHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getWidth()I

    move-result v1

    add-int/2addr p4, v1

    add-int/lit8 p4, p4, -0x1

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getPosY()I

    move-result p2

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p4

    add-int/2addr p2, p4

    add-int v3, p2, p3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getStatsHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 6

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getTextToDraw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getTextWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getPosY()I

    move-result p2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p2, v0

    add-int v4, p2, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
