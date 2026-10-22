.class public Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Encyclopedia.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static lTime:J = 0x0L

.field public static sSearch:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 30

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int v3, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x6

    add-int/2addr v2, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v5, v7

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v17

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v7

    const-string v15, ": "

    const/4 v14, 0x1

    if-eqz v7, :cond_0

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$1;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Search"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v7, 0x2

    mul-int/lit8 v7, v0, 0x2

    sub-int v16, v4, v7

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v13

    move-object/from16 v8, p0

    move v12, v0

    move/from16 v19, v3

    move-object v3, v13

    move v13, v1

    move/from16 v20, v5

    move v5, v14

    move/from16 v14, v16

    move-object/from16 v21, v15

    move/from16 v15, v18

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    move/from16 v19, v3

    move/from16 v20, v5

    move v5, v14

    move-object/from16 v21, v15

    const-string v3, ""

    sput-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->sSearch:Ljava/lang/String;

    :goto_0
    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->sSearch:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    sget-object v7, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->sSearch:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string v13, "SecondLine3"

    const-string v12, "SecondLine2"

    const-string v11, "SecondLine1"

    const-string v10, "ArmyComposition0"

    const-string v9, "ArmyComposition"

    if-nez v3, :cond_3

    filled-new-array {v9, v10, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v14, v7}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v18, v3

    move-object/from16 v28, v14

    goto/16 :goto_3

    :cond_3
    :goto_2
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "Armies"

    invoke-virtual {v7, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v22, v7, 0x4

    sget v23, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v24, v4, v7

    move-object v7, v8

    move-object v5, v8

    move-object v8, v15

    move-object v15, v9

    move/from16 v9, v18

    move/from16 v18, v3

    move-object v3, v10

    move/from16 v10, v22

    move-object/from16 v25, v11

    move/from16 v11, v23

    move-object/from16 v26, v12

    move v12, v1

    move-object/from16 v27, v13

    move/from16 v13, v24

    move-object/from16 v28, v14

    move v14, v2

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$2;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    mul-int/lit8 v7, v0, 0x2

    sub-int v15, v4, v7

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v5

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v13, v15

    move/from16 v14, v20

    move/from16 v23, v15

    move/from16 v15, v17

    move/from16 v16, v22

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$3;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v5

    move v10, v0

    move v11, v1

    move/from16 v12, v23

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v8, v25

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move/from16 v8, v23

    invoke-direct {v3, v7, v0, v1, v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v9, v26

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0, v1, v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v9, v27

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0, v1, v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x3

    add-int/2addr v3, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x6

    add-int/2addr v5, v7

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v1, v4, v3}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->getTitleFirstLine(III)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v8

    add-int/2addr v1, v5

    invoke-static {v1, v4, v3}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->getTitleFirstLineSide(III)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v8

    add-int/2addr v1, v5

    invoke-static {v1, v4, v3}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->getTitleSecondLine(III)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    :goto_3
    const-string v3, "Manpower0"

    const-string v5, "Manpower"

    if-nez v18, :cond_5

    const-string v7, "Manpower2"

    const-string v8, "Manpower3"

    const-string v9, "Manpower1"

    filled-new-array {v5, v3, v9, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    move-object/from16 v15, v28

    invoke-static {v15, v7}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_4

    :cond_4
    move/from16 v23, v2

    move-object/from16 v29, v15

    goto/16 :goto_5

    :cond_5
    move-object/from16 v15, v28

    :goto_4
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$4;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v11, v7, 0x4

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v16, v4, v7

    move-object v7, v14

    move-object/from16 v8, p0

    move v13, v1

    move-object/from16 v22, v3

    move-object v3, v14

    move/from16 v14, v16

    move-object/from16 v29, v15

    move v15, v2

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$5;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    mul-int/lit8 v7, v0, 0x2

    sub-int v15, v4, v7

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v3

    move v11, v0

    move v12, v1

    move v13, v15

    move/from16 v14, v20

    move/from16 v23, v2

    move v2, v15

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v9, v22

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8, v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Manpower1"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Manpower2"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Manpower3"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ": 0% -> 100%: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->manpower:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Manpower;->MANPOWER_FULL_RECOVERY_MONTHS:F

    float-to-int v8, v8

    const-string v9, "MonthsX"

    invoke-virtual {v7, v9, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :goto_5
    const-string v2, "%"

    if-nez v18, :cond_7

    const-string v3, "ReinforceArmyCost"

    const-string v5, "ReinforceCostEncy"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v29

    invoke-static {v5, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v22, v4

    goto/16 :goto_7

    :cond_7
    move-object/from16 v5, v29

    :goto_6
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "ReinforceArmyCost"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    mul-int/lit8 v7, v0, 0x2

    sub-int v15, v4, v7

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v3

    move v10, v0

    move v11, v1

    move v12, v15

    move/from16 v13, v20

    move/from16 v14, v17

    move/from16 v22, v4

    move v4, v15

    move/from16 v15, v16

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "ReinforceCostEncy"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REINFORCE_ARMY_COST_MODIFIER:F

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    const/4 v9, 0x1

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0, v1, v4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v9

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    :goto_7
    if-nez v18, :cond_8

    const/4 v3, 0x0

    sget-object v3, Lcom/badlogic/gdx/net/otUh/aBEBOpwLZcQFCZ;->gHllUUSyIgfOD:Ljava/lang/String;

    const-string v4, "ProvinceContribution0"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$6;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v7, 0x0

    sget-object v7, Lcom/badlogic/gdx/assets/loaders/Wkvw/nEtnPpUF;->EgBSfDNNNmAun:Ljava/lang/String;

    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    mul-int/lit8 v4, v0, 0x2

    sub-int v4, v22, v4

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v3

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v13, v4

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "ProvinceContribution0"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0, v1, v4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    :cond_9
    if-nez v18, :cond_a

    const-string v3, "IncreasingMaximumManpower1"

    const-string v4, "TipForBestResultsIncreaseManpowerInProvincesWithHighestGrowthRateOfPopulation"

    const-string v7, "IncreasingMaximumManpower"

    const-string v8, "IncreasingMaximumManpower0"

    filled-new-array {v7, v8, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_a
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$7;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "IncreasingMaximumManpower"

    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    mul-int/lit8 v4, v0, 0x2

    sub-int v4, v22, v4

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v3

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v13, v4

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$8;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v8, 0x0

    sget-object v8, Lcom/google/android/gms/internal/tasks/Vhe/SwmJtrccN;->OIEbNGSeBmAe:Ljava/lang/String;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v3

    move-object/from16 v8, p0

    move v10, v0

    move v11, v1

    move v12, v4

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$9;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "IncreasingMaximumManpower1"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v3

    move-object/from16 v8, p0

    move v11, v1

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$10;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "TipForBestResultsIncreaseManpowerInProvincesWithHighestGrowthRateOfPopulation"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v3

    move-object/from16 v8, p0

    move v11, v1

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    :cond_b
    const-string v4, "RegimentsLimit"

    if-nez v18, :cond_d

    const-string v7, "WhenTheMaximumRegimentLimitIsReachedArmyRecruitmentCostIncreasesBy"

    const-string v8, "Regiments3"

    const-string v9, "RegimnetsLimit0"

    filled-new-array {v4, v9, v7, v8}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_8

    :cond_c
    move-object/from16 v28, v5

    move-object/from16 v15, v21

    goto/16 :goto_9

    :cond_d
    :goto_8
    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$11;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v11, v7, 0x4

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v14, v22, v7

    move-object v7, v15

    move-object/from16 v8, p0

    move v13, v1

    move-object v3, v15

    move/from16 v15, v23

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$12;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v7, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->regimentsLimit:I

    mul-int/lit8 v7, v0, 0x2

    sub-int v15, v22, v7

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v3

    move v11, v0

    move v12, v1

    move v13, v15

    move/from16 v14, v20

    move-object/from16 v28, v5

    move v5, v15

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "RegimnetsLimit0"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0, v1, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENTS_LIMIT_BASE_VALUE:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " + "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "LocalManpower"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " * "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REGIMENTS_LIMIT_MANPOWER_LEVEL:F

    const/16 v9, 0x64

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " + "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "CivilizationBonuses"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0, v1, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "WhenTheMaximumRegimentLimitIsReachedArmyRecruitmentCostIncreasesBy"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v15, v21

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->army:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Army;->REGIMENTS_LIMIT_RECRUIT_COST_OVER:F

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float/2addr v8, v9

    const/16 v9, 0xa

    invoke-static {v8, v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0, v1, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Regiments3"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0, v1, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Regiments"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "ArmyMaintenance"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " * ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Regiments"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v8, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0, v1, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    :goto_9
    if-nez v18, :cond_f

    const-string v3, "DeploymentPhase1"

    const-string v4, "DeploymentPhase2"

    const-string v5, "Battles"

    const-string v7, "DeploymentPhase"

    const-string v8, "DeploymentPhase0"

    filled-new-array {v5, v7, v8, v3, v4}, [Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v28

    invoke-static {v4, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_a

    :cond_e
    move-object v5, v15

    move/from16 v15, v22

    goto/16 :goto_b

    :cond_f
    move-object/from16 v4, v28

    :goto_a
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$13;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Battles"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v11, v5, 0x4

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v14, v22, v5

    move-object v7, v3

    move-object/from16 v8, p0

    move v13, v1

    move-object v5, v15

    move/from16 v15, v23

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$14;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "DeploymentPhase"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    mul-int/lit8 v7, v0, 0x2

    sub-int v21, v22, v7

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v3

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move/from16 v13, v21

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$15;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v8, 0x0

    sget-object v8, Lcom/badlogic/gdx/backends/android/surfaceview/JuyF/CvuNnwgYwe;->FxjCfEgvZCvYNc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v3

    move-object/from16 v8, p0

    move v10, v0

    move v11, v1

    move/from16 v12, v21

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$16;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "DeploymentPhase1"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v3

    move-object/from16 v8, p0

    move v11, v1

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v3, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x6

    add-int/2addr v7, v8

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v15, v22

    invoke-static {v1, v15, v3}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->getTitleFirstLine(III)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v7

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

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v9

    add-int/2addr v1, v7

    invoke-static {v1, v15, v3}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->getTitleFirstLineSide(III)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v7, v9

    add-int/2addr v1, v7

    invoke-static {v1, v15, v3}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;->getTitleSecondLine(III)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$17;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "DeploymentPhase2"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v3

    move-object/from16 v8, p0

    move v11, v1

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$17;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    add-int/2addr v1, v3

    :goto_b
    if-nez v18, :cond_11

    const-string v3, "RoleOfGenerals0"

    const-string v7, "RoleOfGenerals1"

    const-string v8, "RoleOfGenerals"

    filled-new-array {v8, v3, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_c

    :cond_10
    move-object/from16 v22, v2

    move v2, v15

    goto/16 :goto_d

    :cond_11
    :goto_c
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$18;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "RoleOfGenerals"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->general:I

    mul-int/lit8 v7, v0, 0x2

    sub-int v21, v15, v7

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v3

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move/from16 v13, v21

    move/from16 v14, v20

    move-object/from16 v22, v2

    move v2, v15

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$18;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$19;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "RoleOfGenerals0"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v3

    move-object/from16 v8, p0

    move v10, v0

    move v11, v1

    move/from16 v12, v21

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$19;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$20;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "RoleOfGenerals1"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v3

    move-object/from16 v8, p0

    move v11, v1

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$20;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    add-int/2addr v1, v3

    :goto_d
    if-nez v18, :cond_12

    const-string v3, "CombatExperience"

    const-string v7, "CombatExperienceDesc"

    const-string v8, "Generals"

    filled-new-array {v8, v3, v7}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_12
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$21;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Generals"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "CombatExperience"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->general:I

    mul-int/lit8 v5, v0, 0x2

    sub-int v5, v2, v5

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v3

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v13, v5

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$21;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "CombatExperienceDesc"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0, v1, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    :cond_13
    if-nez v18, :cond_14

    const-string v3, "BattlePhase1"

    const-string v5, "BattlePhase2"

    const/4 v7, 0x0

    sget-object v7, Lcom/badlogic/gdx/assets/loaders/Wkvw/nEtnPpUF;->eWOz:Ljava/lang/String;

    const-string v8, "BattlePhase0"

    filled-new-array {v7, v8, v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_14
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$22;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "BattlePhase"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->battle:I

    mul-int/lit8 v5, v0, 0x2

    sub-int v5, v2, v5

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v3

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v13, v5

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$22;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$23;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "BattlePhase0"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v3

    move-object/from16 v8, p0

    move v10, v0

    move v11, v1

    move v12, v5

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$23;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$24;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "BattlePhase1"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v3

    move-object/from16 v8, p0

    move v11, v1

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$24;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$25;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "BattlePhase2"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v3

    move-object/from16 v8, p0

    move v11, v1

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$25;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    :cond_15
    if-nez v18, :cond_16

    const-string v3, "MoraleAndRetreatMechanics0"

    const-string v5, "MoraleAndRetreatMechanics1"

    const-string v7, "MoraleAndRetreatMechanics"

    filled-new-array {v7, v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_16
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$26;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "MoraleAndRetreatMechanics"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->morale:I

    mul-int/lit8 v5, v0, 0x2

    sub-int v5, v2, v5

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v3

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v13, v5

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$26;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$27;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "MoraleAndRetreatMechanics0"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v3

    move-object/from16 v8, p0

    move v10, v0

    move v11, v1

    move v12, v5

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$27;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$28;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "MoraleAndRetreatMechanics1"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v3

    move-object/from16 v8, p0

    move v11, v1

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$28;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    :cond_17
    if-nez v18, :cond_18

    const-string v3, "Discipline"

    const-string v5, "DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_18
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$29;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Discipline"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->discipline:I

    mul-int/lit8 v5, v0, 0x2

    sub-int v5, v2, v5

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v3

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v13, v5

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$29;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$30;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "DisciplineSignifiesOrganizationAndCoordinationOfTheArmyInBattleIncreasingUnitsAttack"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v3

    move-object/from16 v8, p0

    move v10, v0

    move v11, v1

    move v12, v5

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$30;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    :cond_19
    if-nez v18, :cond_1a

    const-string v3, "DestructionOrSurvival"

    const-string v5, "DestructionOrSurvival0"

    filled-new-array {v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    :cond_1a
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$31;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "DestructionOrSurvival"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->skull:I

    mul-int/lit8 v5, v0, 0x2

    sub-int v5, v2, v5

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v3

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v13, v5

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$31;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_ARMY_DESTROYED_ROUND_ID:I

    const-string v9, "DestructionOrSurvival0"

    invoke-virtual {v7, v9, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0, v1, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    :cond_1b
    if-nez v18, :cond_1d

    const-string v7, "War"

    const-string v8, "ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX"

    const-string v9, "WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace"

    const-string v10, "WithAWarScoreOfXTheWinningSideCanMakeDemands"

    const-string v11, "EachMonthTheWinningSideGainsXOfTheTickingWarScoreBasedOnTheCurrentOverallWarScoreFromBattlesAndOccupiedProvinces"

    const-string v12, "AWhitePeaceWillBeAutomaticallySignedIfThereIsNoActivityForACertainPeriodAndTheWarscoreRemainsLow"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_e

    :cond_1c
    move-object/from16 v15, v22

    goto/16 :goto_f

    :cond_1d
    :goto_e
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Wars"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v10, v5, 0x4

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v13, v2, v5

    move-object v7, v3

    move v12, v1

    move/from16 v14, v23

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "War"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->war:I

    mul-int/lit8 v5, v0, 0x2

    sub-int v5, v2, v5

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v3

    move v10, v0

    move v11, v1

    move v12, v5

    move/from16 v13, v20

    move/from16 v14, v17

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->war:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_War;->RELATIONS_TO_DECLARE_WAR:I

    const-string v9, "ToDeclareWarTheRelationsBetweenCivilizationsMustBeBelowX"

    invoke-virtual {v7, v9, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0, v1, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->WAR_WHITE_PEACE_MIN_WAR_SCORE:F

    const/16 v10, 0x64

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v15, v22

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace"

    invoke-virtual {v7, v9, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0, v1, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->WAR_MAKE_DEMANDS_MIN_WAR_SCORE:F

    const/16 v10, 0x64

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WithAWarScoreOfXTheWinningSideCanMakeDemands"

    invoke-virtual {v7, v9, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0, v1, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "EachMonthTheWinningSideGainsXOfTheTickingWarScoreBasedOnTheCurrentOverallWarScoreFromBattlesAndOccupiedProvinces"

    const-string v9, "X"

    invoke-virtual {v7, v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0, v1, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "AWhitePeaceWillBeAutomaticallySignedIfThereIsNoActivityForACertainPeriodAndTheWarscoreRemainsLow"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0, v1, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    :goto_f
    if-nez v18, :cond_1f

    const-string v7, "PeaceTreaty"

    const-string v8, "PeaceNegotiations"

    const-string v9, "PeaceAnnex"

    const-string v10, "PeaceDemands"

    const-string v11, "WithAWarScoreOfXTheWinningSideCanMakeDemands"

    const-string v12, "WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_10

    :cond_1e
    move/from16 v22, v2

    goto/16 :goto_11

    :cond_1f
    :goto_10
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "PeaceNegotiations"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v10, v5, 0x4

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v13, v2, v5

    move-object v7, v3

    move v12, v1

    move/from16 v14, v23

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v7, 0x0

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Government/nSju/IlLkpaQxs;->oPWPOdnXwgko:Ljava/lang/String;

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->peace:I

    mul-int/lit8 v5, v0, 0x2

    sub-int v5, v2, v5

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v3

    move v10, v0

    move v11, v1

    move v12, v5

    move/from16 v13, v20

    move/from16 v14, v17

    move/from16 v22, v2

    move-object v2, v15

    move/from16 v15, v16

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->WAR_MAKE_DEMANDS_MIN_WAR_SCORE:F

    const/16 v10, 0x64

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "WithAWarScoreOfXTheWinningSideCanMakeDemands"

    invoke-virtual {v7, v9, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7, v0, v1, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/GameValues;->peace:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Peace;->WAR_WHITE_PEACE_MIN_WAR_SCORE:F

    const/16 v10, 0x64

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "WithAWarScoreOfXTheWinningSideCanProposeAWhitePeace"

    invoke-virtual {v7, v8, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v0, v1, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v7, 0x0

    sget-object v7, Lcom/badlogic/gdx/backends/android/surfaceview/JuyF/CvuNnwgYwe;->uDQbjWBjKa:Ljava/lang/String;

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "PeaceAnnex"

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1, v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    :goto_11
    if-nez v18, :cond_20

    const/4 v7, 0x0

    sget-object v7, Lcom/badlogic/gdx/backends/android/Zrdz/PxHJ;->QLjHFgIUXW:Ljava/lang/String;

    const-string v8, "SiegeProgress"

    const-string v9, "DailySiegeProgressIsTheSumOfTheSiegeAbilitiesOfAllUnitsInvolvedInTheSiege"

    const-string v10, "TheSiegeEndsWhenTheProgressReachesTheProvincesDefense"

    const-string v11, "AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"

    const-string v12, "MinimumArmyRequiredToSiegeProvinceX"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    :cond_20
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$32;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Siege"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v11, v3, 0x4

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v14, v22, v3

    move-object v7, v2

    move-object/from16 v8, p0

    move v13, v1

    move/from16 v15, v23

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$32;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$33;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "SiegeProgress"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v22, v3

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v2

    move v11, v0

    move v12, v1

    move v13, v3

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$33;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$34;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "DailySiegeProgressIsTheSumOfTheSiegeAbilitiesOfAllUnitsInvolvedInTheSiege"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v2

    move v10, v0

    move v11, v1

    move v12, v3

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$34;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$35;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "TheSiegeEndsWhenTheProgressReachesTheProvincesDefense"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v2

    move v11, v1

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$35;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$36;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "AfterASuccessfulSiegeAllNeighboringProvincesWithoutDefensiveBuildingsWillBeOccupied"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v2

    move v11, v1

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$36;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v5

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/GameValues;->siege:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Siege;->SIEGE_REGIMENTS_MIN:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v8, v8, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v7

    const-string v9, "MinimumArmyRequiredToSiegeProvinceX"

    invoke-virtual {v5, v9, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v0, v1, v3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    :cond_21
    const-string v2, "Fogofwar"

    if-nez v18, :cond_22

    const-string v3, "FogOfWarYouCanOnlyObserveActionsInYourOwnProvincesThoseOfYourAlliesAndSubjectsDirectlyBorderingProvincesAndWhatYourTroopsUncover"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    :cond_22
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$37;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v11, v5, 0x4

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v14, v22, v5

    move-object v7, v3

    move-object/from16 v8, p0

    move v13, v1

    move/from16 v15, v23

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$37;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$38;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    mul-int/lit8 v2, v0, 0x2

    sub-int v2, v22, v2

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v3

    move v11, v0

    move v12, v1

    move v13, v2

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$38;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "FogOfWarYouCanOnlyObserveActionsInYourOwnProvincesThoseOfYourAlliesAndSubjectsDirectlyBorderingProvincesAndWhatYourTroopsUncover"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    :cond_23
    const-string v2, "WarWeariness"

    if-nez v18, :cond_24

    const-string v3, "WarWearinessH1"

    const-string v5, "WarWearinessH2"

    filled-new-array {v2, v3, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_24
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v10, v5, 0x4

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v13, v22, v5

    move-object v7, v3

    move v12, v1

    move/from16 v14, v23

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$39;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->weariness:I

    mul-int/lit8 v2, v0, 0x2

    sub-int v2, v22, v2

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v3

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v13, v2

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$39;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "WarWearinessH1"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "WarWearinessH2"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_25
    const-string v2, "Diplomacy"

    if-nez v18, :cond_26

    const-string v3, "DifferentGovReligion"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    :cond_26
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v10, v5, 0x4

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v13, v22, v5

    move-object v7, v3

    move v12, v1

    move/from16 v14, v23

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->diplomacy:I

    mul-int/lit8 v2, v0, 0x2

    sub-int v2, v22, v2

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v3

    move v10, v0

    move v11, v1

    move v12, v2

    move/from16 v13, v20

    move/from16 v14, v17

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "DifferentGovReligion"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    :cond_27
    const-string v2, "CivilizationStability"

    if-nez v18, :cond_28

    const-string v3, "CivilizationStabilityReflectsThePercentageOfYourProvincesWithLegitimateClaimsComparedToThoseWithoutAndTakesIntoAccountYourReligiousUnity"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    :cond_28
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$40;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v11, v5, 0x4

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v14, v22, v5

    move-object v7, v3

    move-object/from16 v8, p0

    move v13, v1

    move/from16 v15, v23

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$40;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$41;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->civStability:I

    mul-int/lit8 v2, v0, 0x2

    sub-int v2, v22, v2

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v3

    move v11, v0

    move v12, v1

    move v13, v2

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$41;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$42;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "CivilizationStabilityReflectsThePercentageOfYourProvincesWithLegitimateClaimsComparedToThoseWithoutAndTakesIntoAccountYourReligiousUnity"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v3

    move v10, v0

    move v11, v1

    move v12, v2

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$42;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    :cond_29
    if-nez v18, :cond_2a

    const-string v2, "Income0"

    const-string v3, "Income1"

    const-string v5, "Province"

    const-string v7, "ProvinceMonthlyIncome"

    filled-new-array {v5, v7, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    :cond_2a
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$43;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Province"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v11, v3, 0x4

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v14, v22, v3

    move-object v7, v2

    move-object/from16 v8, p0

    move v13, v1

    move/from16 v15, v23

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$43;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$44;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "ProvinceMonthlyIncome"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v22, v3

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v2

    move v11, v0

    move v12, v1

    move v13, v3

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$44;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$45;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Income0"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v2

    move v10, v0

    move v11, v1

    move v12, v3

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$45;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$46;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Income1"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v2

    move v11, v1

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$46;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_2b
    if-nez v18, :cond_2c

    const-string v2, "TaxEfficiency"

    const-string v3, "TaxEfficiency0"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2c
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$47;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "TaxEfficiency"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v22, v3

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v13, v3

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$47;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$48;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "TaxEfficiency0"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v2

    move v10, v0

    move v11, v1

    move v12, v3

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$48;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_2d
    if-nez v18, :cond_2e

    const-string v2, "Economy0"

    const-string v3, "Economy1"

    const-string v5, "EconomyOfProvince"

    filled-new-array {v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    :cond_2e
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$49;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "EconomyOfProvince"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v22, v3

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v13, v3

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$49;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$50;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Economy0"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v2

    move v10, v0

    move v11, v1

    move v12, v3

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$50;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$51;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Economy1"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v2

    move v11, v1

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$51;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_2f
    if-nez v18, :cond_30

    const-string v2, "Production1"

    const-string v3, "Production2"

    const-string v5, "ProducedGoods"

    const-string v7, "Production0"

    filled-new-array {v5, v7, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    :cond_30
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$52;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "ProducedGoods"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v22, v3

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v13, v3

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$52;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$53;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Production0"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v2

    move v10, v0

    move v11, v1

    move v12, v3

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$53;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$54;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Production1"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v2

    move v11, v1

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$54;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$55;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Production2"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v2

    move v11, v1

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$55;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_31
    if-nez v18, :cond_32

    const-string v2, "Population0"

    const-string v3, "ThePopulationWillSlowlyAssimilateIfTheCivilizationHasACore"

    const-string v5, "Population"

    filled-new-array {v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_32
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$56;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Population"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->population:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v22, v3

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v13, v3

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$56;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$57;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Population0"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v2

    move v10, v0

    move v11, v1

    move v12, v3

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$57;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$58;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "ThePopulationWillSlowlyAssimilateIfTheCivilizationHasACore"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v2

    move v11, v1

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$58;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_33
    if-nez v18, :cond_34

    const-string v2, "GrowthRate"

    const-string v3, "GrowthRate0"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    :cond_34
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$59;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "GrowthRate"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v22, v3

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v13, v3

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$59;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$60;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "GrowthRate0"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v2

    move v10, v0

    move v11, v1

    move v12, v3

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$60;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_35
    if-nez v18, :cond_36

    const-string v2, "Plague0"

    const-string v3, "Plague1"

    const-string v5, "Diseases"

    filled-new-array {v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    :cond_36
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$61;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Diseases"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->disease:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v22, v3

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v13, v3

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$61;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$62;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Plague0"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v2

    move v10, v0

    move v11, v1

    move v12, v3

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$62;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Plague1"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v0, v1, v3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_37
    if-nez v18, :cond_38

    const-string v2, "Legacy1"

    const-string v3, "Legacy2"

    const-string v5, "LegacyPoints"

    const-string v7, "Legacy"

    const-string v8, "Legacy0"

    filled-new-array {v5, v7, v8, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    :cond_38
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$63;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "LegacyPoints"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v11, v3, 0x4

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v14, v22, v3

    move-object v7, v2

    move-object/from16 v8, p0

    move v13, v1

    move/from16 v15, v23

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$63;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$64;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Legacy"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v22, v3

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v2

    move v11, v0

    move v12, v1

    move v13, v3

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$64;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Legacy0"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v0, v1, v3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$65;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Legacy1"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v2

    move v10, v0

    move v11, v1

    move v12, v3

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$65;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Legacy2"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v0, v1, v3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_39
    if-nez v18, :cond_3a

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->COUNCIL_NAME:Ljava/lang/String;

    const-string v3, "Advisors"

    const-string v5, "Advisor0"

    filled-new-array {v2, v3, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    :cond_3a
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$66;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->COUNCIL_NAME:Ljava/lang/String;

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v11, v3, 0x4

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v14, v22, v3

    move-object v7, v2

    move-object/from16 v8, p0

    move v13, v1

    move/from16 v15, v23

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$66;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$67;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Advisors"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->council:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v22, v3

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v2

    move v11, v0

    move v12, v1

    move v13, v3

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$67;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$68;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v7, 0x0

    sget-object v7, Laoc/kingdoms/lukasz/menusScenarioEditor/YGiX/gpVDKipRURuzw;->fPT:Ljava/lang/String;

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v2

    move v10, v0

    move v11, v1

    move v12, v3

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$68;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_3b
    if-nez v18, :cond_3c

    const-string v2, "SupremeCourt"

    const-string v3, "Corruption0"

    const-string v5, "Corruption"

    filled-new-array {v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    :cond_3c
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$69;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Corruption"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v11, v3, 0x4

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v14, v22, v3

    move-object v7, v2

    move-object/from16 v8, p0

    move v13, v1

    move/from16 v15, v23

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$69;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$70;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "SupremeCourt"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->corruption:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v22, v3

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v2

    move v11, v0

    move v12, v1

    move v13, v3

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$70;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Corruption0"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v0, v1, v3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_3d
    if-nez v18, :cond_3e

    const-string v2, "Technology0"

    const/4 v3, 0x0

    sget-object v3, Lcom/badlogic/gdx/utils/compression/spWT/QefTqRjwAJmEDy;->OfOYHscRevisGNh:Ljava/lang/String;

    const-string v5, "Technologies"

    const-string v7, "Research"

    filled-new-array {v5, v7, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    :cond_3e
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$71;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Technologies"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v11, v3, 0x4

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v14, v22, v3

    move-object v7, v2

    move-object/from16 v8, p0

    move v13, v1

    move/from16 v15, v23

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$71;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "Research"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v22, v3

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v2

    move v10, v0

    move v11, v1

    move v12, v3

    move/from16 v13, v20

    move/from16 v14, v17

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v7, 0x0

    sget-object v7, Laoc/kingdoms/lukasz/menusInGame/DrawOver/SQ/XjthpFh;->rtD:Ljava/lang/String;

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v0, v1, v3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$72;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Technology1"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v1

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$72;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_3f
    if-nez v18, :cond_40

    const-string v2, "CivilizationAdvantages"

    const-string v3, "EachTimeYouUnlockATechnologyYouWillGainOneAdvantagePointThatYouCanExchangeForABonus"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    :cond_40
    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$73;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "CivilizationAdvantages"

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v3, v22, v3

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v13, v3

    move/from16 v14, v20

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$73;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "EachTimeYouUnlockATechnologyYouWillGainOneAdvantagePointThatYouCanExchangeForABonus"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v0, v1, v3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_41
    const-string v2, "CivilizationRank"

    if-nez v18, :cond_42

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_47

    :cond_42
    new-instance v3, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v10, v4, 0x4

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v13, v22, v4

    move-object v7, v3

    move v12, v1

    move/from16 v14, v23

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v4, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRank_IMG(I)I

    move-result v9

    mul-int/lit8 v2, v0, 0x2

    sub-int v4, v22, v2

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    move-object v7, v3

    move v10, v0

    move v11, v1

    move v12, v4

    move/from16 v13, v20

    move/from16 v14, v17

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG;-><init>(Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->council:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v3

    div-int/lit8 v4, v4, 0x2

    const/4 v3, 0x0

    :cond_43
    :goto_12
    sget-object v5, Laoc/kingdoms/lukasz/jakowski/GameValues;->civRank:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;

    iget-object v5, v5, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_CivRank;->CIV_RANK_MANPOWER_MAX:[I

    array-length v5, v5

    if-ge v3, v5, :cond_45

    rem-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_44

    move v11, v0

    goto :goto_13

    :cond_44
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v0

    add-int/2addr v5, v4

    move v11, v5

    :goto_13
    new-instance v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$74;

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRank_Name(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->getCivilizationRank_IMG(I)I

    move-result v10

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    move-object v7, v5

    move-object/from16 v8, p0

    move v12, v1

    move v13, v4

    move v15, v2

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$74;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_43

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v7

    add-int/2addr v1, v5

    goto :goto_12

    :cond_45
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v15, 0x0

    :goto_14
    if-ge v15, v2, :cond_47

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_46

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    :cond_46
    add-int/lit8 v15, v15, 0x1

    goto :goto_14

    :cond_47
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v2

    if-eqz v2, :cond_49

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "More"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v10, v3, 0x4

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v13, v22, v3

    move-object v7, v2

    move v12, v1

    move/from16 v14, v23

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v2

    if-eqz v2, :cond_48

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    goto :goto_15

    :cond_48
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    :goto_15
    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$75;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v5, "ListOfUnits"

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    mul-int/lit8 v4, v0, 0x2

    sub-int v4, v22, v4

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x4

    add-int v15, v5, v7

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-object v7, v3

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v13, v4

    move v14, v2

    invoke-direct/range {v7 .. v18}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$75;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIIIJ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$76;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "ListOfBuildings"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->buildings:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x4

    add-int v15, v5, v7

    move-object v7, v3

    move v12, v1

    invoke-direct/range {v7 .. v18}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$76;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;IIIIIIIJ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    :cond_49
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v19

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v2

    if-eqz v2, :cond_4a

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame_MapModesPosY()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_16

    :cond_4a
    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buttonPlay:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    :goto_16
    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v2, v22

    const/4 v9, 0x0

    invoke-direct {v0, v9, v9, v2, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$77;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Encyclopedia"

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    move-object v10, v1

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia$77;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;Ljava/lang/String;ZZI)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    if-eqz v0, :cond_4b

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sub-int/2addr v0, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    goto :goto_17

    :cond_4b
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    :goto_17
    move v3, v0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move v4, v2

    move v2, v3

    move/from16 v3, v19

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    iput-boolean v9, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->drawScrollPositionAlways:Z

    return-void
.end method

.method public static searchTexts(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public actionCloseMenu()V
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 14

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getInGame()Z

    move-result v0

    const/high16 v1, 0x42700000    # 60.0f

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v0, p2, v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v2, v2

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->lTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    div-float/2addr v3, v1

    mul-float/2addr v2, v3

    float-to-int v1, v2

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v2, v2

    sget-wide v3, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v5, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->lTime:J

    sub-long/2addr v3, v5

    long-to-float v3, v3

    div-float/2addr v3, v1

    mul-float/2addr v2, v3

    float-to-int v1, v2

    add-int/2addr v0, v1

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_1
    move/from16 v2, p2

    :goto_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getPosX()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getPosX()I

    move-result v0

    add-int v6, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getPosY()I

    move-result v0

    add-int v7, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getHeight()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getWidth()I

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

    add-int v7, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getPosY()I

    move-result v0

    add-int v8, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->getHeight()I

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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Encyclopedia;->lTime:J

    if-nez p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    :cond_0
    return-void
.end method
