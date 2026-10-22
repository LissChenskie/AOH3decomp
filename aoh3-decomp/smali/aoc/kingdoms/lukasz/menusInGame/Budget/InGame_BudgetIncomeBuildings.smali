.class public Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_BudgetIncomeBuildings.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iSortID:I = 0x4

.field public static lTime:J

.field public static lTime2:J


# instance fields
.field public iActiveCivID:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 44

    move-object/from16 v11, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v13, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v14

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v15

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v16, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iput v0, v11, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->iActiveCivID:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x4

    mul-int/2addr v1, v10

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v1, v1, 0x2

    add-int v18, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v1, v10

    add-int v19, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/2addr v0, v10

    const/4 v1, 0x5

    div-int/2addr v0, v1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v3, "+999 999"

    invoke-virtual {v0, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v2, v10

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    add-int v20, v0, v2

    mul-int/lit8 v0, v13, 0x2

    sub-int v21, v14, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v0, v21, v0

    sub-int v22, v0, v20

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "TotalIncome"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->goldPositive:I

    const/16 v23, 0x1

    move-object v2, v0

    move v5, v13

    move/from16 v6, v17

    move/from16 v7, v22

    move/from16 v8, v19

    move/from16 v9, v18

    move/from16 v24, v15

    move v15, v10

    move/from16 v10, v23

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget;-><init>(Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings$1;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v10, "+"

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iget v3, v11, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v2, v3

    const/16 v9, 0x64

    invoke-static {v2, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int v23, v13, v22

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v23, v0

    move-object v0, v7

    move v8, v1

    move-object/from16 v1, p0

    move/from16 v4, v17

    move/from16 v5, v20

    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;Ljava/lang/String;IIII)V

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int v17, v17, v0

    iget v0, v11, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "TotalExpenses"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->goldNegative:I

    const/16 v25, 0x0

    move-object v2, v7

    move v5, v13

    move/from16 v6, v17

    move-object v1, v7

    move/from16 v7, v22

    move/from16 v8, v19

    move v15, v9

    move/from16 v9, v18

    move-object/from16 v18, v10

    move/from16 v10, v25

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget;-><init>(Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings$2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v25, 0x0

    cmpl-float v0, v0, v25

    if-ltz v0, :cond_0

    move-object/from16 v10, v18

    goto :goto_0

    :cond_0
    const-string v10, "-"

    :goto_0
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v11, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    invoke-static {v1, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v3, v23, v0

    move-object v0, v7

    const/4 v10, 0x1

    move-object/from16 v1, p0

    move/from16 v4, v17

    move/from16 v5, v20

    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;Ljava/lang/String;IIII)V

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v17, v17, v0

    iget v0, v11, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iget v1, v11, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v0, v1

    iget v1, v11, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    sub-float/2addr v0, v1

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings$3;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Balance"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v3, v0, v25

    const-string v8, ""

    if-lez v3, :cond_1

    move-object/from16 v3, v18

    goto :goto_1

    :cond_1
    move-object v3, v8

    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0xa

    add-int v19, v0, v1

    move-object v0, v9

    move-object/from16 v1, p0

    move v5, v13

    move/from16 v6, v17

    move/from16 v7, v21

    move-object v15, v8

    move/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v17, v17, v0

    sget v19, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v14, v0

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    float-to-int v8, v0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v14, v0

    int-to-float v0, v0

    const v2, 0x3ee66666    # 0.45f

    mul-float/2addr v0, v2

    float-to-int v9, v0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v14, v0

    int-to-float v0, v0

    const v3, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v3

    float-to-int v7, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v21, v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v6, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v21, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v5, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v21, v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v4, v0

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings$4;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->iSortID:I

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-ne v0, v10, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v23, v2

    goto :goto_3

    :cond_3
    :goto_2
    move/from16 v23, v10

    :goto_3
    if-ne v0, v10, :cond_4

    move/from16 v26, v10

    goto :goto_4

    :cond_4
    move/from16 v26, v2

    :goto_4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Name"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const/16 v29, -0x1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int v30, v0, v1

    sget v31, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object v0, v3

    move-object/from16 v1, p0

    move/from16 v2, v23

    move-object/from16 v37, v3

    move/from16 v3, v26

    move/from16 v23, v4

    move-object/from16 v4, v28

    move/from16 v26, v5

    move/from16 v5, v29

    move/from16 v38, v6

    move/from16 v6, v19

    move/from16 v28, v7

    move/from16 v7, v17

    move/from16 v29, v9

    move/from16 v9, v30

    move v11, v10

    move/from16 v10, v31

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;ZZLjava/lang/String;IIIIII)V

    move-object/from16 v0, v37

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int v19, v19, v0

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings$5;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Building"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int v7, v0, v1

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v4, v19

    move/from16 v5, v17

    move/from16 v6, v29

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;Ljava/lang/String;IIIIII)V

    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int v6, v19, v0

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings$6;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->iSortID:I

    const/4 v1, 0x4

    const/4 v9, 0x5

    if-eq v0, v1, :cond_6

    if-ne v0, v9, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    move v2, v11

    :goto_6
    if-ne v0, v9, :cond_7

    move v3, v11

    goto :goto_7

    :cond_7
    const/4 v3, 0x0

    :goto_7
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Income"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int v19, v0, v1

    sget v27, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v7, v17

    move/from16 v8, v28

    move/from16 v9, v19

    move-object v11, v10

    move/from16 v10, v27

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v17, v17, v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_8

    :cond_8
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_8
    move v10, v0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_9
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-ge v2, v0, :cond_a

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyIncome:F

    cmpl-float v0, v0, v25

    if-lez v0, :cond_9

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_a
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1d

    const/4 v1, 0x1

    :goto_a
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->iSortID:I

    if-nez v0, :cond_d

    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_b
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_c

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v2, v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_c
    move v7, v2

    const/4 v8, 0x5

    const/4 v9, 0x4

    goto/16 :goto_f

    :cond_d
    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_c
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_c

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    move v2, v0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_f
    const/4 v9, 0x4

    if-ne v0, v9, :cond_12

    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_d
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_11

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyIncome:F

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyIncome:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_10

    move v2, v0

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_11
    move v7, v2

    const/4 v8, 0x5

    goto :goto_f

    :cond_12
    const/4 v8, 0x5

    if-ne v0, v8, :cond_15

    const/4 v0, 0x1

    const/4 v2, 0x0

    :goto_e
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_14

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyIncome:F

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->provBonuses:Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/ProvinceBonuses;->MonthlyIncome:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_13

    move v2, v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_14
    move v7, v2

    goto :goto_f

    :cond_15
    const/4 v7, 0x0

    :goto_f
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    const-string v6, ". "

    if-eqz v0, :cond_17

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings$7;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v21, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v0, 0x2

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object v0, v5

    move-object/from16 v1, p0

    move/from16 v27, v14

    move-object v14, v5

    move v5, v13

    move-object/from16 v40, v6

    move/from16 v6, v17

    move-object/from16 v37, v15

    move v15, v7

    move/from16 v7, v38

    move/from16 v39, v8

    move v8, v10

    move/from16 v41, v9

    move/from16 v9, v22

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;Ljava/lang/String;IIIIIII)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v0, v13

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Capital"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v31, -0x1

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move-object/from16 v28, v1

    move/from16 v32, v0

    move/from16 v33, v17

    move/from16 v34, v26

    move/from16 v35, v10

    invoke-direct/range {v28 .. v36}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v30, v0, v1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->capital:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Capital;->CAPITAL_MONTHLY_INCOME:F

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v3, v0, v25

    if-lez v3, :cond_16

    move-object/from16 v3, v18

    goto :goto_10

    :cond_16
    move-object/from16 v3, v37

    :goto_10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x64

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v34

    move-object/from16 v28, v1

    move/from16 v31, v17

    move/from16 v32, v23

    move/from16 v33, v10

    invoke-direct/range {v28 .. v34}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v17, v17, v0

    move/from16 v1, v21

    goto :goto_11

    :cond_17
    move-object/from16 v40, v6

    move/from16 v39, v8

    move/from16 v41, v9

    move/from16 v27, v14

    move-object/from16 v37, v15

    move v15, v7

    :goto_11
    const/4 v14, 0x0

    :goto_12
    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->iBuildingsSize:I

    if-ge v14, v0, :cond_1b

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildings(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyIncome:[F

    if-eqz v0, :cond_1a

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildings(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyIncome:[F

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildings(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v2

    aget v0, v0, v2

    cmpl-float v0, v0, v25

    if-eqz v0, :cond_1a

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings$8;

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v8, v37

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v21, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v7, v40

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v0, :cond_18

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_13

    :cond_18
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_13
    move v3, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v0, 0x2

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object v0, v9

    move-object/from16 v1, p0

    move v5, v13

    move/from16 v6, v17

    move-object/from16 v37, v7

    move/from16 v7, v38

    move-object/from16 v40, v8

    move v8, v10

    move/from16 v42, v10

    move-object v10, v9

    move/from16 v9, v22

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;Ljava/lang/String;IIIIIII)V

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v0, v13

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildings(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildings(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v3

    aget-object v29, v2, v3

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/16 v31, -0x1

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v36

    move-object/from16 v28, v1

    move/from16 v32, v0

    move/from16 v33, v17

    move/from16 v34, v26

    move/from16 v35, v42

    invoke-direct/range {v28 .. v36}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v30, v0, v1

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildings(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuilding()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MonthlyIncome:[F

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getBuildings(I)Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/ProvinceConstructedBuilding;->getBuildingID()I

    move-result v1

    aget v0, v0, v1

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v3, v0, v25

    if-lez v3, :cond_19

    move-object/from16 v10, v18

    goto :goto_14

    :cond_19
    move-object/from16 v10, v40

    :goto_14
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x64

    invoke-static {v0, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v34

    move-object/from16 v28, v1

    move/from16 v31, v17

    move/from16 v32, v23

    move/from16 v33, v42

    invoke-direct/range {v28 .. v34}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget_Right2;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v17, v17, v0

    move/from16 v1, v21

    goto :goto_15

    :cond_1a
    move/from16 v42, v10

    const/16 v3, 0x64

    move-object/from16 v43, v40

    move-object/from16 v40, v37

    move-object/from16 v37, v43

    :goto_15
    add-int/lit8 v14, v14, 0x1

    move/from16 v10, v42

    move-object/from16 v43, v40

    move-object/from16 v40, v37

    move-object/from16 v37, v43

    goto/16 :goto_12

    :cond_1b
    move/from16 v42, v10

    move-object/from16 v40, v37

    const/16 v3, 0x64

    invoke-interface {v11, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move/from16 v14, v27

    move-object/from16 v15, v40

    goto/16 :goto_a

    :cond_1c
    move/from16 v27, v14

    goto :goto_16

    :cond_1d
    move/from16 v27, v14

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "None"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v5, -0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v2, v0

    move v6, v13

    move/from16 v7, v17

    move/from16 v8, v21

    invoke-direct/range {v2 .. v9}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v17, v17, v0

    :goto_16
    move/from16 v0, v17

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v16

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v8, v27

    const/4 v9, 0x0

    invoke-direct {v1, v9, v9, v8, v0}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings$9;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Buildings"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v11, p0

    iget v0, v11, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v2, v24

    move/from16 v3, v16

    move v4, v8

    move v5, v7

    move-object v6, v12

    move v7, v13

    move v8, v14

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    iput-boolean v9, v11, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->drawScrollPositionAlways:Z

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 14

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    move v2, v0

    goto :goto_0

    :cond_0
    move/from16 v2, p2

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->getPosX()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->getPosX()I

    move-result v0

    add-int v6, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->getPosY()I

    move-result v0

    add-int v7, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v9, v0, v1

    const/4 v10, 0x0

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    move-object v5, p1

    invoke-static/range {v5 .. v12}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->budgetOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->budgetOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v7, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->getPosY()I

    move-result v0

    add-int v8, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->budgetOver:I

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

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->lTime2:J

    return-void
.end method

.method public updateLanguage()V
    .locals 3

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeBuildings;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Buildings"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
