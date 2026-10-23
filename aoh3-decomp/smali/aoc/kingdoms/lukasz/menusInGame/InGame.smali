.class public Laoc/kingdoms/lukasz/menusInGame/InGame;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame.java"


# static fields
.field public static ONLY_MAP_MODE:Z

.field public static drawOver:Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;

.field public static hideAnimation:Z

.field public static iMinimapPosY:I

.field public static inAnimation:Z

.field public static leftSideBarInnerWidth:I

.field public static leftSideBarPadding:I

.field public static outlinerExtraClassic:I

.field public static outlinerExtraUQ:I

.field public static outlinerExtraX:I

.field public static rankPosXW:I

.field public static topBar2PosY:I

.field public static topRightPadding:I

.field public static topStatsHeight:I

.field public static topStatsPadding:I


# instance fields
.field public dateElementID:I

.field public lastStatElementID:I

.field public lastStatElementID2:I

.field public minimapAnimationTime:I

.field public minimapElementID:I

.field public minimapTime:J

.field public minusElementID:I

.field public outlinerElementID:I

.field public plusElementID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->drawOver:Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;

    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->ONLY_MAP_MODE:Z

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->rankPosXW:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->topStatsPadding:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->topRightPadding:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->topStatsHeight:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->topBar2PosY:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->leftSideBarPadding:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->leftSideBarInnerWidth:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerExtraX:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerExtraClassic:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerExtraUQ:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->inAnimation:Z

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->hideAnimation:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 18

    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, v9, Laoc/kingdoms/lukasz/menusInGame/InGame;->minimapTime:J

    const/16 v0, 0x113

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/InGame;->minimapAnimationTime:I

    const/4 v10, 0x0

    iput v10, v9, Laoc/kingdoms/lukasz/menusInGame/InGame;->lastStatElementID:I

    iput v10, v9, Laoc/kingdoms/lukasz/menusInGame/InGame;->lastStatElementID2:I

    iput v10, v9, Laoc/kingdoms/lukasz/menusInGame/InGame;->dateElementID:I

    iput v10, v9, Laoc/kingdoms/lukasz/menusInGame/InGame;->plusElementID:I

    iput v10, v9, Laoc/kingdoms/lukasz/menusInGame/InGame;->minusElementID:I

    iput v10, v9, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerElementID:I

    iput v10, v9, Laoc/kingdoms/lukasz/menusInGame/InGame;->minimapElementID:I

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sget v12, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    sput v10, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/InGame$1;

    const/4 v13, 0x1

    invoke-direct {v0, v9, v10, v10, v13}, Laoc/kingdoms/lukasz/menusInGame/InGame$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame;IIZ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v1, v1, 0x2

    add-int v14, v0, v1

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/InGame$2;

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    const-string v3, ""

    const-string v4, ""

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v0, v7

    move-object/from16 v1, p0

    move v5, v14

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/InGame$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame;ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/InGame$3;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    const-string v3, ""

    const-string v4, ""

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/InGame$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame;ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/InGame$4;

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    const-string v3, ""

    const-string v4, ""

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/InGame$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame;ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/InGame$5;

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    const-string v3, ""

    const-string v4, ""

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/InGame$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame;ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/InGame$6;

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->diplomacy:I

    const-string v3, ""

    const-string v4, ""

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/InGame$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame;ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/InGame$7;

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->nuke:I

    const-string v3, ""

    const-string v4, ""

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/InGame$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame;ILjava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/InGame;->lastStatElementID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v2, "999"

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->victoryPoints:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->rankPosXW:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v2, "99"

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->victoryPoints:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int v15, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v16, v0, 0x5

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/InGame$8;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRanking_IMG_STAR_CIVID(I)I

    move-result v3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    sget v6, Laoc/kingdoms/lukasz/menusInGame/InGame;->rankPosXW:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rankGold:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v17

    move-object v0, v8

    move-object/from16 v1, p0

    move v4, v14

    move/from16 v7, v16

    move-object v10, v8

    move/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame;Ljava/lang/String;IIIIII)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame$9;

    const-string v2, "0"

    const/4 v3, 0x0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int/2addr v14, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v4, v14, v0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rankGold:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v8

    move-object v0, v10

    move-object/from16 v1, p0

    move v6, v15

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame;Ljava/lang/String;IIIIII)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/InGame;->lastStatElementID2:I

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v0

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v13

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->topStatsPadding:I

    add-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->rankPosXW:I

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/InGame$10;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->plus:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame;->topStatsHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v9, v1, v3, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame;III)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/InGame;->plusElementID:I

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/InGame$11;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getCurrentDate()Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame;->topStatsHeight:I

    invoke-direct {v0, v9, v1, v3, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame;Ljava/lang/String;II)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/InGame;->dateElementID:I

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/InGame$12;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->minus:I

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame;->topStatsHeight:I

    invoke-direct {v0, v9, v1, v3, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame;III)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/InGame;->minusElementID:I

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/InGame$13;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->topStatsHeight:I

    invoke-direct {v0, v9, v3, v1}, Laoc/kingdoms/lukasz/menusInGame/InGame$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame;II)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerElementID:I

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/InGame$14;

    invoke-direct {v0, v9, v3, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame;II)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v13

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/InGame;->minimapElementID:I

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/InGame$15;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->arrowUpDown:I

    invoke-direct {v0, v9, v1}, Laoc/kingdoms/lukasz/menusInGame/InGame$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame;I)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v6, v11

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/InGame;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    sput v12, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->MOBILE_HIDE_MINIMAP:Z

    if-eqz v0, :cond_0

    iget v0, v9, Laoc/kingdoms/lukasz/menusInGame/InGame;->minimapElementID:I

    invoke-virtual {v9, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->inAnimation:Z

    sput-boolean v13, Laoc/kingdoms/lukasz/menusInGame/InGame;->hideAnimation:Z

    :cond_0
    return-void
.end method

.method public static action1()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/CFG;->brushTool:Z

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setVisible(ZLaoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;)V

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    goto :goto_0

    :cond_1
    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->idCourt:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->modeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Court()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->setRegroupArmyMode(Z)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_PopUp()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Laoc/kingdoms/lukasz/menu/MenuManager;->IN_GAME_POP_UP_MENU_ID:I

    const/16 v2, 0x23

    if-ne v1, v2, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static action2()V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setVisible(ZLaoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;)V

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Budget()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Budget(Z)V

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Budget()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Budget(Z)V

    :goto_0
    return-void
.end method

.method public static action3()V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setVisible(ZLaoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;)V

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_RecruitArmy()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_RecruitArmy(Z)V

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Armies()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Armies(Z)V

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_RecruitArmy()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_RecruitArmy(Z)V

    :goto_0
    return-void
.end method

.method public static action4()V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setVisible(ZLaoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;)V

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyTree()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TechnologyTree(Z)V

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyChoose()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyChoose;->IN_TECHNOLOGY_CHOOSE:Z

    if-eqz v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TechnologyChoose(Z)V

    goto :goto_0

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_TechnologyChoose(ZZ)V

    :goto_0
    return-void
.end method

.method public static action5()V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setVisible(ZLaoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;)V

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RECRUIT_ARMY:I

    if-ne v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Legacies;->iActiveCivID:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/menus/MainMenu;->bgTIME:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Laoc/kingdoms/lukasz/menus/MainMenu;->bgTIME_CHANGE:J

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menus/MainMenu;->bgAlpha:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->IN_GAME_LEGACIES:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameLegacies()V

    return-void
.end method

.method public static action6()V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getColorPicker()Laoc/kingdoms/lukasz/menu/ColorPicker;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setVisible(ZLaoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;)V

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Civ()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Civ(Z)V

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ()V

    :goto_0
    return-void
.end method

.method public static actionCurrent()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CurrentSituation()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Laoc/kingdoms/lukasz/menu/MenuManager;->currentSituationMode:Z

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->currentSituationNum:I

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CurrentSituation(Z)V

    goto :goto_0

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CurrentSituation()V

    :goto_0
    return-void
.end method

.method public static actionRanking()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_CurrentSituation()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Laoc/kingdoms/lukasz/menu/MenuManager;->currentSituationMode:Z

    if-nez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_CurrentSituation(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Compare;->civLeft_Rank:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Compare;->civRight_Rank:I

    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;->sSearch:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CurrentSituation_Ranking()V

    :goto_0
    return-void
.end method

.method public static final getDatePadding()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    return v0
.end method

.method public static initInGame()V
    .locals 3

    const-string v0, "top/topStatsAndRightPadding.txt"

    const-string v1, "ui/"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRescouresPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->topStatsPadding:I

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->topRightPadding:I

    const/4 v1, 0x2

    aget-object v2, v0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/menusInGame/InGame;->topStatsHeight:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v2, v1

    sput v2, Laoc/kingdoms/lukasz/menusInGame/InGame;->topBar2PosY:I

    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->leftSideBarPadding:I

    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->leftSideBarInnerWidth:I

    const/4 v1, 0x6

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerExtraClassic:I

    const/4 v1, 0x7

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerExtraUQ:I
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final updateDrawOver()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_RECRUIT_ARMY:I

    if-eq v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NEW_ARMY_CHOOSE_PROVINCE:I

    if-eq v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_NUKE_CHOOSE_PROVINCE:I

    if-eq v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_COLONIZE_CHOOSE_PROVINCE:I

    if-eq v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_MERCENARIES_CHOOSE_PROVINCE:I

    if-eq v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INVEST_IN_ECONOMY:I

    if-eq v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVELOP_INFRASTRUCTURE:I

    if-eq v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_TAX_EFFICIENCY:I

    if-eq v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_MANPOWER:I

    if-eq v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_MOVE_CAPITAL:I

    if-eq v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_GROWTH_RATE:I

    if-eq v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    if-eq v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CONVERT_RELIGION:I

    if-eq v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY_IMPROVE_RELATIONS:I

    if-eq v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY_DAMAGE_RELATIONS:I

    if-eq v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CORE:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->drawOver:Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RecruitArmy;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver_RecruitArmy;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->drawOver:Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;

    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame;->minimapAnimation()V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v12

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->enableHideSideMenu:Z

    if-eqz v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->leftSideBar:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->IN_GAME_LEFT_PADDING_EXTRA:I

    add-int v3, v10, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->leftSideBar:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->HEIGHT:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    :cond_1
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v3, v1, v10

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->topBar2PosY:I

    iget v2, v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->lastStatElementID2:I

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v4, v1, v11

    iget v1, v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->lastStatElementID2:I

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v1

    iget v2, v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->lastStatElementID2:I

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame;->topStatsPadding:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v5, v1, v2

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v12

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int v3, v1, v10

    iget v1, v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->lastStatElementID:I

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->lastStatElementID:I

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v1

    iget v2, v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->lastStatElementID:I

    goto :goto_0

    :cond_2
    iget v1, v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->lastStatElementID:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v1

    iget v2, v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->lastStatElementID:I

    add-int/lit8 v2, v2, -0x1

    :goto_0
    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame;->topStatsPadding:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v5, v1, v2

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, v12

    move-object/from16 v2, p1

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    iget v1, v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerElementID:I

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame;->topRightPadding:I

    sub-int/2addr v1, v2

    add-int v3, v1, v10

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    iget v2, v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->outlinerElementID:I

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/menusInGame/InGame;->topRightPadding:I

    sub-int/2addr v2, v4

    sub-int v5, v1, v2

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v1, v12

    move-object/from16 v2, p1

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget v1, v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->minusElementID:I

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getDatePadding()I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame;->topRightPadding:I

    sub-int v13, v1, v2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->topStats2:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    add-int v14, v13, v10

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int v5, v2, v13

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    move v3, v14

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    if-eqz v1, :cond_3

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3e333333    # 0.175f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3d4ccccd    # 0.05f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXYVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int v5, v2, v13

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v2, p1

    move v3, v14

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int v5, v2, v13

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v1, v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->minimapElementID:I

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->minimapElementID:I

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr v1, v2

    add-int/2addr v1, v10

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame_MapModesPosY()I

    move-result v2

    add-int/2addr v2, v11

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v4

    sub-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame_MapModesPosY()I

    move-result v5

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v4, v5

    invoke-static {v9, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxBIG_Red:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr v2, v3

    add-int v3, v2, v10

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame_MapModesPosY()I

    move-result v2

    add-int v4, v2, v11

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v5, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame_MapModesPosY()I

    move-result v6

    sub-int/2addr v2, v6

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3e19999a    # 0.15f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int v4, v2, v11

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    sub-int/2addr v2, v4

    add-int v4, v2, v11

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x4

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e4ccccd    # 0.2f

    const/4 v13, 0x0

    invoke-direct {v1, v13, v13, v13, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v4

    add-int v4, v2, v11

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v1, v13, v13, v13, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    add-int v4, v2, v11

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxBIG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr v2, v3

    add-int v3, v2, v10

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    add-int v4, v2, v11

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v5, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v6

    sub-int v6, v2, v6

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v8, v2, 0x2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    :cond_4
    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    invoke-static/range {p1 .. p3}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_OngoingBattles;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->drawOver:Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;

    invoke-virtual {v1, v9, v10, v11}, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playRandomSounds()V

    return-void
.end method

.method public final getRightButtonsPadding()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getStatsPadding()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final minimapAnimation()V
    .locals 7

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->inAnimation:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->hideAnimation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    iget v2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame;->minimapElementID:I

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame;->minimapElementID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v4, p0, Laoc/kingdoms/lukasz/menusInGame/InGame;->minimapTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget v3, p0, Laoc/kingdoms/lukasz/menusInGame/InGame;->minimapAnimationTime:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    mul-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    iget v2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame;->minimapElementID:I

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    if-le v0, v2, :cond_3

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame;->minimapElementID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->inAnimation:Z

    goto :goto_0

    :cond_0
    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame;->minimapElementID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->inAnimation:Z

    goto :goto_0

    :cond_1
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    if-lez v0, :cond_2

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame;->minimapElementID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Laoc/kingdoms/lukasz/menusInGame/InGame;->minimapElementID:I

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v5, p0, Laoc/kingdoms/lukasz/menusInGame/InGame;->minimapTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    iget v4, p0, Laoc/kingdoms/lukasz/menusInGame/InGame;->minimapAnimationTime:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    if-gez v0, :cond_3

    sput v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->inAnimation:Z

    goto :goto_0

    :cond_2
    sput v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->iMinimapPosY:I

    sput-boolean v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->inAnimation:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onHovered()V
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGame()V

    return-void
.end method
