.class public Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_ChangeReligion2.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static lTime:J

.field public static toReligionID:I


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

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_CapitalMove;->getButtonHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v5, v1

    sub-int/2addr v3, v5

    div-int/lit8 v12, v3, 0x3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Capital;->getButtonHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    add-int v17, v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v3, v2, v3

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->toReligionID:I

    sub-int v5, v4, v0

    sub-int v19, v5, v17

    move/from16 v9, v17

    move v10, v2

    move/from16 v11, v19

    invoke-virtual/range {v7 .. v12}, Laoc/kingdoms/lukasz/map/ReligionManager;->getMenuElements(IIIII)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    const/4 v12, 0x1

    const/4 v11, 0x0

    if-eqz v7, :cond_0

    new-instance v5, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "None"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v16, -0x1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Capital;->getButtonHeight()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v20, v7, 0x5

    move-object v13, v5

    move/from16 v18, v2

    invoke-direct/range {v13 .. v20}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v12, :cond_1

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Capital;->getButtonHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x5

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setHeight(I)V

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v7, v11

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    if-le v7, v1, :cond_2

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosX(I)V

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    mul-int/lit8 v9, v0, 0x2

    sub-int v9, v4, v9

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setWidth(I)V

    :cond_2
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2$1;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->toReligionID:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Capital;->getButtonHeight()I

    move-result v13

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Capital;->getButtonHeight()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v14, v7, 0x5

    move-object v7, v5

    move-object/from16 v8, p0

    move v10, v0

    move v15, v11

    move v11, v2

    move v2, v12

    move v12, v13

    move v13, v14

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;IIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    move v7, v15

    move v11, v7

    :goto_2
    if-ge v11, v5, :cond_4

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v8

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v5

    new-instance v5, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v8, v9

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v9, v10

    mul-int/2addr v9, v1

    sub-int v9, v4, v9

    sub-int v10, v7, v3

    invoke-direct {v5, v8, v3, v9, v10}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv_SpecialEmpty;-><init>(IIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v7

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v5, v7

    mul-int/lit8 v7, v0, 0x2

    sub-int v25, v4, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v7, v25, v7

    div-int/lit8 v22, v7, 0x2

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBonus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Cost"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, ": "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->religion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;->CHANGE_RELIGION_COST:F

    const/16 v11, 0xa

    invoke-static {v9, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v16, 0x6

    add-int v16, v7, v16

    move-object v7, v14

    move v1, v11

    move v11, v0

    move-object v2, v12

    move v12, v3

    move-object v1, v13

    move/from16 v13, v22

    move/from16 v26, v4

    move-object v4, v14

    move/from16 v14, v16

    move v15, v5

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBonus;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "LegacyPoints"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->religion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;->CHANGE_RELIGION_COST_LEGACY:F

    const/16 v9, 0xa

    invoke-static {v2, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget v19, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    add-int v2, v0, v22

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v20, v2, v8

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x6

    add-int v23, v2, v8

    move-object/from16 v16, v4

    move-object/from16 v17, v7

    move/from16 v21, v3

    move/from16 v24, v5

    invoke-direct/range {v16 .. v24}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextBonus;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2$2;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Cancel"

    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v11, -0x1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v4, v25, v4

    div-int/lit8 v14, v4, 0x2

    const/4 v15, 0x1

    move-object v7, v3

    move-object/from16 v8, p0

    move v12, v0

    move v13, v2

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2$3;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Confirm"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v4, v25, v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    add-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v12, v0, v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v25, v25, v0

    div-int/lit8 v14, v25, 0x2

    move-object v7, v3

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v0, :cond_6

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_5

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v3, v5

    add-int/2addr v2, v3

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v3, v0, 0x8

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v0, v4

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v4, v26

    const/4 v9, 0x0

    invoke-direct {v0, v9, v9, v4, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2$4;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->toReligionID:I

    invoke-virtual {v1, v7}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    move-object v10, v2

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;Ljava/lang/String;ZZI)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    div-int/lit8 v1, v4, 0x2

    sub-int v7, v0, v1

    const/4 v8, 0x0

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object v1, v2

    move v2, v7

    move v7, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    iput-boolean v9, v0, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->drawScrollPositionAlways:Z

    return-void
.end method

.method public static confirm()V
    .locals 6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->toReligionID:I

    if-ne v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->toReligionID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->religion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;->CHANGE_RELIGION_COST:F

    cmpg-float v0, v0, v1

    const/16 v1, 0xa

    const-string v2, ": "

    if-gez v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "InsufficientGold"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->religion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;->CHANGE_RELIGION_COST:F

    invoke-static {v3, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v0, v2, v1, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->religion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;->CHANGE_RELIGION_COST_LEGACY:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "InsufficientLegacy"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->religion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;->CHANGE_RELIGION_COST_LEGACY:F

    invoke-static {v3, v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    invoke-virtual {v0, v2, v1, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->religion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;->CHANGE_RELIGION_COST:F

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->religion:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Religion;->CHANGE_RELIGION_COST_LEGACY:F

    sub-float/2addr v1, v2

    iput v1, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fLegacy:F

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->toReligionID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->setReligionID_UpdateBonuses(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->updateCivStability()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->addCivUpdateTotalIncomePerMonth(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iGovernmentID:I

    if-ne v0, v1, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Government()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Religion"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->toReligionID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->infoCrown:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 14

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    move v3, v0

    goto :goto_0

    :cond_0
    move/from16 v3, p3

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->getPosX()I

    move-result v0

    add-int v0, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v2, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->getPosX()I

    move-result v0

    add-int v6, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->getPosY()I

    move-result v0

    add-int v7, v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v9, v0, v1

    const/4 v10, 0x0

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    move-object v5, p1

    invoke-static/range {v5 .. v12}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v7, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->getPosY()I

    move-result v0

    add-int v8, v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

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

    move/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/ChangeGovernmentReligion/InGame_ChangeReligion2;->lTime:J

    return-void
.end method
