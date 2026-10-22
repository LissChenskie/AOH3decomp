.class public Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_ConvertReligion.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iProvinceID:I

.field public static lTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 20

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

    mul-int/lit8 v2, v2, 0x2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v5, v7

    new-instance v13, Laoc/kingdoms/lukasz/menu_element/button/ButtonReligion2;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->iProvinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getReligion()I

    move-result v8

    mul-int/lit8 v7, v0, 0x2

    sub-int v16, v4, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v7, v16, v7

    div-int/lit8 v11, v7, 0x2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v9, v9, 0x4

    add-int v12, v7, v9

    move-object v7, v13

    move v9, v0

    move v10, v2

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu_element/button/ButtonReligion2;-><init>(IIIII)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Laoc/kingdoms/lukasz/menu_element/button/ButtonReligion2;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getReligionID()I

    move-result v8

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v7, v16, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v9, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v7, v16, v7

    div-int/lit8 v11, v7, 0x2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v10, v10, 0x4

    add-int v12, v7, v10

    move-object v7, v13

    move v10, v2

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menu_element/button/ButtonReligion2;-><init>(IIIII)V

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v8

    add-int/2addr v2, v7

    new-instance v15, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Cost"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v14, ": "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->iProvinceID:I

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionCost(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    const/16 v17, 0x0

    move-object v7, v15

    move v10, v0

    move v11, v2

    move/from16 v12, v16

    move v13, v5

    move/from16 v18, v4

    move-object v4, v14

    move v14, v3

    move/from16 v19, v1

    move-object v1, v15

    move/from16 v15, v17

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget;-><init>(Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v2, v1

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "ReligionConversionTime"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->iProvinceID:I

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionTime(I)I

    move-result v8

    const-string v9, "XDays"

    invoke-virtual {v7, v9, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->time:I

    const/4 v15, 0x0

    move-object v7, v1

    move v11, v2

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsBudget;-><init>(Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion$1;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Cancel"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v11, -0x1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v3, v16, v3

    div-int/lit8 v14, v3, 0x2

    const/4 v15, 0x1

    move-object v7, v2

    move-object/from16 v8, p0

    move v12, v0

    move v13, v1

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion$2;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "Confirm"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v3, v16, v3

    div-int/lit8 v3, v3, 0x2

    add-int v12, v0, v3

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v16, v16, v0

    div-int/lit8 v14, v16, 0x2

    move-object v7, v2

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x0

    move v1, v9

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

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

    if-ge v2, v3, :cond_0

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

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v19

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v4, v18

    invoke-direct {v0, v9, v9, v4, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion$3;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "ConvertReligion"

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    const/4 v15, 0x0

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    move-object v10, v1

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;Ljava/lang/String;Ljava/lang/String;ZZI)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v4, 0x2

    sub-int v2, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v3, v0, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    iput-boolean v9, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->drawScrollPositionAlways:Z

    return-void
.end method

.method public static final confirm()V
    .locals 5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->fGold:F

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->iProvinceID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionCost(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "InsufficientGold"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->iProvinceID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligionConversionCost(I)I

    move-result v3

    int-to-float v3, v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual {v0, v1, v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->addReligionConversion()Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 9

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->lTime:J

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
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->getPosX()I

    move-result v0

    add-int v1, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->getPosY()I

    move-result v0

    add-int v2, v0, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->getHeight()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->getPosY()I

    move-result v1

    add-int v3, v1, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->getHeight()I

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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_ConvertReligion;->lTime:J

    return-void
.end method
