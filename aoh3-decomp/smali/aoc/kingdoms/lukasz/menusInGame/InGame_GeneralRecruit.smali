.class public Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_GeneralRecruit.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c


# instance fields
.field private lTime:J


# direct methods
.method public constructor <init>()V
    .locals 41

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    const-wide/16 v0, 0x0

    move-object/from16 v11, p0

    iput-wide v0, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->lTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v1, v12

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v22

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v15

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int v23, v2, v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v2, v12

    mul-int/lit8 v3, v1, 0x2

    sub-int v13, v15, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v3, v12

    sub-int v3, v13, v3

    div-int/lit8 v14, v3, 0x3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civilizationGeneralsPool:Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->updatePoolOfGenerals(I)V

    move/from16 v17, v1

    move/from16 v16, v2

    const/4 v9, 0x0

    :goto_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civilizationGeneralsPool:Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_1

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral_Assign;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civilizationGeneralsPool:Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->n:Ljava/lang/String;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civilizationGeneralsPool:Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getAttack()I

    move-result v30

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civilizationGeneralsPool:Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getDefense()I

    move-result v31

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civilizationGeneralsPool:Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->g:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civilizationGeneralsPool:Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->d:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civilizationGeneralsPool:Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->m:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civilizationGeneralsPool:Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->y:I

    const/16 v36, 0x1

    const/16 v37, 0x0

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civilizationGeneralsPool:Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->sI:Ljava/lang/String;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v12, v12, Laoc/kingdoms/lukasz/jakowski/Player/Player;->civilizationGeneralsPool:Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationGeneralsPool;->lGenerals:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getCombatExperience()I

    move-result v39

    move-object/from16 v24, v2

    move/from16 v25, v17

    move/from16 v26, v16

    move/from16 v27, v14

    move-object/from16 v28, v3

    move/from16 v29, v4

    move/from16 v32, v5

    move/from16 v33, v6

    move/from16 v34, v7

    move/from16 v35, v8

    move-object/from16 v38, v10

    invoke-direct/range {v24 .. v39}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral_Assign;-><init>(IIILjava/lang/String;IIIIIIIZLjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit$1;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Recruit"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v6, -0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int v2, v16, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v8, v2, v3

    const/4 v10, 0x1

    move-object v2, v12

    move-object/from16 v3, p0

    move/from16 v7, v17

    move/from16 v40, v9

    move v9, v14

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move/from16 v10, v40

    invoke-virtual {v2, v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    rem-int/lit8 v9, v10, 0x3

    const/4 v2, 0x2

    if-ne v9, v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    move/from16 v17, v1

    move/from16 v16, v2

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int v17, v17, v2

    :goto_1
    add-int/lit8 v9, v10, 0x1

    const/4 v12, 0x2

    move-object/from16 v11, p0

    goto/16 :goto_0

    :cond_1
    const/4 v11, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    add-int v16, v2, v3

    :cond_2
    move/from16 v12, v16

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v10, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v13, v2

    const/4 v2, 0x2

    div-int/lit8 v8, v13, 0x2

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBonus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Cost"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/GeneralManager;->getRecruitGoldCost(I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x5

    add-int v20, v6, v7

    move-object v13, v2

    move v9, v15

    move-object v15, v3

    move/from16 v17, v1

    move/from16 v18, v12

    move/from16 v19, v8

    move/from16 v21, v10

    invoke-direct/range {v13 .. v21}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBonus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "LegacyPoints"

    invoke-virtual {v3, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/GeneralManager;->getRecruitLegacyCost(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    add-int/2addr v1, v8

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v6, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    move-object v2, v13

    move v7, v12

    move v14, v9

    move v9, v1

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v12, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v22

    sub-int v1, v1, v23

    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {v2, v11, v11, v14, v3}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit$2;

    const-string v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    move-object v2, v8

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;Ljava/lang/String;ZZI)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    div-int/lit8 v15, v14, 0x2

    sub-int v4, v2, v15

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/2addr v2, v3

    add-int v22, v1, v22

    div-int/lit8 v22, v22, 0x2

    sub-int v5, v2, v22

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v2, p0

    move-object v3, v8

    move v6, v14

    move v7, v1

    move-object v8, v0

    invoke-virtual/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;)J
    .locals 2

    iget-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->lTime:J

    return-wide v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 15

    move-object v6, p0

    move-object/from16 v1, p1

    iget-wide v2, v6, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->lTime:J

    const-wide/16 v4, 0x3c

    add-long/2addr v2, v4

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x5

    sub-int v0, p3, v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v7, v6, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->lTime:J

    sub-long/2addr v3, v7

    long-to-float v3, v3

    const/high16 v4, 0x42700000    # 60.0f

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    move v3, v0

    goto :goto_0

    :cond_0
    move/from16 v3, p3

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->getPosX()I

    move-result v0

    add-int v0, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v7

    invoke-static {v1, v0, v2, v4, v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->getPosX()I

    move-result v0

    add-int v8, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->getPosY()I

    move-result v0

    add-int v9, v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v11, v0, v2

    const/4 v12, 0x0

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    move-object/from16 v7, p1

    invoke-static/range {v7 .. v14}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v7, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->getPosX()I

    move-result v0

    add-int v9, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->getPosY()I

    move-result v0

    add-int v10, v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->getWidth()I

    move-result v11

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->getHeight()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->lTime:J

    return-void
.end method

.method public updateLanguage()V
    .locals 3

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_GeneralRecruit;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "SelectGeneralToRecruit"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
