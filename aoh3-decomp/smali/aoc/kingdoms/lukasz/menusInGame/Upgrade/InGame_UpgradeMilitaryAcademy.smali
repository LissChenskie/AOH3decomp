.class public Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_UpgradeMilitaryAcademy.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static lTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 27

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    new-instance v5, Laoc/kingdoms/lukasz/menu_element/button/Button_MilitaryAcademy;

    invoke-direct {v5, v0, v2}, Laoc/kingdoms/lukasz/menu_element/button/Button_MilitaryAcademy;-><init>(II)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v15, 0x1

    sub-int/2addr v5, v15

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v5, v7

    add-int/2addr v3, v5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v15

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v7

    add-int/2addr v5, v2

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v13

    sub-int v7, v4, v3

    sub-int v14, v7, v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_MilitaryAcademy;->getButtonHeight()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    div-int/lit8 v25, v7, 0x3

    new-instance v12, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Level"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, ": "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v8, Laoc/kingdoms/lukasz/menu/FQy/TGqtTWl;->yTZiJGjJ:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_MaxLvl(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v12

    move v9, v3

    move v10, v2

    move-object/from16 v26, v11

    move v11, v14

    move-object v15, v12

    move/from16 v12, v25

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_RulerTitle;-><init>(Ljava/lang/String;IIII)V

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    new-instance v7, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "UnitsAttackPerLevel"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v15, v26

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_ATTACK_PER_LVL:I

    const-string v10, "+"

    const-string v12, ""

    if-lez v9, :cond_0

    move-object v9, v10

    goto :goto_0

    :cond_0
    move-object v9, v12

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_ATTACK_PER_LVL:I

    int-to-float v9, v9

    const/16 v11, 0x64

    invoke-static {v9, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget v19, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    move-object/from16 v16, v7

    move/from16 v20, v3

    move/from16 v21, v2

    move/from16 v22, v14

    move/from16 v23, v25

    move/from16 v24, v13

    invoke-direct/range {v16 .. v24}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int v21, v2, v7

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v9, 0x0

    sget-object v9, Landroidx/arch/core/ht/qIuEvFbUtcea;->rNtWlWVNbP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_DEFENSE_PER_LVL:I

    if-lez v8, :cond_1

    move-object v8, v10

    goto :goto_1

    :cond_1
    move-object v8, v12

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_DEFENSE_PER_LVL:I

    int-to-float v8, v8

    invoke-static {v8, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget v19, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    move-object/from16 v16, v2

    move/from16 v20, v3

    move/from16 v22, v14

    move/from16 v23, v25

    move/from16 v24, v13

    invoke-direct/range {v16 .. v24}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "RegimentsLimitPerLevel"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_REGIMENTS_LIMIT_PER_LVL:I

    if-lez v7, :cond_2

    goto :goto_2

    :cond_2
    move-object v10, v12

    :goto_2
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->militaryAcademy:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_MilitaryAcademy;->MILITARY_ACADEMY_REGIMENTS_LIMIT_PER_LVL:I

    int-to-float v7, v7

    const/4 v14, 0x1

    invoke-static {v7, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->regimentsLimit:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v4, v3

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v16

    move-object v7, v2

    move v13, v11

    move v11, v0

    move/from16 v17, v4

    move-object v4, v12

    move v12, v5

    move/from16 v18, v1

    move v1, v13

    move v13, v3

    move/from16 v19, v14

    move/from16 v14, v25

    move-object v1, v15

    move/from16 v15, v16

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v5, v2

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBonus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Cost"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_Cost(I)F

    move-result v4

    const/16 v7, 0x64

    invoke-static {v4, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int v14, v1, v4

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v15

    move-object v7, v2

    move v12, v5

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int/2addr v1, v5

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy$1;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Cancel"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v11, -0x1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v4, v3, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    sub-int/2addr v4, v5

    div-int/lit8 v14, v4, 0x2

    const/4 v15, 0x1

    move-object v7, v2

    move-object/from16 v8, p0

    move v12, v0

    move v13, v1

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy$2;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Confirm"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v5, v3, v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v5, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x2

    add-int v12, v4, v5

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v4, v3, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    sub-int/2addr v4, v5

    div-int/lit8 v14, v4, 0x2

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy$3;

    const-string v9, "+"

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    sub-int/2addr v3, v4

    add-int v12, v0, v3

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x0

    move v1, v9

    move v2, v1

    :goto_3
    if-ge v1, v0, :cond_4

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_3

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v18

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v4, v17

    invoke-direct {v0, v9, v9, v4, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy$4;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "UpgradeMilitaryAcademy"

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    move-object v10, v1

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;Ljava/lang/String;ZZI)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v4, 0x2

    sub-int v2, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v3, v0, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    iput-boolean v9, v0, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;->drawScrollPositionAlways:Z

    return-void
.end method

.method public static confirm()V
    .locals 2

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->upgradeMilitaryAcademy()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_MaxLvl(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_UpgradeMilitaryAcademy()V

    :goto_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iGovernmentID:I

    if-ne v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Government_SavePos()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    :cond_1
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 9

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    move v8, v0

    goto :goto_0

    :cond_0
    move v8, p3

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;->getPosX()I

    move-result v0

    add-int v1, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;->getPosY()I

    move-result v0

    add-int v2, v0, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;->getHeight()I

    move-result v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v0

    const/4 v5, 0x0

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;->getPosY()I

    move-result v1

    add-int v3, v1, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object v0, p0

    move v2, p2

    move v3, v8

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Upgrade/InGame_UpgradeMilitaryAcademy;->lTime:J

    return-void
.end method
