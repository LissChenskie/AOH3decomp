.class public Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_BattleReport.java"


# static fields
.field public static final ANIMATION_TIME:I = 0x3c

.field public static colorBar:Lcom/badlogic/gdx/graphics/Color;

.field public static lTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->colorBar:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 33

    move/from16 v0, p1

    const-string v1, ""

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    add-int v5, v3, v4

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    :try_start_0
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportLeft:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iCivID:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportRight:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v7, v7, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iCivID:I

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->battleBig:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x4

    add-int v18, v9, v10

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    mul-int/lit8 v11, v9, 0x2

    add-int v19, v10, v11

    div-int/lit8 v10, v6, 0x2

    sub-int/2addr v10, v2

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    div-int/lit8 v11, v18, 0x2

    sub-int/2addr v10, v11

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v11

    sub-int v20, v10, v11

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-boolean v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleReport;->playerWon:Z

    if-eqz v10, :cond_0

    sget-object v10, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_GREEN:Lcom/badlogic/gdx/graphics/Color;

    sput-object v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->colorBar:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    sget-object v10, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->COLOR_RED:Lcom/badlogic/gdx/graphics/Color;

    sput-object v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->colorBar:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    new-instance v10, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;

    div-int/lit8 v11, v6, 0x2

    div-int/lit8 v12, v18, 0x2

    sub-int/2addr v11, v12

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v12, 0x2

    sub-int/2addr v11, v12

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v12

    sub-int/2addr v11, v12

    add-int/2addr v9, v3

    const/4 v15, 0x1

    invoke-direct {v10, v4, v11, v9, v15}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;-><init>(IIIZ)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;

    div-int/lit8 v11, v6, 0x2

    div-int/lit8 v12, v18, 0x2

    add-int/2addr v11, v12

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    invoke-direct {v10, v7, v11, v9, v15}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;-><init>(IIIZ)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v13, -0x1

    div-int/lit8 v9, v6, 0x2

    div-int/lit8 v10, v18, 0x2

    add-int/2addr v9, v10

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    add-int v16, v9, v10

    move-object v9, v14

    move v10, v7

    move-object/from16 v21, v14

    move/from16 v14, v16

    move/from16 v22, v15

    move v15, v3

    move/from16 v16, v20

    move/from16 v17, v19

    invoke-direct/range {v9 .. v17}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;-><init>(ILjava/lang/String;IIIIII)V

    move-object/from16 v9, v21

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v13, -0x1

    move-object v9, v15

    move v10, v4

    move v14, v2

    move-object/from16 v23, v15

    move v15, v3

    move/from16 v16, v20

    move/from16 v17, v19

    invoke-direct/range {v9 .. v17}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;-><init>(ILjava/lang/String;IIIIII)V

    move-object/from16 v9, v23

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$1;

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->battleBig:I

    mul-int/lit8 v9, v2, 0x2

    sub-int v14, v6, v9

    move-object v9, v15

    move-object/from16 v10, p0

    move v12, v2

    move v13, v3

    move/from16 v17, v5

    move-object v5, v15

    move/from16 v15, v19

    move/from16 v16, v18

    invoke-direct/range {v9 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;IIIIII)V

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v9

    add-int/2addr v3, v5

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;->getButtonWidth()I

    move-result v5

    add-int/2addr v5, v2

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v9

    div-int/lit8 v9, v6, 0x2

    sub-int/2addr v9, v5

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x3

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x4

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v11

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    new-instance v12, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialWarscore;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "WarScore"

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ": "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v14, v14, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget v14, v14, Laoc/kingdoms/lukasz/map/battles/BattleReport;->fWarScore:F

    const/16 v15, 0x64

    invoke-static {v14, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v27, -0x1

    mul-int/lit8 v13, v9, 0x2

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v30, v13, v14

    const/16 v32, 0x0

    move-object/from16 v23, v12

    move/from16 v28, v5

    move/from16 v29, v3

    move/from16 v31, v10

    invoke-direct/range {v23 .. v32}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_SpecialWarscore;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIII)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$2;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v14, v14, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportLeft:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v14, v14, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iSoldiers:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v13, v3

    add-int v28, v13, v10

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v13, v13, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportLeft:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v13, v13, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iSoldiers:I

    move-object/from16 v23, v12

    move-object/from16 v24, p0

    move/from16 v27, v5

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v32, v13

    invoke-direct/range {v23 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;Ljava/lang/String;IIIIIII)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$3;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v14, v14, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportLeft:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v14, v14, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iCasualties:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/textures/Images;->skull:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v13, v10

    mul-int/lit8 v13, v13, 0x2

    add-int v28, v3, v13

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v13, v13, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportLeft:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v13, v13, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iCasualties:I

    move-object/from16 v23, v12

    move-object/from16 v24, p0

    move/from16 v27, v5

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v32, v13

    invoke-direct/range {v23 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;Ljava/lang/String;IIIIIII)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$4;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v14, v14, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportLeft:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v14, v14, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iRetreated:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/textures/Images;->retreat:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v13, v10

    mul-int/lit8 v13, v13, 0x3

    add-int v28, v3, v13

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v13, v13, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportLeft:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v13, v13, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iRetreated:I

    move-object/from16 v23, v12

    move-object/from16 v24, p0

    move/from16 v27, v5

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v32, v13

    invoke-direct/range {v23 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;Ljava/lang/String;IIIIIII)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$5;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v14, v14, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportRight:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v14, v14, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iSoldiers:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v13, v5

    add-int v27, v13, v9

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v13, v3

    add-int v28, v13, v10

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v13, v13, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportRight:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v13, v13, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iSoldiers:I

    move-object/from16 v23, v12

    move-object/from16 v24, p0

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v32, v13

    invoke-direct/range {v23 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;Ljava/lang/String;IIIIIII)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$6;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v14, v14, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportRight:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v14, v14, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iCasualties:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/textures/Images;->skull:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v13, v5

    add-int v27, v13, v9

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v13, v10

    mul-int/lit8 v13, v13, 0x2

    add-int v28, v3, v13

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v13, v13, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportRight:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v13, v13, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iCasualties:I

    move-object/from16 v23, v12

    move-object/from16 v24, p0

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v32, v13

    invoke-direct/range {v23 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;Ljava/lang/String;IIIIIII)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$7;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportRight:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iRetreated:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/textures/Images;->retreat:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v1

    add-int v27, v5, v9

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v10

    mul-int/lit8 v1, v1, 0x3

    add-int v28, v3, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleReport;->civReportRight:Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleReport$CivReport;->iRetreated:I

    move-object/from16 v23, v12

    move-object/from16 v24, p0

    move/from16 v29, v9

    move/from16 v30, v10

    move/from16 v31, v11

    move/from16 v32, v1

    invoke-direct/range {v23 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;Ljava/lang/String;IIIIIII)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Laoc/kingdoms/lukasz/map/RulersManager;->loadRulerIMG_DiplomacyLeft(I)V

    invoke-static {v7}, Laoc/kingdoms/lukasz/map/RulersManager;->loadRulerIMG_DiplomacyRight(I)V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;

    invoke-direct {v1, v4, v2, v3}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;-><init>(III)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$8;

    sub-int v4, v6, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler_Diplomacy;->getButtonWidth()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    sub-int/2addr v4, v5

    move-object/from16 v15, p0

    :try_start_1
    invoke-direct {v1, v15, v7, v4, v3}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;III)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    add-int/2addr v3, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v1

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$9;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Victorious"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    const/16 v27, -0x1

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-boolean v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleReport;->leftSideWon:Z

    if-eqz v4, :cond_1

    move/from16 v28, v2

    goto :goto_1

    :cond_1
    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v2

    mul-int/lit8 v5, v2, 0x2

    sub-int v5, v6, v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v7, v7, 0x2

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move/from16 v28, v4

    :goto_1
    mul-int/lit8 v4, v2, 0x2

    sub-int v4, v6, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v5, v5, 0x2

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    div-int/lit8 v30, v5, 0x2

    sget v31, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    const/16 v32, 0x0

    move-object/from16 v23, v1

    move-object/from16 v24, p0

    move/from16 v29, v3

    invoke-direct/range {v23 .. v32}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;Ljava/lang/String;IIIIIII)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$10;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Close"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sget v26, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v27, -0x1

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget-boolean v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleReport;->leftSideWon:Z

    if-eqz v5, :cond_2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v5, v5, 0x2

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    :cond_2
    move/from16 v28, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v4, v2

    div-int/lit8 v30, v4, 0x2

    const/16 v31, 0x1

    move-object/from16 v23, v1

    move-object/from16 v24, p0

    move/from16 v29, v3

    invoke-direct/range {v23 .. v31}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v3, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v17

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v3, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v6, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$11;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "BattleOf"

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->lBattleReports:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleReport;

    iget v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleReport;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    move-object v9, v3

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;Ljava/lang/String;ZZI)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v6, 0x2

    sub-int v4, v0, v1

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v2, p0

    move/from16 v5, v17

    invoke-virtual/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v15, p0

    :goto_2
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 14

    invoke-static {}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->updateInAnimation()V

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->lTime:J

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
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getPosX()I

    move-result v0

    add-int v0, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v2, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getPosX()I

    move-result v0

    add-int v6, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getPosY()I

    move-result v0

    add-int v7, v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getHeight()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getPosX()I

    move-result v0

    add-int v7, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getPosY()I

    move-result v0

    add-int v8, v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->getHeight()I

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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleReport;->lTime:J

    invoke-static {}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->updateAnimationTime()V

    return-void
.end method
