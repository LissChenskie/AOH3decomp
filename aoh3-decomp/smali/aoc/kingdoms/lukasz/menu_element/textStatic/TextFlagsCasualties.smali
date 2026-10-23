.class public Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "TextFlagsCasualties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;
    }
.end annotation


# instance fields
.field public defenders:Z

.field public iCasualtiesHeight:I

.field public iCasualtiesWidth:I

.field public iconHeight:I

.field public iconHeight2:I

.field public iconHeight3:I

.field public iconWidth:I

.field public iconWidth2:I

.field public iconWidth3:I

.field public sCasualties:Ljava/lang/String;

.field public sLeft:Ljava/lang/String;

.field private tRegiments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    .locals 14

    move-object v12, p0

    move-object/from16 v13, p3

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v3, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->init(Ljava/lang/String;IIIIIIZZZZ)V

    move/from16 v0, p8

    iput-boolean v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->defenders:Z

    move-object/from16 v0, p2

    iput-object v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->sLeft:Ljava/lang/String;

    iput-object v13, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->sCasualties:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, v13}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iCasualtiesWidth:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iCasualtiesHeight:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->skull:I

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getImageScale(I)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->skull:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iconWidth:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->skull:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iconHeight:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->retreat:I

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getImageScale(I)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->retreat:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iconWidth3:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->retreat:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iconHeight3:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getImageScale(I)F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iconWidth2:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iconHeight2:I

    return-void
.end method

.method private final getImageScale()F
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->CIV_FLAG_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private final getImageScale(I)F
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public addRegiment(III)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v2, v2, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v2, v2, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->armyID:I

    if-ne v2, p2, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget p2, p1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->numOfUnits:I

    add-int/2addr p2, p3

    iput p2, p1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->numOfUnits:I

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    invoke-direct {v1, p1, p2, p3}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public buildElementHover()V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "NumberOfUnitsOnTheBattlefield"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getText()Ljava/lang/String;

    move-result-object v4

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x0

    invoke-direct {v3, v4, v6, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    const/4 v4, 0x3

    const-string v6, ""

    if-ltz v3, :cond_11

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-boolean v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->defenders:Z

    if-eqz v3, :cond_3

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v9, v7

    :goto_0
    if-ge v9, v3, :cond_1

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_0

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v13, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    invoke-virtual {v0, v10, v11, v12}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->addRegiment(III)V

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v9, v7

    :goto_1
    if-ge v9, v3, :cond_7

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v13, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    invoke-virtual {v0, v10, v11, v12}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->addRegiment(III)V

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v9, v7

    :goto_2
    if-ge v9, v3, :cond_5

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_4

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v13, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    invoke-virtual {v0, v10, v11, v12}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->addRegiment(III)V

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v9, v7

    :goto_3
    if-ge v9, v3, :cond_7

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_6

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v13, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    invoke-virtual {v0, v10, v11, v12}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->addRegiment(III)V

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v11, v7

    :goto_4
    if-ge v11, v10, :cond_8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_8
    :goto_5
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_c

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    move v12, v7

    const/4 v11, 0x1

    :goto_6
    if-ge v11, v10, :cond_b

    iget-object v13, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v13, v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    iget-object v14, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v14, v14, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    if-le v13, v14, :cond_9

    goto :goto_7

    :cond_9
    iget-object v13, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v13, v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    iget-object v14, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v14, v14, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    if-ne v13, v14, :cond_a

    iget-object v13, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v13, v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->armyID:I

    iget-object v14, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v14, v14, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->armyID:I

    if-le v13, v14, :cond_a

    :goto_7
    move v12, v11

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    :cond_b
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_c
    move v9, v7

    :goto_8
    if-ge v9, v4, :cond_10

    iget-object v10, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v11, v7

    :goto_9
    if-ge v11, v10, :cond_f

    sget-object v12, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v13, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v13, v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-ne v12, v9, :cond_e

    new-instance v12, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_BattleArmy;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v14, v14, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->numOfUnits:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v14, v14, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    iget-object v15, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v8, v8, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->armyID:I

    if-lez v11, :cond_d

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    goto :goto_a

    :cond_d
    move v15, v7

    :goto_a
    invoke-direct {v12, v13, v14, v8, v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_BattleArmy;-><init>(Ljava/lang/String;III)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_8

    :cond_10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_11

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_11
    iget-boolean v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->defenders:Z

    const-string v8, "Casualties"

    if-eqz v3, :cond_12

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->skull:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v8, v9, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_b

    :cond_12
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->skull:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v8, v9, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :goto_b
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    if-ltz v3, :cond_26

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-boolean v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->defenders:Z

    if-eqz v3, :cond_17

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v8}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v8, v7

    :goto_c
    if-ge v8, v3, :cond_14

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_13

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    if-lez v9, :cond_13

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    invoke-virtual {v0, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->addRegiment(III)V

    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_14
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v8}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v8, v7

    :goto_d
    if-ge v8, v3, :cond_16

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_15

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    if-lez v9, :cond_15

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    invoke-virtual {v0, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->addRegiment(III)V

    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_16
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v8}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v8, v7

    :goto_e
    if-ge v8, v3, :cond_1c

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    invoke-virtual {v0, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->addRegiment(III)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_17
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v8}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v8, v7

    :goto_f
    if-ge v8, v3, :cond_19

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_18

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    if-lez v9, :cond_18

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    invoke-virtual {v0, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->addRegiment(III)V

    :cond_18
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_19
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v8}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v8, v7

    :goto_10
    if-ge v8, v3, :cond_1b

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1a

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    if-lez v9, :cond_1a

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    invoke-virtual {v0, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->addRegiment(III)V

    :cond_1a
    add-int/lit8 v8, v8, 0x1

    goto :goto_10

    :cond_1b
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v8}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v8, v7

    :goto_11
    if-ge v8, v3, :cond_1c

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->ca:I

    invoke-virtual {v0, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->addRegiment(III)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :cond_1c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v10, v7

    :goto_12
    if-ge v10, v9, :cond_1d

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_12

    :cond_1d
    :goto_13
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_21

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v11, v7

    const/4 v10, 0x1

    :goto_14
    if-ge v10, v9, :cond_20

    iget-object v12, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v12, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    iget-object v13, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v13, v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    if-le v12, v13, :cond_1e

    goto :goto_15

    :cond_1e
    iget-object v12, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v12, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    iget-object v13, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v13, v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    if-ne v12, v13, :cond_1f

    iget-object v12, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v12, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->armyID:I

    iget-object v13, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v13, v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->armyID:I

    if-le v12, v13, :cond_1f

    :goto_15
    move v11, v10

    :cond_1f
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_14

    :cond_20
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_13

    :cond_21
    move v8, v7

    :goto_16
    if-ge v8, v4, :cond_25

    iget-object v9, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v10, v7

    :goto_17
    if-ge v10, v9, :cond_24

    sget-object v11, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v12, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v12, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-ne v11, v8, :cond_23

    new-instance v11, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_BattleArmy;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v13, v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->numOfUnits:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v13, v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    iget-object v14, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v14, v14, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->armyID:I

    if-lez v10, :cond_22

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    goto :goto_18

    :cond_22
    move v15, v7

    :goto_18
    invoke-direct {v11, v12, v13, v14, v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_BattleArmy;-><init>(Ljava/lang/String;III)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    :cond_24
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_16

    :cond_25
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_26

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_26
    iget-boolean v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->defenders:Z

    const-string v8, "Retreated"

    if-eqz v3, :cond_27

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->retreat:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v8, v9, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_19

    :cond_27
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->retreat:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v8, v9, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :goto_19
    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    if-ltz v3, :cond_3b

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-boolean v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->defenders:Z

    if-eqz v3, :cond_2c

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v8}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v8, v7

    :goto_1a
    if-ge v8, v3, :cond_29

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_28

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    if-lez v9, :cond_28

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    invoke-virtual {v0, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->addRegiment(III)V

    :cond_28
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    :cond_29
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v8}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v8, v7

    :goto_1b
    if-ge v8, v3, :cond_2b

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2a

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    if-lez v9, :cond_2a

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    invoke-virtual {v0, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->addRegiment(III)V

    :cond_2a
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    :cond_2b
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v8}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v8, v7

    :goto_1c
    if-ge v8, v3, :cond_31

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    invoke-virtual {v0, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->addRegiment(III)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    :cond_2c
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v8}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v8, v7

    :goto_1d
    if-ge v8, v3, :cond_2e

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2d

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    if-lez v9, :cond_2d

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    invoke-virtual {v0, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->addRegiment(III)V

    :cond_2d
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    :cond_2e
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v8}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v8, v7

    :goto_1e
    if-ge v8, v3, :cond_30

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2f

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    if-lez v9, :cond_2f

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    invoke-virtual {v0, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->addRegiment(III)V

    :cond_2f
    add-int/lit8 v8, v8, 0x1

    goto :goto_1e

    :cond_30
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v8}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v8, v7

    :goto_1f
    if-ge v8, v3, :cond_31

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->re:I

    invoke-virtual {v0, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->addRegiment(III)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1f

    :cond_31
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v10, v7

    :goto_20
    if-ge v10, v9, :cond_32

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_20

    :cond_32
    :goto_21
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_36

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    move v11, v7

    const/4 v10, 0x1

    :goto_22
    if-ge v10, v9, :cond_35

    iget-object v12, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v12, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    iget-object v13, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v13, v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    if-le v12, v13, :cond_33

    goto :goto_23

    :cond_33
    iget-object v12, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v12, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    iget-object v13, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v13, v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    if-ne v12, v13, :cond_34

    iget-object v12, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v12, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->armyID:I

    iget-object v13, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v13, v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->armyID:I

    if-le v12, v13, :cond_34

    :goto_23
    move v11, v10

    :cond_34
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_22

    :cond_35
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_21

    :cond_36
    move v8, v7

    :goto_24
    if-ge v8, v4, :cond_3a

    iget-object v9, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v10, v7

    :goto_25
    if-ge v10, v9, :cond_39

    sget-object v11, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v12, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v12, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-ne v11, v8, :cond_38

    new-instance v11, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_BattleArmy;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v13, v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->numOfUnits:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v13, v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    iget-object v14, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v14, v14, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->armyID:I

    if-lez v10, :cond_37

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    goto :goto_26

    :cond_37
    move v15, v7

    :goto_26
    invoke-direct {v11, v12, v13, v14, v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_BattleArmy;-><init>(Ljava/lang/String;III)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_38
    add-int/lit8 v10, v10, 0x1

    goto :goto_25

    :cond_39
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_24

    :cond_3a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3b

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_3b
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "UnitsInReserve"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v5, v8}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->sLeft:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v5, v8, v9}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v5, v8, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    if-ltz v3, :cond_49

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    iget-boolean v3, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->defenders:Z

    if-eqz v3, :cond_3d

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v5, v7

    :goto_27
    if-ge v5, v3, :cond_3c

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    invoke-virtual {v0, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->addRegiment(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_3c
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v5, v7

    :goto_28
    if-ge v5, v3, :cond_3f

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    invoke-virtual {v0, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->addRegiment(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    :cond_3d
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v5, v7

    :goto_29
    if-ge v5, v3, :cond_3e

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    invoke-virtual {v0, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->addRegiment(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    :cond_3e
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v5, v7

    :goto_2a
    if-ge v5, v3, :cond_3f

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v8, v8, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    invoke-virtual {v0, v8, v9, v10}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->addRegiment(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    :cond_3f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v9, v7

    :goto_2b
    if-ge v9, v8, :cond_40

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2b

    :cond_40
    :goto_2c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_44

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    move v10, v7

    const/4 v9, 0x1

    :goto_2d
    if-ge v9, v8, :cond_43

    iget-object v11, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v11, v11, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    iget-object v12, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v12, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    if-le v11, v12, :cond_41

    goto :goto_2e

    :cond_41
    iget-object v11, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v11, v11, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    iget-object v12, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v12, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    if-ne v11, v12, :cond_42

    iget-object v11, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v11, v11, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->armyID:I

    iget-object v12, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v12, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->armyID:I

    if-le v11, v12, :cond_42

    :goto_2e
    move v10, v9

    :cond_42
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2d

    :cond_43
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_2c

    :cond_44
    move v5, v7

    :goto_2f
    if-ge v5, v4, :cond_48

    iget-object v8, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v9, v7

    :goto_30
    if-ge v9, v8, :cond_47

    sget-object v10, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v11, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v11, v11, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-ne v10, v5, :cond_46

    new-instance v10, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_BattleArmy;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v12, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->numOfUnits:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v12, v12, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->unitTypeID:I

    iget-object v13, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->tRegiments:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;

    iget v13, v13, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$BattleStatsRegiments;->armyID:I

    if-lez v9, :cond_45

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    goto :goto_31

    :cond_45
    move v14, v7

    :goto_31
    invoke-direct {v10, v11, v12, v13, v14}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_BattleArmy;-><init>(Ljava/lang/String;III)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_46
    add-int/lit8 v9, v9, 0x1

    goto :goto_30

    :cond_47
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2f

    :cond_48
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_49

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_49
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "UnitsThatHaventBeenDeployedOnTheNattlefieldDueToTheCompleteOccupationOfAvailableSpace"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$1;

    invoke-direct {v2, v0, v1}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties$1;-><init>(Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;Ljava/util/List;)V

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 7

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getHeight()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->skull:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iconWidth:I

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iconHeight:I

    div-int/lit8 v3, v5, 0x2

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iconWidth:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->retreat:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iconWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iconWidth3:I

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iconHeight:I

    div-int/lit8 v3, v5, 0x2

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iconWidth:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iconHeight2:I

    div-int/lit8 v3, v5, 0x2

    sub-int/2addr v1, v3

    add-int v3, v1, p3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iconWidth2:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getTextToDraw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getPosX()I

    move-result v0

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->textPosition:Laoc/kingdoms/lukasz/menu_element/button/Button$TextPosition;

    invoke-interface {v3}, Laoc/kingdoms/lukasz/menu_element/button/Button$TextPosition;->getTextPosition()I

    move-result v3

    add-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iTextHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    add-int v4, v0, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->fontID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->sCasualties:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v0, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iconWidth:I

    sub-int/2addr v0, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iconWidth3:I

    sub-int/2addr v0, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iCasualtiesWidth:I

    sub-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iCasualtiesHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    add-int v4, v0, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->fontID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->sLeft:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getPosX()I

    move-result v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iconWidth2:I

    add-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->iCasualtiesHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    add-int v4, v0, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorTopStatsHover(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method
