.class public Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_BudgetIncomeProvinces.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iSortID:I = 0x6

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
    .locals 35

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

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    iput v0, v11, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iActiveCivID:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v10, 0x2

    div-int/2addr v0, v10

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v8, 0x4

    mul-int/2addr v0, v8

    const/4 v7, 0x5

    div-int/2addr v0, v7

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v2, "+999 999"

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/2addr v0, v10

    mul-int/lit8 v0, v13, 0x2

    sub-int v17, v14, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v0, v11, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalIncomePerMonth:F

    iget v1, v11, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->MonthlyIncome:F

    add-float/2addr v0, v1

    iget v1, v11, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fTotalExpensesPerMonth:F

    sub-float/2addr v0, v1

    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$1;

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

    const/16 v18, 0x0

    cmpl-float v3, v0, v18

    const-string v19, "+"

    const-string v5, ""

    if-lez v3, :cond_0

    move-object/from16 v3, v19

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x64

    invoke-static {v0, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0xa

    add-int v21, v0, v1

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v4, v20

    move-object/from16 v23, v5

    move v5, v13

    move-object v10, v6

    move v6, v9

    move/from16 v24, v15

    move v15, v7

    move/from16 v7, v17

    move v15, v8

    move/from16 v8, v21

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;Ljava/lang/String;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v10, 0x1

    sub-int/2addr v0, v10

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v21, v9, v0

    sget v25, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v20, 0x2

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v14, v0

    int-to-float v0, v0

    const v26, 0x3e99999a    # 0.3f

    mul-float v0, v0, v26

    float-to-int v9, v0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v14, v0

    int-to-float v0, v0

    const v27, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v27

    float-to-int v8, v0

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$2;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    if-ne v0, v10, :cond_1

    goto :goto_1

    :cond_1
    move v2, v6

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v10

    :goto_2
    if-ne v0, v10, :cond_3

    move v3, v10

    goto :goto_3

    :cond_3
    move v3, v6

    :goto_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v1, 0x0

    sget-object v1, Landroidx/arch/core/ht/qIuEvFbUtcea;->vRKGCinL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v15, 0x6

    mul-int/2addr v1, v15

    add-int v29, v0, v1

    sget v30, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v6, v25

    move-object v15, v7

    move/from16 v7, v21

    move/from16 v32, v8

    move v8, v9

    move/from16 v33, v9

    move/from16 v9, v29

    move v11, v10

    move/from16 v10, v30

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int v25, v25, v0

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$3;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    const/4 v10, 0x3

    const/4 v9, 0x2

    if-eq v0, v9, :cond_5

    if-ne v0, v10, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    move v2, v11

    :goto_5
    if-ne v0, v10, :cond_6

    move v3, v11

    goto :goto_6

    :cond_6
    const/4 v3, 0x0

    :goto_6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Income"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v6, 0x6

    mul-int/2addr v1, v6

    add-int v20, v0, v1

    sget v29, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v6, v25

    move/from16 v7, v21

    move/from16 v8, v33

    move/from16 v9, v20

    move/from16 v10, v29

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int v25, v25, v0

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$4;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    goto :goto_8

    :cond_8
    const/4 v1, 0x5

    :goto_7
    move v2, v11

    :goto_8
    if-ne v0, v1, :cond_9

    move v3, v11

    goto :goto_9

    :cond_9
    const/4 v3, 0x0

    :goto_9
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Expenses"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v6, 0x6

    mul-int/2addr v1, v6

    add-int v9, v0, v1

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v6, v25

    move/from16 v7, v21

    move/from16 v8, v32

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    add-int v6, v25, v0

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$5;

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    const/4 v10, 0x7

    const/4 v1, 0x6

    if-eq v0, v1, :cond_b

    if-ne v0, v10, :cond_a

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    goto :goto_b

    :cond_b
    :goto_a
    move v2, v11

    :goto_b
    if-ne v0, v10, :cond_c

    move v3, v11

    goto :goto_c

    :cond_c
    const/4 v3, 0x0

    :goto_c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "MonthlyIncome"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v7, 0x6

    mul-int/2addr v1, v7

    add-int v9, v0, v1

    sget v20, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v7, v21

    move/from16 v8, v32

    move/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;ZZLjava/lang/String;IIIIII)V

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v11

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v21, v21, v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_d

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_d

    :cond_d
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_d
    move v10, v0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v15, 0x2

    mul-int/2addr v0, v15

    sub-int v0, v14, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x5

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, v26

    float-to-int v9, v0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v0, v15

    sub-int v0, v14, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, v27

    float-to-int v8, v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_e
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    if-ge v6, v0, :cond_e

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_e
    move v0, v11

    move/from16 v5, v21

    :goto_f
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_23

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iSortID:I

    if-nez v1, :cond_10

    move v1, v11

    const/4 v6, 0x0

    :goto_10
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v6, v1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_10
    if-ne v1, v11, :cond_12

    move v1, v11

    const/4 v6, 0x0

    :goto_11
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v6, v1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_12
    if-ne v1, v15, :cond_14

    move v1, v11

    const/4 v6, 0x0

    :goto_12
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_20

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_13

    move v6, v1

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_14
    const/4 v6, 0x3

    if-ne v1, v6, :cond_17

    move v2, v11

    const/4 v1, 0x0

    :goto_13
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_16

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_15

    move v1, v2

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_16
    move v6, v1

    goto/16 :goto_18

    :cond_17
    const/4 v4, 0x4

    if-ne v1, v4, :cond_19

    move v2, v11

    const/4 v1, 0x0

    :goto_14
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_16

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_18

    move v1, v2

    :cond_18
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x4

    goto :goto_14

    :cond_19
    const/4 v4, 0x5

    if-ne v1, v4, :cond_1b

    move v2, v11

    const/4 v1, 0x0

    :goto_15
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_16

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1a

    move v1, v2

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x5

    goto :goto_15

    :cond_1b
    const/4 v4, 0x6

    if-ne v1, v4, :cond_1d

    move v2, v11

    const/4 v1, 0x0

    :goto_16
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_16

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v3, v4

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v4, v6

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1c

    move v1, v2

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x6

    const/4 v6, 0x3

    goto :goto_16

    :cond_1d
    const/4 v6, 0x7

    if-ne v1, v6, :cond_1f

    move v2, v11

    const/4 v1, 0x0

    :goto_17
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_16

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v3, v4

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-static/range {v17 .. v17}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    iget v6, v6, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v4, v6

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1e

    move v1, v2

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x7

    goto :goto_17

    :cond_1f
    const/4 v6, 0x0

    :cond_20
    :goto_18
    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$6;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v3, v23

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v17, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

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

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v0, :cond_21

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_19

    :cond_21
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_19
    move/from16 v21, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v23, v0, 0x2

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v15, v3

    move/from16 v3, v21

    move-object v11, v4

    const/16 v20, 0x6

    const/16 v26, 0x4

    const/16 v27, 0x5

    move/from16 v4, v23

    move/from16 v23, v5

    move v5, v13

    move/from16 v28, v14

    const/16 v29, 0x7

    const/16 v30, 0x3

    move v14, v6

    move/from16 v6, v23

    move-object/from16 v34, v7

    move v7, v9

    move/from16 v31, v8

    move v8, v10

    move/from16 v32, v9

    move/from16 v9, v25

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;Ljava/lang/String;IIIIIII)V

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    new-instance v11, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v9, v34

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    const/16 v8, 0x64

    invoke-static {v2, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v4, -0x1

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object v1, v11

    move v5, v0

    move/from16 v7, v32

    move v8, v10

    move/from16 v25, v13

    move-object v13, v9

    move/from16 v9, v22

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    add-int/2addr v0, v1

    new-instance v11, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    const/16 v9, 0x64

    invoke-static {v2, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object v1, v11

    move v5, v0

    move/from16 v7, v31

    move-object/from16 v33, v15

    move v15, v9

    move/from16 v9, v22

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    add-int v3, v0, v1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceIncome:F

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->fProvinceMaintenance:F

    sub-float/2addr v0, v1

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$7;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    cmpl-float v2, v0, v18

    if-lez v2, :cond_22

    move-object/from16 v5, v19

    goto :goto_1a

    :cond_22
    move-object/from16 v5, v33

    :goto_1a
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0, v15}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v4, v23

    move/from16 v5, v31

    move v6, v10

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    move/from16 v2, v23

    add-int v5, v2, v0

    invoke-interface {v13, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v11, v1

    move-object v7, v13

    move/from16 v0, v17

    move/from16 v13, v25

    move/from16 v14, v28

    move/from16 v8, v31

    move/from16 v9, v32

    move-object/from16 v23, v33

    const/4 v15, 0x2

    goto/16 :goto_f

    :cond_23
    move v2, v5

    move/from16 v28, v14

    const/16 v30, 0x3

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v16

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v8, v28

    const/4 v9, 0x0

    invoke-direct {v0, v9, v9, v8, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$8;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "ProvinceMonthlyIncome"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v11, p0

    iget v0, v11, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;Ljava/lang/String;Ljava/lang/String;ZZI)V

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

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    iput-boolean v9, v11, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->drawScrollPositionAlways:Z

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 14

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->lTime:J

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
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getPosX()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getPosX()I

    move-result v0

    add-int v6, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getPosY()I

    move-result v0

    add-int v7, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getHeight()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getWidth()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getPosY()I

    move-result v0

    add-int v8, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getHeight()I

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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->lTime2:J

    return-void
.end method

.method public updateLanguage()V
    .locals 3

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Budget/InGame_BudgetIncomeProvinces;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "ProvinceMonthlyIncome"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
