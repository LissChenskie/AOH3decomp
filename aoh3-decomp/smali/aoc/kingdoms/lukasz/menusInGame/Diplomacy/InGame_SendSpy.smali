.class public Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_SendSpy.java"


# static fields
.field public static final ANIMATION_TIME:I = 0x3c

.field public static iCivID:I

.field public static lTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 31

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sput p1, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->iCivID:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->allianceBig:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v5, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v8

    mul-int/lit8 v9, v7, 0x2

    add-int v16, v8, v9

    div-int/lit8 v17, v4, 0x2

    sub-int v8, v17, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    div-int/lit8 v9, v5, 0x2

    sub-int/2addr v8, v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    sub-int v18, v8, v10

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sub-int v11, v17, v9

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    add-int/2addr v7, v3

    const/4 v15, 0x1

    invoke-direct {v8, v10, v11, v7, v15}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;-><init>(IIIZ)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->iCivID:I

    add-int v9, v17, v9

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v9

    invoke-direct {v8, v10, v11, v7, v15}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;-><init>(IIIZ)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v12, -0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v9, v7

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    add-int v13, v9, v7

    move-object v7, v14

    move-object v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v3

    move-object/from16 v19, v14

    move/from16 v14, v18

    move/from16 v20, v2

    move v2, v15

    move/from16 v15, v16

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;-><init>(ILjava/lang/String;IIIIII)V

    move-object/from16 v7, v19

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v11, -0x1

    move-object v7, v15

    move v12, v0

    move-object v2, v15

    move/from16 v15, v16

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;-><init>(ILjava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy$1;

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->spyBig:I

    mul-int/lit8 v7, v0, 0x2

    sub-int v15, v4, v7

    move-object v7, v2

    move-object/from16 v8, p0

    move v10, v0

    move v11, v3

    move v12, v15

    move/from16 v13, v16

    move v14, v5

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v5

    add-int/2addr v3, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;->getButtonWidth()I

    move-result v2

    add-int/2addr v2, v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    sub-int v5, v17, v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;->getButtonHeight()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x3

    sget v8, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy$2;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Opinion"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/FBO/idYW/HjHDSSkYG;->mtyjzaLQBT:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->iCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->getRelation(I)F

    move-result v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    sget v24, Laoc/kingdoms/lukasz/textures/Images;->relations:I

    mul-int/lit8 v10, v5, 0x2

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v12, v12, 0x2

    mul-int/lit8 v12, v12, 0x2

    add-int v27, v10, v12

    const/16 v30, 0x0

    move-object/from16 v21, v9

    move-object/from16 v22, p0

    move/from16 v25, v2

    move/from16 v26, v3

    move/from16 v28, v7

    move/from16 v29, v8

    invoke-direct/range {v21 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy$3;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v14, ""

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    sget v24, Laoc/kingdoms/lukasz/textures/Images;->regimentsLimit:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v3

    add-int v26, v10, v7

    move-object/from16 v21, v9

    move/from16 v27, v5

    invoke-direct/range {v21 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy$4;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    sget v24, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v7

    mul-int/lit8 v10, v10, 0x2

    add-int v26, v3, v10

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy$5;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->iCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iRegimentsLimit:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    sget v24, Laoc/kingdoms/lukasz/textures/Images;->regimentsLimit:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v2

    add-int v25, v10, v5

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v10, v3

    add-int v26, v10, v7

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy$6;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->iCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    sget v24, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v10

    add-int v25, v2, v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    mul-int/lit8 v2, v2, 0x2

    add-int v26, v3, v2

    move-object/from16 v21, v9

    invoke-direct/range {v21 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/RulersManager;->loadRulerIMG_DiplomacyLeft(I)V

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/RulersManager;->loadRulerIMG_DiplomacyRight(I)V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v0

    invoke-direct {v2, v5, v7, v3}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;-><init>(III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy$7;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->iCivID:I

    sub-int v7, v4, v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;->getButtonWidth()I

    move-result v8

    sub-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v7, v8

    move-object/from16 v13, p0

    invoke-direct {v2, v13, v5, v7, v3}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v5

    add-int/2addr v3, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v5

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v15, v5

    div-int/lit8 v27, v15, 0x2

    new-instance v5, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBonus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Cost"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->iCivID:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->sendSpyCost(II)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x5

    add-int v15, v7, v11

    move-object v7, v5

    move v11, v0

    move v12, v3

    move/from16 v13, v27

    move/from16 v16, v1

    move-object v1, v14

    move v14, v15

    move v15, v2

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBonus;

    const-string v22, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->iCivID:I

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->sendSpyTime(II)I

    move-result v8

    const-string v9, "DaysX"

    invoke-virtual {v1, v9, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    sget v24, Laoc/kingdoms/lukasz/textures/Images;->time:I

    add-int v1, v0, v27

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v25, v1, v7

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x5

    add-int v28, v1, v7

    move-object/from16 v21, v5

    move/from16 v26, v3

    move/from16 v29, v2

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v3, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy$8;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Cancel"

    invoke-virtual {v2, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget v24, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v25, -0x1

    mul-int/lit8 v2, v0, 0x2

    sub-int v2, v4, v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v5, v5, 0x2

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    div-int/lit8 v28, v5, 0x2

    const/16 v29, 0x1

    move-object/from16 v21, v1

    move-object/from16 v22, p0

    move/from16 v26, v0

    move/from16 v27, v3

    invoke-direct/range {v21 .. v29}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy$9;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "SendSpy"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget v24, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v5, v5, 0x2

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v2, v5

    div-int/lit8 v5, v5, 0x2

    add-int v26, v0, v5

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    div-int/lit8 v28, v2, 0x2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->iCivID:I

    invoke-static {v2, v5}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->sendSpyCost(II)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    const/4 v15, 0x0

    if-ltz v0, :cond_0

    const/16 v29, 0x1

    goto :goto_0

    :cond_0
    move/from16 v29, v15

    :goto_0
    sget v30, Laoc/kingdoms/lukasz/textures/Images;->spy:I

    move-object/from16 v21, v1

    move-object/from16 v22, p0

    move/from16 v27, v3

    invoke-direct/range {v21 .. v30}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v16

    sub-int v0, v0, v20

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v3, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {v0, v15, v15, v4, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy$10;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "EspionageMission"

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    const/16 v25, 0x0

    sget v26, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    move-object/from16 v21, v1

    invoke-direct/range {v21 .. v26}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;Ljava/lang/String;ZZI)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sub-int v2, v0, v17

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v0, v0

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v3

    float-to-int v0, v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    add-int v7, v5, v16

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v3, v7

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method

.method public static confirm()V
    .locals 3

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->startEspionageMission(I)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->SPY:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Steam/SteamAchievementsManager;->unlockAchievement(Ljava/lang/String;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->iCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "EspionageMission"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoDiplomacy:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Right()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 14

    invoke-static {}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->updateInAnimation()V

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    sub-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    move v3, v0

    goto :goto_0

    :cond_0
    move/from16 v3, p3

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->getPosX()I

    move-result v0

    add-int v0, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v2, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->getPosX()I

    move-result v0

    add-int v6, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->getPosY()I

    move-result v0

    add-int v7, v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v9, v0, v1

    const/4 v10, 0x0

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    move-object v5, p1

    invoke-static/range {v5 .. v12}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->getPosX()I

    move-result v0

    add-int v7, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->getPosY()I

    move-result v0

    add-int v8, v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    move-object v0, p0

    move-object v1, p1

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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_SendSpy;->lTime:J

    invoke-static {}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->updateAnimationTime()V

    return-void
.end method
