.class Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$25;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Icon;
.source "InGame_Budget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;IIIIII)V
    .locals 7

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$25;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Icon;-><init>(IIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 5

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$25;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateResearchLevel(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v0, Laoc/kingdoms/lukasz/menu/ClickAnimation;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$25;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$25;->getWidth()I

    move-result v3

    div-int/2addr v3, v1

    add-int/2addr v2, v3

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$25;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;->getMenuPosX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$25;->getPosY()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$25;->getHeight()I

    move-result v4

    div-int/2addr v4, v1

    add-int/2addr v3, v4

    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$25;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;->getMenuPosY()I

    move-result v1

    add-int/2addr v3, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$25;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$25;->getHeight()I

    move-result v4

    invoke-direct {v0, v2, v3, v1, v4}, Laoc/kingdoms/lukasz/menu/ClickAnimation;-><init>(IIII)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->addClickAnimation(Laoc/kingdoms/lukasz/menu/ClickAnimation;)V

    return-void
.end method

.method public buildElementHover()V
    .locals 18

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "IncreasedPay"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_TextTitle_BG;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle_BG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_ImageTitle_BG;-><init>(III)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Research"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, ": "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v12, "+"

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->RESEARCH_LEVEL_RESEARCH:[F

    const/4 v13, 0x2

    aget v5, v5, v13

    const/high16 v14, 0x42c80000    # 100.0f

    mul-float/2addr v5, v14

    const/16 v15, 0x64

    invoke-static {v5, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "%"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v3, v2

    move-object/from16 v17, v10

    move-object/from16 v10, v16

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "ResearchCost"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->budget:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Budget;->RESEARCH_LEVEL_COST:[F

    aget v5, v5, v13

    mul-float/2addr v5, v14

    invoke-static {v5, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v5, v17

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v9, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v1, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$25;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$25;->isLeveLActive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$25;->isLeveLActive()Z

    move-result p4

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p4, :cond_0

    move p4, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$25;->getIsHovered()Z

    move-result p4

    if-eqz p4, :cond_1

    const p4, 0x3f266666    # 0.65f

    goto :goto_0

    :cond_1
    const p4, 0x3e19999a    # 0.15f

    :goto_0
    invoke-virtual {p1, v0, v0, v0, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget p4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$25;->getPosX()I

    move-result p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$25;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p4, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p4, v1

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$25;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$25;->getHeight()I

    move-result p4

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int/2addr p4, v1

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    add-int v3, p2, p3

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget p2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Icon;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    :goto_1
    return-void
.end method

.method public getSFX()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_GOLD_LEVEL_2:I

    return v0
.end method

.method public isLeveLActive()Z
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$25;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getResearchLevel()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
