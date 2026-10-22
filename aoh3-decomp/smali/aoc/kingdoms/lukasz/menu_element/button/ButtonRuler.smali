.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "ButtonRuler.java"


# instance fields
.field public iCivID:I


# direct methods
.method public constructor <init>(III)V
    .locals 12

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v1, p1, Laoc/kingdoms/lukasz/map/Ruler;->Name:Ljava/lang/String;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iTextPositionX:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getButtonWidth()I

    move-result v6

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getButtonHeight()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->init(Ljava/lang/String;IIIIIIZZZZ)V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget p3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iTextWidth:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getWidth()I

    move-result v0

    if-le p3, v0, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getText()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    const/4 v0, 0x5

    if-le p3, v0, :cond_0

    const/4 p3, 0x1

    add-int/2addr p2, p3

    const/16 v0, 0x64

    if-ge p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {v1, p1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ".."

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getButtonHeight()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public static getButtonWidth()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    return v0
.end method

.method public static getTextHeightBG()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public actionElementPPM()V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->centerToProvinceID(I)V

    :cond_0
    return-void
.end method

.method public buildElementHover()V
    .locals 20

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getIdeologyID()I

    move-result v7

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->RulerTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/Ruler;->Name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_FlagCiv_Title;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Born"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget v5, v5, Laoc/kingdoms/lukasz/map/Ruler;->BornDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget v7, v7, Laoc/kingdoms/lukasz/map/Ruler;->BornMonth:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getMonthName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget v5, v5, Laoc/kingdoms/lukasz/map/Ruler;->BornYear:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->time:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v3, v4, v5, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget v5, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentYear:I

    iget v7, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget v7, v7, Laoc/kingdoms/lukasz/map/Ruler;->BornYear:I

    sub-int/2addr v5, v7

    const/16 v7, 0x63

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const-string v7, "XYearsOld"

    invoke-virtual {v4, v7, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5, v7}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    const/16 v5, 0x64

    const-string v7, "+"

    const-string v8, ""

    if-eqz v3, :cond_1

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "MonthlyIncome"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    cmpl-float v11, v11, v4

    if-lez v11, :cond_0

    move-object v11, v7

    goto :goto_0

    :cond_0
    move-object v11, v8

    :goto_0
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    invoke-static {v11, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v15, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v9, v3

    invoke-direct/range {v9 .. v16}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_1
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    cmpl-float v3, v3, v4

    const-string v9, "%"

    if-eqz v3, :cond_3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "TaxEfficiency"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    cmpl-float v12, v12, v4

    if-lez v12, :cond_2

    move-object v12, v7

    goto :goto_1

    :cond_2
    move-object v12, v8

    :goto_1
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->TaxEfficiency:F

    invoke-static {v12, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v16, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_3
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_5

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ProductionEfficiency"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    cmpl-float v12, v12, v4

    if-lez v12, :cond_4

    move-object v12, v7

    goto :goto_2

    :cond_4
    move-object v12, v8

    :goto_2
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProductionEfficiency:F

    invoke-static {v12, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v16, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_5
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_7

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ProvinceMaintenance"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    cmpl-float v12, v12, v4

    if-lez v12, :cond_6

    move-object v12, v7

    goto :goto_3

    :cond_6
    move-object v12, v8

    :goto_3
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ProvinceMaintenance:F

    invoke-static {v12, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v16, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v10, v3

    invoke-direct/range {v10 .. v17}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_7
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    cmpl-float v3, v3, v4

    const/4 v10, 0x1

    if-eqz v3, :cond_9

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "MaximumManpower"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    cmpl-float v13, v13, v4

    if-lez v13, :cond_8

    move-object v13, v7

    goto :goto_4

    :cond_8
    move-object v13, v8

    :goto_4
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MaxManpower:F

    invoke-static {v13, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_9
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_b

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "IncreaseManpowerCost"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    cmpl-float v13, v13, v4

    if-lez v13, :cond_a

    move-object v13, v7

    goto :goto_5

    :cond_a
    move-object v13, v8

    :goto_5
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseManpowerCost:F

    invoke-static {v13, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_b
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_d

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "RecruitmentTime"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    cmpl-float v13, v13, v4

    if-lez v13, :cond_c

    move-object v13, v7

    goto :goto_6

    :cond_c
    move-object v13, v8

    :goto_6
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->RecruitmentTime:F

    invoke-static {v13, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_d
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_f

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Research"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    cmpl-float v13, v13, v4

    if-lez v13, :cond_e

    move-object v13, v7

    goto :goto_7

    :cond_e
    move-object v13, v8

    :goto_7
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Research:F

    invoke-static {v13, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_f
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_11

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "ResearchPerMonth"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    cmpl-float v13, v13, v4

    if-lez v13, :cond_10

    move-object v13, v7

    goto :goto_8

    :cond_10
    move-object v13, v8

    :goto_8
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ResearchPoints:F

    invoke-static {v13, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_11
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    cmpl-float v3, v3, v4

    const/high16 v11, 0x42c80000    # 100.0f

    if-eqz v3, :cond_13

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v14, 0x0

    sget-object v14, Lcom/badlogic/gdx/graphics/g3d/model/data/xlbt/LBhZogys;->QmqZngBFzua:Ljava/lang/String;

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    cmpl-float v14, v14, v4

    if-lez v14, :cond_12

    move-object v14, v7

    goto :goto_9

    :cond_12
    move-object v14, v8

    :goto_9
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Devastation:F

    mul-float/2addr v14, v11

    invoke-static {v14, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->devastation:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v12, v3

    invoke-direct/range {v12 .. v19}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_13
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_15

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "GeneralCost"

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    cmpl-float v14, v14, v4

    if-lez v14, :cond_14

    move-object v14, v7

    goto :goto_a

    :cond_14
    move-object v14, v8

    :goto_a
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralCost:F

    mul-float/2addr v14, v11

    invoke-static {v14, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v12, v3

    invoke-direct/range {v12 .. v19}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_15
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_17

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v14, 0x0

    sget-object v14, Lcom/google/android/gms/security/IYT/MQYGMkZOAcS;->ACdNkm:Ljava/lang/String;

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    cmpl-float v14, v14, v4

    if-lez v14, :cond_16

    move-object v14, v7

    goto :goto_b

    :cond_16
    move-object v14, v8

    :goto_b
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ConstructionCost:F

    mul-float/2addr v14, v11

    invoke-static {v14, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v12, v3

    invoke-direct/range {v12 .. v19}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_17
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_19

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "AdministrationBuildingsCost"

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    cmpl-float v14, v14, v4

    if-lez v14, :cond_18

    move-object v14, v7

    goto :goto_c

    :cond_18
    move-object v14, v8

    :goto_c
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->AdministrationBuildingsCost:F

    mul-float/2addr v14, v11

    invoke-static {v14, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v12, v3

    invoke-direct/range {v12 .. v19}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_19
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1b

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "MilitaryBuildingsCost"

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    cmpl-float v14, v14, v4

    if-lez v14, :cond_1a

    move-object v14, v7

    goto :goto_d

    :cond_1a
    move-object v14, v8

    :goto_d
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MilitaryBuildingsCost:F

    mul-float/2addr v14, v11

    invoke-static {v14, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v12, v3

    invoke-direct/range {v12 .. v19}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_1b
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1d

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "EconomyBuildingsCost"

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    cmpl-float v14, v14, v4

    if-lez v14, :cond_1c

    move-object v14, v7

    goto :goto_e

    :cond_1c
    move-object v14, v8

    :goto_e
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->EconomyBuildingsCost:F

    mul-float/2addr v14, v11

    invoke-static {v14, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v12, v3

    invoke-direct/range {v12 .. v19}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_1d
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1f

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "InvestInEconomyCost"

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    cmpl-float v14, v14, v4

    if-lez v14, :cond_1e

    move-object v14, v7

    goto :goto_f

    :cond_1e
    move-object v14, v8

    :goto_f
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->InvestInEconomyCost:F

    mul-float/2addr v14, v11

    invoke-static {v14, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY_UP:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v12, v3

    invoke-direct/range {v12 .. v19}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_1f
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_21

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "IncreaseTaxEfficiencyCost"

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    cmpl-float v14, v14, v4

    if-lez v14, :cond_20

    move-object v14, v7

    goto :goto_10

    :cond_20
    move-object v14, v8

    :goto_10
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseTaxEfficiencyCost:F

    mul-float/2addr v14, v11

    invoke-static {v14, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->taxUp:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v12, v3

    invoke-direct/range {v12 .. v19}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_21
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_23

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "IncreaseGrowthRateCost"

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    cmpl-float v14, v14, v4

    if-lez v14, :cond_22

    move-object v14, v7

    goto :goto_11

    :cond_22
    move-object v14, v8

    :goto_11
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->IncreaseGrowthRateCost:F

    mul-float/2addr v14, v11

    invoke-static {v14, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->populationUp:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v12, v3

    invoke-direct/range {v12 .. v19}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_23
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_25

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "DevelopInfrastructureCost"

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    cmpl-float v14, v14, v4

    if-lez v14, :cond_24

    move-object v14, v7

    goto :goto_12

    :cond_24
    move-object v14, v8

    :goto_12
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v14, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->DevelopInfrastructureCost:F

    mul-float/2addr v14, v11

    invoke-static {v14, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->infrastructureUp:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v19, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v12, v3

    invoke-direct/range {v12 .. v19}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_25
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_27

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "ImproveRelationsModifier"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    cmpl-float v13, v13, v4

    if-lez v13, :cond_26

    move-object v13, v7

    goto :goto_13

    :cond_26
    move-object v13, v8

    :goto_13
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->ImproveRelationsModifier:F

    invoke-static {v13, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->diplomacy:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_27
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_29

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "LoanInterest"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    cmpl-float v13, v13, v4

    if-lez v13, :cond_28

    move-object v13, v7

    goto :goto_14

    :cond_28
    move-object v13, v8

    :goto_14
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v13, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->LoanInterest:F

    invoke-static {v13, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->loan:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_29
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_2b

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "MonthlyLegacy"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    cmpl-float v4, v11, v4

    if-lez v4, :cond_2a

    move-object v4, v7

    goto :goto_15

    :cond_2a
    move-object v4, v8

    :goto_15
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v9, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyLegacy:F

    invoke-static {v9, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_2b
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    if-eqz v3, :cond_2d

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "UnitsAttack"

    invoke-virtual {v5, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    if-lez v5, :cond_2c

    move-object v5, v7

    goto :goto_16

    :cond_2c
    move-object v5, v8

    :goto_16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsAttack:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_2d
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    if-eqz v3, :cond_2f

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "UnitsDefense"

    invoke-virtual {v5, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    if-lez v5, :cond_2e

    move-object v5, v7

    goto :goto_17

    :cond_2e
    move-object v5, v8

    :goto_17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->UnitsDefense:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_2f
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    if-eqz v3, :cond_31

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "GeneralsAttack"

    invoke-virtual {v5, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    if-lez v5, :cond_30

    move-object v5, v7

    goto :goto_18

    :cond_30
    move-object v5, v8

    :goto_18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralAttack:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_31
    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    if-eqz v3, :cond_33

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "GeneralsDefense"

    invoke-virtual {v5, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    if-lez v5, :cond_32

    goto :goto_19

    :cond_32
    move-object v7, v8

    :goto_19
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->ruler:Laoc/kingdoms/lukasz/map/Ruler;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/Ruler;->rulerBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->GeneralDefense:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v17, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v18, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_33
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v3

    if-eqz v3, :cond_34

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Empty;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Empty;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->COUNCIL_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle_BG;

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->council:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle_BG;-><init>(III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v3, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v1, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;Z)V

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    goto :goto_1a

    :cond_34
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    :goto_1a
    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getPosY()I

    move-result v1

    add-int/2addr v1, p3

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->rulerFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->rulerFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_1
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

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2;->getColor_gradientXY()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getTextHeightBG()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getWidth()I

    move-result v5

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getTextHeightBG()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2;->getColor_gradientFull()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getTextHeightBG()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getWidth()I

    move-result v5

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/map/RulersManager;->rulerIMG:Laoc/kingdoms/lukasz/textures/Image;

    if-eqz v0, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/map/RulersManager;->rulerIMG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getPosX()I

    move-result v0

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getPosY()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0, p1, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 6

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getTextWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getPosY()I

    move-result p2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    add-int/2addr p2, v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getTextHeightBG()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->iTextHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    add-int v4, p2, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonRuler;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorButtonHover(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method
