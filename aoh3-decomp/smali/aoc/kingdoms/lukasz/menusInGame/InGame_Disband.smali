.class public Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Disband.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision; = null

.field public static armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision; = null

.field public static lTime:J = 0x0L

.field public static restartAnimation:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    new-instance v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v2, v2, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    return-void
.end method

.method public constructor <init>()V
    .locals 34

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x4

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v5, v4, 0x4

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmy;->getButtonWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v19, v5, v7

    const/4 v15, 0x0

    move v7, v15

    move v14, v7

    :goto_0
    sget-object v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v7, v8, :cond_0

    sget-object v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v14, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$1;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Cancel"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v11, -0x1

    mul-int/lit8 v7, v0, 0x2

    sub-int v20, v4, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v7, v20, v7

    div-int/lit8 v16, v7, 0x2

    const/16 v17, 0x1

    move-object v7, v13

    move-object/from16 v8, p0

    move v12, v0

    move-object/from16 v21, v13

    move v13, v1

    move/from16 v22, v14

    move/from16 v14, v16

    move/from16 v23, v2

    move v2, v15

    move/from16 v15, v17

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;Ljava/lang/String;IIIIIZ)V

    move-object/from16 v7, v21

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v1

    add-int/2addr v7, v1

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$2;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Army"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-direct {v8, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v9, v22

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    div-int/lit8 v30, v4, 0x2

    move-object v8, v15

    move-object/from16 v9, p0

    move v13, v7

    move-object v2, v14

    move/from16 v14, v30

    invoke-direct/range {v8 .. v14}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v8

    add-int/2addr v8, v1

    add-int/2addr v7, v8

    const/4 v15, 0x0

    :goto_1
    sget-object v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v15, v8, :cond_1

    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$3;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    sget-object v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v12, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v13, v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    const/16 v18, -0x1

    move-object v8, v14

    move/from16 v16, v9

    move-object/from16 v9, p0

    move/from16 v17, v13

    move/from16 v13, v19

    move-object/from16 v31, v14

    move v14, v7

    move/from16 v22, v15

    move/from16 v15, v17

    move/from16 v17, v22

    invoke-direct/range {v8 .. v18}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;Ljava/lang/String;IIIIIIII)V

    move-object/from16 v8, v31

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v8

    add-int/2addr v8, v1

    add-int/2addr v7, v8

    add-int/lit8 v15, v22, 0x1

    goto :goto_1

    :cond_1
    add-int v5, v30, v5

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmy;->getButtonWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_2
    sget-object v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v15, v7, :cond_2

    sget-object v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v14, v7

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_2
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$4;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Confirm"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v11, -0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v7, v20, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v12, v0, v7

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v20, v20, v0

    div-int/lit8 v0, v20, 0x2

    const/16 v16, 0x1

    move-object v7, v15

    move-object/from16 v8, p0

    move v13, v1

    move/from16 v32, v14

    move v14, v0

    move-object v0, v15

    move/from16 v15, v16

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    add-int/2addr v0, v1

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$5;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Disband"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v14, v32

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v24, v7

    move-object/from16 v25, p0

    move/from16 v28, v30

    move/from16 v29, v0

    invoke-direct/range {v24 .. v30}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v7, v1

    add-int/2addr v0, v7

    const/4 v7, 0x0

    :goto_3
    sget-object v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v7, v8, :cond_3

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$6;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    sget-object v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v12, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v14, v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v13, v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    const/16 v18, -0x1

    move-object v8, v15

    move-object/from16 v9, p0

    move/from16 v16, v13

    move v13, v5

    move/from16 v17, v14

    move v14, v0

    move-object/from16 v33, v15

    move/from16 v15, v17

    move/from16 v17, v7

    invoke-direct/range {v8 .. v18}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;Ljava/lang/String;IIIIIIII)V

    move-object/from16 v8, v33

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v8

    add-int/2addr v8, v1

    add-int/2addr v0, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_4
    if-ge v15, v0, :cond_5

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v5

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v7

    if-ge v2, v5, :cond_4

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v2, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v5

    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_5
    add-int/2addr v2, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->recruitArmyOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x3

    sub-int/2addr v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v4, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$7;

    const-string v9, ""

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    move-object v7, v1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v23

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method

.method public static setArmyLeft(Laoc/kingdoms/lukasz/map/army/ArmyDivision;)V
    .locals 4

    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v2, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iget v3, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    invoke-direct {v1, v2, v3, v0}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    sput-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    iput-object v0, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    new-instance v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget v1, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    iget p0, p0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->provinceID:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, p0, v2}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;-><init>(IILjava/util/List;)V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 9

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    move v8, v0

    goto :goto_0

    :cond_0
    move v8, p2

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getPosX()I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getPosX()I

    move-result v0

    add-int v1, v0, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getPosY()I

    move-result v0

    add-int v2, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getHeight()I

    move-result v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->recruitArmyOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getPosX()I

    move-result v1

    add-int v2, v1, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getHeight()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->recruitArmyOver:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e4ccccd    # 0.2f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v2, v1, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getWidth()I

    move-result v1

    div-int/lit8 v4, v1, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v2, v1, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getWidth()I

    move-result v1

    div-int/lit8 v4, v1, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object v0, p0

    move v2, v8

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    sget-boolean p1, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->restartAnimation:Z

    if-eqz p1, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->lTime:J

    :cond_0
    return-void
.end method

.method public updateLanguage()V
    .locals 3

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "DisbandUnits"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
