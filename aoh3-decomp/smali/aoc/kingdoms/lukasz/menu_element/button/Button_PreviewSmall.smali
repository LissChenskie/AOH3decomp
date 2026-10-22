.class public Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "Button_PreviewSmall.java"


# static fields
.field public static previewH:I

.field public static previewW:I


# instance fields
.field public iTextBonusW:I

.field public maxIconWidth:I

.field public sText2:Ljava/lang/String;

.field public scenarioID:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 15

    move-object v12, p0

    move-object/from16 v13, p2

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->previewH:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioOver:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->previewH:I

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioOver:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->previewW:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->maxIconWidth:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    const/4 v3, 0x0

    sget v0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->previewH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x5

    mul-int/2addr v1, v14

    add-int/2addr v0, v1

    move/from16 v1, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->init(Ljava/lang/String;IIIIIIZZZZ)V

    move/from16 v0, p7

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->scenarioID:I

    iput-object v13, v12, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->sText2:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, v13}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, v12, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->iTextBonusW:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, v12, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->iTextWidth:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getWidth()I

    move-result v3

    iget v4, v12, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->maxIconWidth:I

    sub-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v14, :cond_0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v3, 0x64

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x3

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final getBoxAlpha(ZZZ)F
    .locals 0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_0

    const p0, 0x3f59999a    # 0.85f

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x3f333333    # 0.7f

    goto :goto_0

    :cond_1
    const p0, 0x3f0ccccd    # 0.55f

    goto :goto_0

    :cond_2
    const p0, 0x3ecccccd    # 0.4f

    :goto_0
    return p0
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->scenarioID:I

    if-ne v0, v1, :cond_1

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->reloadScenario:Z

    if-nez v0, :cond_1

    sget-boolean v0, Laoc/kingdoms/lukasz/menus/MainMenu;->canContinue:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScale;->defScales:Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScale$DefinedScales;->definedScale_Default:I

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScale;->definedScale:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->setCurrentScale(F)V

    invoke-static {}, Laoc/kingdoms/lukasz/menus/NewGame/NewGame;->setRandomCiv()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->CLOUDS_MENU:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->scenarioID:I

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->reloadScenario:Z

    sput-boolean v0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->editorMode:Z

    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->CLOUDS_MENU:Laoc/kingdoms/lukasz/menu/View;

    sput-object v0, Laoc/kingdoms/lukasz/menus/LoadSave/Menu_LoadScenario;->goToMenu:Laoc/kingdoms/lukasz/menu/View;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->LOAD_SCENARIO:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    :goto_1
    return-void
.end method

.method public buildElementHover()V
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ScenarioPreview;

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->scenarioID:I

    invoke-direct {v2, v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ScenarioPreview;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    const-string v4, ""

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->scenarioID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Day:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->scenarioID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Month:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getMonthName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->scenarioID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Year:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getYear(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->time:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    const-string v4, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    iget v8, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->scenarioID:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Year:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->getAgeOfYear(I)I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->Name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->time:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

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

    const-string v5, "Civilizations"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    iget v6, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->scenarioID:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Civs:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Author"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios;->details:Ljava/util/List;

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->scenarioID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->Author:Ljava/lang/String;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getClickable()Z

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getIsHovered()Z

    move-result v5

    invoke-static {v4, v5, p4}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getBoxAlpha(ZZZ)F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getHeight()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getIsHovered()Z

    move-result v4

    const v8, 0x3eb33333    # 0.35f

    if-nez v4, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v8

    goto :goto_1

    :cond_1
    :goto_0
    const v4, 0x3f266666    # 0.65f

    :goto_1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->maxIconWidth:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getHeight()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v0, v7, v7, v7, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getHeight()I

    move-result v5

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->maxIconWidth:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->maxIconWidth:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f0ccccd    # 0.55f

    invoke-direct {v0, v7, v7, v7, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    add-int v3, v1, p3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->maxIconWidth:I

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->maxIconWidth:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x2

    add-int v3, v1, p3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->maxIconWidth:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int v3, v1, p3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->maxIconWidth:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 9

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->lScenarios_Preview:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->scenarioID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioMask:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v6, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->previewH:I

    div-int/lit8 v2, v6, 0x2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    sget v5, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->previewW:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->scenarioOver:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v6, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->previewH:I

    div-int/lit8 v2, v6, 0x2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    sget v5, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->previewW:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getTextToDraw()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosX()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->maxIconWidth:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->iTextHeight:I

    sub-int/2addr v0, v1

    add-int v5, v0, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->sText2:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosX()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->maxIconWidth:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v4, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v5, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->getColorBonus()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->scenarioID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->scenarioID:I

    if-ne v0, v1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method

.method public getColorBonus()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getCurrent()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->scenarioID:I

    return v0
.end method

.method public final getImageScale(I)F
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

.method public setCurrent(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_PreviewSmall;->scenarioID:I

    return-void
.end method
