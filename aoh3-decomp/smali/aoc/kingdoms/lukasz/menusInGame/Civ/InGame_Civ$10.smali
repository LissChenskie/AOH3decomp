.class Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ$10;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Rank;
.source "InGame_Civ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ$10;->this$0:Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Rank;-><init>(Ljava/lang/String;Ljava/lang/String;IIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Population;->goBackToRank:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ_Population()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CIV_POPULATION_HOVER:I

    if-ne v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    :cond_0
    return-void
.end method

.method public actionElementPPM()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_POPULATION:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    return-void
.end method

.method public buildElementHover()V
    .locals 16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "Population"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v5, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle_BG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->population:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x0

    invoke-direct {v2, v3, v5, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle_BG;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getPopulationTotal()J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->population:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_POPULATION:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Ranking"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->getRankPopulation(I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " / "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->getRankCivsWithProvinces(I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRanking_IMG_STAR_CIVID(I)I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v14, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

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

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "GrowthRate"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Average"

    invoke-virtual {v6, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAverageGrowthRate()F

    move-result v4

    const/16 v5, 0x64

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v2, v3, v4, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ$10;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_POPULATION_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ$10;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_POPULATION_HOVER:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ$10;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_POPULATION:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_DISABLED:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-object p1
.end method

.method public setIsHovered(Z)V
    .locals 1

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Rank;->setIsHovered(Z)V

    if-eqz p1, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget p1, p1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY:I

    if-eq p1, v0, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget p1, p1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    if-eq p1, v0, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget p1, p1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CIV_ECONOMY_HOVER:I

    if-ne p1, v0, :cond_2

    :cond_0
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CIV_POPULATION_HOVER:I

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_0

    :cond_1
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget p1, p1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CIV_POPULATION_HOVER:I

    if-ne p1, v0, :cond_2

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY:I

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    :cond_2
    :goto_0
    return-void
.end method
