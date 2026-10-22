.class public Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Armies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;
    }
.end annotation


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static lTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 49

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v4, v1, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/map/army/ArmyManager;->getRegimentsAvailableToUpgrade(I)I

    move-result v5

    mul-int/lit8 v7, v0, 0x2

    sub-int v15, v4, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v7, v15, v7

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v13, v7, 0x5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v7, v15, v7

    mul-int/lit8 v7, v7, 0x2

    div-int/lit8 v18, v7, 0x5

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v7

    if-eqz v7, :cond_0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_0

    :cond_0
    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_0
    move/from16 v19, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v20

    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$1;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "CreateNewArmy"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v0

    add-int v11, v7, v18

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v7, v14

    move-object/from16 v8, p0

    move v12, v2

    move/from16 v21, v1

    move-object v1, v14

    move/from16 v14, v19

    move/from16 v22, v15

    move/from16 v15, v20

    invoke-direct/range {v7 .. v17}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;Ljava/lang/String;IIIIIIIZ)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$2;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Back"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    move-object v7, v1

    move-object/from16 v8, p0

    move v11, v0

    move/from16 v13, v18

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/16 v20, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "AvailableUpgrades"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v12, v4, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x6

    add-int v13, v7, v11

    move-object v7, v14

    move v11, v1

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    add-int/2addr v1, v7

    const/16 v15, 0xa

    const-string v14, ": "

    const-string v13, ""

    if-nez v5, :cond_1

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$3;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "None"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v11, -0x1

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v5

    move-object/from16 v8, p0

    move v12, v0

    move-object/from16 v23, v13

    move v13, v1

    move-object/from16 v24, v14

    move/from16 v14, v22

    move/from16 v25, v3

    move v3, v15

    move/from16 v15, v16

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    move/from16 v26, v4

    move-object/from16 v3, v23

    move v4, v1

    move/from16 v1, v22

    move-object/from16 v48, v24

    move/from16 v24, v2

    move-object/from16 v2, v48

    goto/16 :goto_1

    :cond_1
    move/from16 v25, v3

    move-object/from16 v23, v13

    move-object/from16 v24, v14

    move v3, v15

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$4;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "UpgradeAllRegiments"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v17

    move-object v7, v15

    move-object/from16 v8, p0

    move v12, v0

    move-object v3, v13

    move v13, v1

    move/from16 v24, v2

    move-object v2, v14

    move/from16 v14, v22

    move/from16 v26, v4

    move-object v4, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v7

    add-int/2addr v1, v4

    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$5;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v9, 0x0

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/AI/Government/nSju/IlLkpaQxs;->ZrxoSshXDXS:Ljava/lang/String;

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    move/from16 v15, v22

    sub-int v7, v15, v7

    div-int/lit8 v14, v7, 0x2

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v17

    move-object v7, v4

    move-object/from16 v8, p0

    move v13, v1

    move/from16 v18, v1

    move v1, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$6;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Cost"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/map/army/ArmyManager;->getUpgradeRegimentCost(I)F

    move-result v8

    int-to-float v5, v5

    mul-float/2addr v8, v5

    const/16 v5, 0xa

    invoke-static {v8, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v15, v1, v7

    div-int/lit8 v15, v15, 0x2

    add-int v12, v5, v15

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v15, v1, v5

    div-int/lit8 v14, v15, 0x2

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v16

    move-object v7, v4

    move-object/from16 v8, p0

    move/from16 v13, v18

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int v4, v18, v4

    :goto_1
    new-instance v5, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Armies"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x1

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v12, v26, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x6

    add-int v13, v7, v11

    move-object v7, v5

    move v11, v4

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$7;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "MilitaryAcademy"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getMilitaryAcademyLevel()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " / "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getMilitaryAcademy_MaxLvl(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v16

    move-object v7, v5

    move-object/from16 v8, p0

    move v12, v0

    move v13, v4

    move v14, v1

    move/from16 v22, v0

    move-object v0, v15

    move/from16 v15, v19

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v7

    add-int/2addr v4, v5

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$8;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "BattleWidth"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleWidth(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v15, v1, v0

    div-int/lit8 v14, v15, 0x2

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v16

    move-object v7, v5

    move-object/from16 v8, p0

    move/from16 v12, v22

    move v13, v4

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$9;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Discipline"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget v5, v5, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->Discipline:F

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v5, v7

    const/16 v7, 0xa

    invoke-static {v5, v7}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "%"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->discipline:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v2, v22, v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v15, v1, v5

    div-int/lit8 v15, v15, 0x2

    add-int v12, v2, v15

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v15, v1, v2

    div-int/lit8 v14, v15, 0x2

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v16

    move-object v7, v0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int v13, v4, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    const/4 v2, 0x0

    if-nez v0, :cond_2

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "ArmyNotFound"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v11, -0x1

    add-int/lit8 v12, v22, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->generalFrameBattle:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int v15, v3, v4

    move-object v8, v0

    move v14, v1

    invoke-direct/range {v8 .. v15}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    goto/16 :goto_f

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v2

    :goto_2
    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iArmyPositionSize:I

    if-ge v5, v7, :cond_5

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPosition(I)I

    move-result v7

    if-ltz v7, :cond_4

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmySize()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    :goto_3
    if-ltz v8, :cond_4

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v9

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v10, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v9, v10, :cond_3

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9, v5}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getArmyPositionKey(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-virtual {v10, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-static {v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->getSortKey(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v9, v7, v8, v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;-><init>(III)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_a

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v9, v2

    move/from16 v8, v20

    :goto_5
    if-ge v8, v7, :cond_7

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v10, v10, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->sortKey:I

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v11, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->sortKey:I

    if-le v10, v11, :cond_6

    move v9, v8

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_7
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v7, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v8, v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-nez v7, :cond_8

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    invoke-interface {v0, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_9
    :goto_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_7

    :cond_a
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_d

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v8, v2

    move/from16 v7, v20

    :goto_9
    if-ge v7, v5, :cond_c

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v9, v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->sortKey:I

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v10, v10, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->sortKey:I

    if-le v9, v10, :cond_b

    move v8, v7

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_c
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_8

    :cond_d
    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getButtonHeight()I

    move-result v0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v15, v2

    move v7, v13

    :goto_a
    if-ge v15, v5, :cond_12

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x6

    add-int/2addr v8, v9

    add-int/2addr v8, v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v9, v22, v9

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v10, v10, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v11, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-nez v10, :cond_e

    new-instance v10, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "NoGeneral"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v11, v11, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    add-int/lit8 v30, v9, 0x0

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v12, v12, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v13, v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v13, v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v13

    iget v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    move-object/from16 v27, v10

    move/from16 v29, v11

    move/from16 v31, v8

    move-object/from16 v32, v12

    move/from16 v33, v13

    move/from16 v34, v14

    invoke-direct/range {v27 .. v34}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyNoGeneral2_Armies;-><init>(Ljava/lang/String;IIILjava/lang/String;II)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v46, v0

    move/from16 v44, v1

    move-object/from16 v45, v3

    move-object/from16 v47, v4

    move/from16 p1, v5

    move/from16 v43, v7

    move/from16 v17, v9

    goto/16 :goto_b

    :cond_e
    new-instance v10, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v11, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v11

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v12, v12, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->n:Ljava/lang/String;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v12, v12, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v12

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v13, v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v12

    iget v12, v12, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v13, v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getAttack()I

    move-result v30

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v13, v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v13}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getDefense()I

    move-result v31

    add-int/lit8 v32, v9, 0x0

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v13, v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v13

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v13, v13, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->g:I

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v2, v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v14, v2}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->d:I

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 p1, v5

    move-object/from16 v5, v16

    check-cast v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v14, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->m:I

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v43, v7

    move-object/from16 v7, v16

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v7, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v14, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->y:I

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v44, v1

    move-object/from16 v1, v16

    check-cast v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v1, v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v14, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v14

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v45, v3

    move-object/from16 v3, v16

    check-cast v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v14, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v14, v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v46, v0

    move-object/from16 v0, v16

    check-cast v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v0, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v9

    move-object/from16 v9, v16

    check-cast v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v9, v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v0, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->sI:Ljava/lang/String;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v9, v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v47, v4

    move-object/from16 v4, v16

    check-cast v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v9, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getCombatExperience()I

    move-result v42

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    move/from16 v29, v12

    move/from16 v33, v8

    move/from16 v34, v13

    move/from16 v35, v2

    move/from16 v36, v5

    move/from16 v37, v7

    move-object/from16 v38, v1

    move/from16 v39, v3

    move/from16 v40, v14

    move-object/from16 v41, v0

    invoke-direct/range {v27 .. v42}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2_Armies;-><init>(Ljava/lang/String;IIIIIIIIILjava/lang/String;IILjava/lang/String;I)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v9, v17, v0

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$10;

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->pin:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    move-object/from16 v2, v47

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->isPinned(Ljava/lang/String;)Z

    move-result v32

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v1, v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v28, p0

    move/from16 v30, v9

    move/from16 v31, v8

    move-object/from16 v33, v1

    move/from16 v34, v46

    invoke-direct/range {v27 .. v34}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;IIIZLjava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$11;

    sget v29, Laoc/kingdoms/lukasz/textures/Images;->center:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v8

    add-int v31, v1, v46

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/Player/Player;->isPinned(Ljava/lang/String;)Z

    move-result v32

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v1, v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v33, v1

    invoke-direct/range {v27 .. v34}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;IIIZLjava/lang/String;I)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v9, v0

    const/4 v0, 0x0

    :goto_c
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v1, v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v0, v1, :cond_11

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v1, v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/lit8 v3, v0, 0x1

    move/from16 v29, v20

    :goto_d
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyRegimentSize:I

    if-ge v3, v4, :cond_f

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v7, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    if-ne v4, v5, :cond_f

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v7, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    if-ne v4, v5, :cond_f

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v29, v29, 0x1

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    :cond_f
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v5, v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v7, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-static {v3, v4, v5}, Laoc/kingdoms/lukasz/map/army/ArmyManager;->armyCanBeUpgraded(III)Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle_Upgrade;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v45

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v1, v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    add-int/lit8 v31, v9, 0x0

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v7, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v7, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v10, v10, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v7, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    const/16 v35, 0x0

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v10, v10, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v10

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v11, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    move-object/from16 v27, v3

    move/from16 v30, v1

    move/from16 v32, v8

    move/from16 v33, v4

    move/from16 v34, v7

    move-object/from16 v36, v10

    invoke-direct/range {v27 .. v36}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle_Upgrade;-><init>(Ljava/lang/String;IIIIIIZLjava/lang/String;)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_10
    move-object/from16 v5, v45

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v1, v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    add-int/lit8 v31, v9, 0x0

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v7, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v7, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v10, v10, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v7, v10}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    const/16 v35, 0x0

    move-object/from16 v27, v3

    move/from16 v30, v1

    move/from16 v32, v8

    move/from16 v33, v4

    move/from16 v34, v7

    invoke-direct/range {v27 .. v35}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;-><init>(Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int/2addr v9, v1

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v45, v5

    goto/16 :goto_c

    :cond_11
    move-object/from16 v5, v45

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int v0, v0, v24

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextArmies;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmyOfProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v7, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v8, v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->iArmy:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    add-int/lit8 v31, v22, 0x0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v4, v31, v4

    mul-int/lit8 v7, v26, 0x3

    const/16 v23, 0xa

    div-int/lit8 v33, v7, 0xa

    add-int v11, v4, v33

    move/from16 v4, v44

    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v7, v7, v33

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v13, v7, v8

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x5

    add-int v14, v7, v8

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v7, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v8, v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v8, v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v9, v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v8

    iget v12, v8, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v9, v8, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    move-object v8, v1

    move/from16 v17, v9

    move-object v9, v3

    move v3, v12

    move/from16 v12, v43

    move/from16 v38, v0

    move v0, v15

    move-object v15, v7

    move/from16 v16, v3

    move/from16 v18, v4

    invoke-direct/range {v8 .. v18}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextArmies;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;III)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$12;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "ArmyDeployment"

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sget v30, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x5

    add-int v34, v3, v7

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v35

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    const/16 v37, 0x1

    move-object/from16 v27, v1

    move-object/from16 v28, p0

    move/from16 v32, v43

    move/from16 v36, v3

    invoke-direct/range {v27 .. v37}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;Ljava/lang/String;IIIIIIIZ)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v3, v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iProvinceID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;

    iget v7, v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$SortedArmies;->iArmyID:I

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/map/province/Province;->getArmy(I)Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setText2(Ljava/lang/String;)V

    add-int/lit8 v15, v0, 0x1

    move v1, v4

    move-object v3, v5

    move/from16 v7, v38

    move/from16 v0, v46

    move/from16 v5, p1

    move-object v4, v2

    const/4 v2, 0x0

    goto/16 :goto_a

    :cond_12
    :goto_f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_10
    if-ge v1, v0, :cond_14

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

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_13

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

    add-int/2addr v2, v3

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_14
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v25

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v4, v26

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v4, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$13;

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    move-object v7, v1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;Ljava/lang/String;ZZI)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v2, v21, v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v25

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    move-object/from16 v1, p0

    iput v0, v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->scrollExtraPosX:I

    return-void
.end method

.method public static getSortKey(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 14

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->lTime:J

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
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr v0, v1

    add-int v6, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->getPosY()I

    move-result v0

    add-int v7, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    add-int v8, v0, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v9, v0, v1

    const/4 v10, 0x0

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    move-object v5, p1

    invoke-static/range {v5 .. v12}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->getWidth()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v7, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->getPosY()I

    move-result v0

    add-int v8, v0, p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

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

.method public getVisible()Z
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHideMenuZoomOut()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->lTime:J

    return-void
.end method

.method public updateLanguage()V
    .locals 3

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Armies;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Armies"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
