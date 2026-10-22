.class Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;
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
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;Ljava/lang/String;IIII)V
    .locals 6

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public buildElementHover()V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceMaintenance()F

    move-result v3

    new-instance v12, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v6, "ProvinceMaintenance"

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, ": "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    cmpl-float v6, v3, v14

    const-string v15, "-"

    const-string v11, ""

    if-lez v6, :cond_0

    move-object v6, v15

    goto :goto_0

    :cond_0
    move-object v6, v11

    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v10, 0x64

    invoke-static {v3, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    sget-object v16, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_GOLD:Lcom/badlogic/gdx/graphics/Color;

    move-object v4, v12

    move-object v10, v3

    move-object v3, v11

    move-object/from16 v11, v16

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Button_TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;

    invoke-direct {v4}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Line;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v4, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v7

    if-ge v6, v7, :cond_1

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;

    iget-object v8, v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceMaintenance()F

    move-result v10

    invoke-direct {v7, v8, v9, v10}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;IF)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_6

    add-int/lit8 v7, v6, 0x1

    const/16 v8, 0xa

    if-ge v6, v8, :cond_6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move v8, v5

    :goto_3
    if-lez v6, :cond_3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;

    iget v9, v9, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;->fValue:F

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;

    iget v10, v10, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;->fValue:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    move v8, v6

    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_3
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;

    iget v6, v6, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;->fValue:F

    cmpl-float v6, v6, v14

    if-nez v6, :cond_4

    goto/16 :goto_5

    :cond_4
    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ". "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget-object v11, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT2:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v9, v10, v11}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;

    iget v10, v10, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-direct {v6, v9, v10}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;

    iget v10, v10, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;->fValue:F

    cmpl-float v10, v10, v14

    if-lez v10, :cond_5

    move-object v11, v15

    goto :goto_4

    :cond_5
    move-object v11, v3

    :goto_4
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;

    iget v10, v10, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$ProvValue;->fValue:F

    const/16 v11, 0x64

    invoke-static {v10, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v12, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v6, v9, v10, v12}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text;-><init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-direct {v6, v9, v10, v5}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Image;-><init>(III)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;

    invoke-direct {v6, v2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->clear()V

    invoke-interface {v4, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v6, v7

    goto/16 :goto_2

    :cond_6
    :goto_5
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    invoke-direct {v2, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method public getTextToDraw()Ljava/lang/String;
    .locals 6

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->lastValue:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;

    iget v1, v1, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceMaintenance()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->this$0:Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceMaintenance()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpl-float v1, v0, v1

    const-string v2, "-"

    const/4 v3, 0x0

    sget-object v3, Laoc/kingdoms/lukasz/map/terrain/exjB/uiwPYaNhJS;->hfeVoCxf:Ljava/lang/String;

    const/4 v4, 0x0

    if-ltz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v5, v0, v4

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    float-to-int v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v5, v0, v4

    if-lez v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v0, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->setText(Ljava/lang/String;)V

    :goto_2
    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->lastValue:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->nColor:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL_HOVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->nColorH:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEUTRAL_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->nColorA:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_3

    :cond_3
    if-lez v0, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->nColor:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE_HOVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->nColorH:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_NEGATIVE_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->nColorA:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_3

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->nColor:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE_HOVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->nColorH:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TEXT_MODIFIER_POSITIVE_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_Budget$29;->nColorA:Lcom/badlogic/gdx/graphics/Color;

    :cond_5
    :goto_3
    invoke-super {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;->getTextToDraw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
