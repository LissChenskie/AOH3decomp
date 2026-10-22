.class public Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_CivilizationAdvantages.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static iActiveCivID:I = -0x1

.field public static iActiveSortID:I = -0x1

.field public static iMenuWidth:I

.field public static lTime:J

.field public static lTime2:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 34

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sput p1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v2, 0x2

    mul-int/2addr v1, v2

    add-int v11, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v1, v2

    sub-int v1, v4, v1

    sput v1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iMenuWidth:I

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v3

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    add-int/2addr v5, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/2addr v7, v2

    add-int/2addr v1, v7

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v7

    if-eqz v7, :cond_0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    goto :goto_0

    :cond_0
    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    :goto_0
    const/4 v10, 0x0

    sput-boolean v10, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyChoose;->IN_TECHNOLOGY_CHOOSE:Z

    sget v8, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const-string v15, "CivilizationAdvantages"

    const-string v14, ": "

    const/4 v13, 0x1

    if-ne v8, v9, :cond_7

    new-instance v8, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "GroupsOfAdvantages"

    invoke-virtual {v9, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, -0x1

    sget v19, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v9, v2

    sub-int v22, v4, v9

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v12, 0x6

    add-int v23, v9, v12

    const/16 v21, 0x0

    move-object/from16 v16, v8

    invoke-direct/range {v16 .. v23}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2Center;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v13

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v8, v9

    add-int/2addr v8, v10

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$1;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Administrative"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget v17, Laoc/kingdoms/lukasz/textures/Images;->government:I

    mul-int/lit8 v12, v0, 0x2

    sub-int v23, v4, v12

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v12, v23, v12

    div-int/lit8 v18, v12, 0x2

    sget v12, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v20

    sget v12, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveSortID:I

    if-nez v12, :cond_1

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_1

    :cond_1
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_1
    move/from16 v22, v12

    move-object v12, v9

    const/4 v10, 0x1

    move-object/from16 v13, p0

    move-object/from16 v24, v14

    move-object/from16 v14, v16

    move-object/from16 v25, v15

    move/from16 v15, v17

    move/from16 v16, v0

    move/from16 v17, v8

    move/from16 v19, v7

    invoke-direct/range {v12 .. v22}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$2;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Economic"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v12, v23, v12

    div-int/2addr v12, v2

    add-int/2addr v12, v0

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v16, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v12, v23, v12

    div-int/lit8 v18, v12, 0x2

    sget v12, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v20

    const/16 v21, 0x0

    sget v12, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveSortID:I

    if-ne v12, v10, :cond_2

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_2

    :cond_2
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_2
    move/from16 v22, v12

    move-object v12, v9

    move-object/from16 v13, p0

    move/from16 v17, v8

    move/from16 v19, v7

    invoke-direct/range {v12 .. v22}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v10

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v9

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v9, v12

    add-int/2addr v8, v9

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$3;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Military"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v12, v23, v12

    div-int/lit8 v18, v12, 0x2

    sget v12, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v20

    const/16 v21, 0x0

    sget v12, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveSortID:I

    if-ne v12, v2, :cond_3

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_3

    :cond_3
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_3
    move/from16 v22, v12

    move-object v12, v9

    move-object/from16 v13, p0

    move/from16 v16, v0

    move/from16 v17, v8

    move/from16 v19, v7

    invoke-direct/range {v12 .. v22}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$4;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "All"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v12, v23, v12

    div-int/2addr v12, v2

    add-int/2addr v12, v0

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v16, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v12, v23, v12

    div-int/lit8 v18, v12, 0x2

    sget v12, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v20

    const/16 v21, 0x0

    sget v12, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveSortID:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_4

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_4

    :cond_4
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_4
    move/from16 v22, v12

    move-object v12, v9

    move-object/from16 v13, p0

    move/from16 v17, v8

    move/from16 v19, v7

    invoke-direct/range {v12 .. v22}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v10

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v9

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v9, v12

    add-int/2addr v8, v9

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v9

    if-lez v9, :cond_6

    new-instance v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Advantages"

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v14, v12, 0x4

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v12, v2

    sub-int v17, v4, v12

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v16, 0x4

    add-int v18, v12, v16

    const-string v19, ""

    move-object v12, v9

    move/from16 v16, v8

    invoke-direct/range {v12 .. v19}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v10

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v9

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v9, v12

    add-int/2addr v8, v9

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$5;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "UnlockAdvantage"

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v15, v24

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "Random"

    invoke-virtual {v13, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v20

    const/16 v21, 0x0

    sget v12, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveSortID:I

    if-nez v12, :cond_5

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    goto :goto_5

    :cond_5
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    :goto_5
    move/from16 v22, v12

    move-object v12, v9

    move-object/from16 v13, p0

    move-object v2, v15

    move/from16 v15, v16

    move/from16 v16, v0

    move/from16 v17, v8

    move/from16 v18, v23

    move/from16 v19, v7

    invoke-direct/range {v12 .. v22}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;Ljava/lang/String;IIIIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v7

    add-int/2addr v8, v0

    goto :goto_6

    :cond_6
    move-object/from16 v2, v24

    :goto_6
    move v0, v8

    move-object/from16 v26, v25

    goto :goto_7

    :cond_7
    move v10, v13

    move-object v2, v14

    move-object/from16 v25, v15

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v9, 0x0

    add-int/2addr v8, v9

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$6;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v13, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v13}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAdvantagesSize:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    mul-int/lit8 v12, v0, 0x2

    sub-int v18, v4, v12

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v20

    const/16 v21, 0x0

    move-object v12, v9

    move-object/from16 v13, p0

    move-object/from16 v26, v15

    move/from16 v15, v16

    move/from16 v16, v0

    move/from16 v17, v8

    move/from16 v19, v7

    invoke-direct/range {v12 .. v21}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;Ljava/lang/String;IIIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v7

    add-int/2addr v8, v0

    move v0, v8

    :goto_7
    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x5

    add-int/2addr v7, v8

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_8
    sget v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->iAdvantagesSize:I

    if-ge v9, v12, :cond_d1

    sget v12, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    sget-object v13, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v13, v13, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v12, v13, :cond_9

    sget v12, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveSortID:I

    if-ltz v12, :cond_8

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GroupID:I

    if-eq v12, v13, :cond_8

    goto :goto_9

    :cond_8
    sget v12, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RequiredTechID:I

    invoke-virtual {v12, v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v12

    if-nez v12, :cond_a

    sget v12, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v9, v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantage(II)Z

    move-result v12

    if-nez v12, :cond_a

    goto :goto_9

    :cond_9
    const/4 v13, 0x0

    sget v12, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12, v9, v13}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantage(II)Z

    move-result v12

    if-nez v12, :cond_a

    :goto_9
    move/from16 v29, v0

    move-object/from16 v27, v2

    move/from16 v24, v3

    move/from16 v28, v5

    :goto_a
    move/from16 v30, v11

    goto/16 :goto_8d

    :cond_a
    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    div-int/lit8 v14, v4, 0x2

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImageID:[I

    array-length v15, v15

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v16

    mul-int v15, v15, v16

    sget v16, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v16, 0x2

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImageID:[I

    array-length v13, v13

    sub-int/2addr v13, v10

    mul-int v16, v16, v13

    add-int v15, v15, v16

    const/4 v13, 0x2

    div-int/2addr v15, v13

    sub-int/2addr v14, v15

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v21

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionCost:[F

    const/high16 v22, 0x42c80000    # 100.0f

    const-string v15, "%"

    const-string v13, ""

    if-eqz v12, :cond_c

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v16, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static/range {v16 .. v16}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    invoke-virtual {v14, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v14

    move-object/from16 v16, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v15

    sget-object v15, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move/from16 v24, v3

    const-string v3, "ConstructionCost"

    invoke-virtual {v15, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget v19, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v20, 0x0

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v25, 0x2

    mul-int/lit8 v12, v12, 0x2

    sub-int v25, v4, v12

    move-object/from16 v27, v2

    move-object/from16 v2, v16

    move-object v12, v10

    move/from16 v28, v5

    move-object v5, v13

    move v13, v14

    move/from16 v29, v0

    const/16 v0, 0xa

    move-object v14, v15

    move-object/from16 v30, v18

    move/from16 v15, v19

    move/from16 v16, v20

    move/from16 v17, v25

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    :goto_b
    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionCost:[F

    array-length v12, v12

    if-ge v10, v12, :cond_b

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$7;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int/2addr v12, v10

    add-int v12, v21, v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/2addr v13, v14

    mul-int/2addr v13, v10

    add-int v14, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v16, v7, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v12, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionCost:[F

    aget v13, v13, v10

    mul-float v13, v13, v22

    invoke-static {v13, v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v13, v30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    move-object v12, v15

    move-object/from16 v31, v13

    move-object/from16 v13, p0

    move-object v0, v15

    move/from16 v15, v16

    move/from16 v16, v9

    move/from16 v17, v10

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v30, v31

    const/16 v0, 0xa

    goto :goto_b

    :cond_b
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    add-int/2addr v10, v12

    invoke-direct {v0, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_c
    move/from16 v29, v0

    move-object/from16 v27, v2

    move/from16 v24, v3

    move/from16 v28, v5

    move-object v5, v13

    move-object/from16 v31, v15

    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdministrationBuildingsCost:[F

    if-eqz v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "AdministrationBuildingsCost"

    invoke-virtual {v10, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/2addr v10, v12

    sub-int v17, v4, v10

    move-object v12, v2

    move-object v10, v15

    move v15, v3

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_c
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdministrationBuildingsCost:[F

    array-length v3, v3

    if-ge v2, v3, :cond_d

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$8;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int/2addr v12, v2

    add-int v12, v21, v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/2addr v13, v14

    mul-int/2addr v13, v2

    add-int v14, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v12, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdministrationBuildingsCost:[F

    aget v13, v13, v2

    mul-float v13, v13, v22

    move-object/from16 v30, v10

    const/16 v10, 0xa

    invoke-static {v13, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v13, v31

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    move-object v12, v3

    move-object v10, v13

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v31, v10

    move-object/from16 v10, v30

    goto :goto_c

    :cond_d
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    add-int/2addr v10, v12

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_e
    move-object/from16 v10, v31

    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MilitaryBuildingsCost:[F

    if-eqz v0, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "MilitaryBuildingsCost"

    invoke-virtual {v12, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v17, 0x2

    mul-int/lit8 v12, v12, 0x2

    sub-int v17, v4, v12

    move-object v12, v2

    move/from16 v30, v11

    move-object v11, v15

    move v15, v3

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_d
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MilitaryBuildingsCost:[F

    array-length v3, v3

    if-ge v2, v3, :cond_f

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$9;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int/2addr v12, v2

    add-int v12, v21, v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/2addr v13, v14

    mul-int/2addr v13, v2

    add-int v14, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v12, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MilitaryBuildingsCost:[F

    aget v13, v13, v2

    mul-float v13, v13, v22

    move-object/from16 v31, v11

    const/16 v11, 0xa

    invoke-static {v13, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v11, v31

    goto :goto_d

    :cond_f
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_10
    move/from16 v30, v11

    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->EconomyBuildingsCost:[F

    if-eqz v0, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "EconomyBuildingsCost"

    invoke-virtual {v11, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    sub-int v17, v4, v11

    move-object v12, v2

    move-object v11, v15

    move v15, v3

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_e
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->EconomyBuildingsCost:[F

    array-length v3, v3

    if-ge v2, v3, :cond_11

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$10;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int/2addr v12, v2

    add-int v12, v21, v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/2addr v13, v14

    mul-int/2addr v13, v2

    add-int v14, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v12, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->EconomyBuildingsCost:[F

    aget v13, v13, v2

    mul-float v13, v13, v22

    move-object/from16 v31, v11

    const/16 v11, 0xa

    invoke-static {v13, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v11, v31

    goto :goto_e

    :cond_11
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_12
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionTime:[F

    if-eqz v0, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "ConstructionTime"

    invoke-virtual {v11, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    sub-int v17, v4, v11

    move-object v12, v2

    move-object v11, v15

    move v15, v3

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_f
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionTime:[F

    array-length v3, v3

    if-ge v2, v3, :cond_13

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$11;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int/2addr v12, v2

    add-int v12, v21, v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/2addr v13, v14

    mul-int/2addr v13, v2

    add-int v14, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v12, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionTime:[F

    aget v13, v13, v2

    mul-float v13, v13, v22

    move-object/from16 v31, v11

    const/16 v11, 0xa

    invoke-static {v13, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v11, v31

    goto :goto_f

    :cond_13
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_14
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WonderConstructionCost:[F

    if-eqz v0, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "WonderConstructionCost"

    invoke-virtual {v11, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    sub-int v17, v4, v11

    move-object v12, v2

    move-object v11, v15

    move v15, v3

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_10
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WonderConstructionCost:[F

    array-length v3, v3

    if-ge v2, v3, :cond_15

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$12;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int/2addr v12, v2

    add-int v12, v21, v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/2addr v13, v14

    mul-int/2addr v13, v2

    add-int v14, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v12, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WonderConstructionCost:[F

    aget v13, v13, v2

    mul-float v13, v13, v22

    move-object/from16 v31, v11

    const/16 v11, 0xa

    invoke-static {v13, v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->mapModesWonders:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v11, v31

    goto :goto_10

    :cond_15
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_16
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->TaxEfficiency:[F

    const-string v3, "+"

    if-eqz v0, :cond_19

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    invoke-virtual {v12, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "TaxEfficiency"

    invoke-virtual {v14, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v16, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v17, 0x0

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v18, 0x2

    mul-int/lit8 v12, v12, 0x2

    sub-int v18, v4, v12

    move-object v12, v11

    move-object v2, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v11, 0x0

    :goto_11
    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->TaxEfficiency:[F

    array-length v12, v12

    if-ge v11, v12, :cond_18

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$13;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int/2addr v12, v11

    add-int v12, v21, v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/2addr v13, v14

    mul-int/2addr v13, v11

    add-int v14, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v16, v7, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v12, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->TaxEfficiency:[F

    aget v13, v13, v11

    const/16 v17, 0x0

    cmpl-float v13, v13, v17

    if-lez v13, :cond_17

    move-object v13, v3

    goto :goto_12

    :cond_17
    move-object v13, v5

    :goto_12
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->TaxEfficiency:[F

    aget v13, v13, v11

    move-object/from16 v22, v2

    const/16 v2, 0xa

    invoke-static {v13, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    move-object v12, v15

    move-object/from16 v13, p0

    move-object v2, v15

    move/from16 v15, v16

    move/from16 v16, v9

    move/from16 v17, v11

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v22

    goto :goto_11

    :cond_18
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_19
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProvinceMaintenance:[F

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v15, "ProvinceMaintenance"

    invoke-virtual {v12, v15}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v17, 0x2

    mul-int/lit8 v12, v12, 0x2

    sub-int v17, v4, v12

    move-object v12, v2

    move-object/from16 v32, v3

    move-object v3, v15

    move v15, v11

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_13
    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProvinceMaintenance:[F

    array-length v11, v11

    if-ge v2, v11, :cond_1b

    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$14;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int/2addr v12, v2

    add-int v12, v21, v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/2addr v13, v14

    mul-int/2addr v13, v2

    add-int v14, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v12, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProvinceMaintenance:[F

    aget v13, v13, v2

    const/16 v16, 0x0

    cmpl-float v13, v13, v16

    if-lez v13, :cond_1a

    move-object/from16 v13, v32

    goto :goto_14

    :cond_1a
    move-object v13, v5

    :goto_14
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProvinceMaintenance:[F

    aget v13, v13, v2

    move-object/from16 v22, v3

    const/16 v3, 0xa

    invoke-static {v13, v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    move-object v12, v11

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v22

    goto :goto_13

    :cond_1b
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_1c
    move-object/from16 v32, v3

    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingsMaintenanceCost:[F

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "BuildingsMaintenanceCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_15
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingsMaintenanceCost:[F

    array-length v3, v3

    if-ge v2, v3, :cond_1e

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$15;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "BuildingsMaintenanceCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingsMaintenanceCost:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1d

    move-object/from16 v13, v32

    goto :goto_16

    :cond_1d
    move-object v13, v5

    :goto_16
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingsMaintenanceCost:[F

    aget v12, v12, v2

    mul-float v12, v12, v22

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->buildings:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_1e
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_1f
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoverySpeed:[F

    if-eqz v0, :cond_22

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ManpowerRecoverySpeed"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_17
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoverySpeed:[F

    array-length v3, v3

    if-ge v2, v3, :cond_21

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$16;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ManpowerRecoverySpeed"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoverySpeed:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_20

    move-object/from16 v13, v32

    goto :goto_18

    :cond_20
    move-object v13, v5

    :goto_18
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoverySpeed:[F

    aget v12, v12, v2

    mul-float v12, v12, v22

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_21
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_22
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMoraleRecovery:[F

    if-eqz v0, :cond_25

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ArmyMoraleRecovery"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_19
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMoraleRecovery:[F

    array-length v3, v3

    if-ge v2, v3, :cond_24

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$17;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ArmyMoraleRecovery"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMoraleRecovery:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_23

    move-object/from16 v13, v32

    goto :goto_1a

    :cond_23
    move-object v13, v5

    :goto_1a
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMoraleRecovery:[F

    aget v12, v12, v2

    mul-float v12, v12, v22

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->morale:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$17;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_24
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_25
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WarScoreCost:[F

    if-eqz v0, :cond_28

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "WarScoreCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_1b
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WarScoreCost:[F

    array-length v3, v3

    if-ge v2, v3, :cond_27

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$18;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "WarScoreCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WarScoreCost:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_26

    move-object/from16 v13, v32

    goto :goto_1c

    :cond_26
    move-object v13, v5

    :goto_1c
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WarScoreCost:[F

    aget v12, v12, v2

    mul-float v12, v12, v22

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->victoryPoints:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$18;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_27
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_28
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReinforcementSpeed:[F

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ReinforcementSpeed"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_1d
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReinforcementSpeed:[F

    array-length v3, v3

    if-ge v2, v3, :cond_2a

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$19;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ReinforcementSpeed"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReinforcementSpeed:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_29

    move-object/from16 v13, v32

    goto :goto_1e

    :cond_29
    move-object v13, v5

    :goto_1e
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReinforcementSpeed:[F

    aget v12, v12, v2

    mul-float v12, v12, v22

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$19;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_2a
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_2b
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxManpower:[I

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "MaximumManpower"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v10, 0x2

    mul-int/2addr v3, v10

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_1f
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxManpower:[I

    array-length v3, v3

    if-ge v2, v3, :cond_2d

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$20;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v10

    mul-int/2addr v10, v2

    add-int v10, v21, v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    mul-int/2addr v11, v2

    add-int v14, v10, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v11, 0x0

    sget-object v11, Lcom/badlogic/gdx/net/otUh/aBEBOpwLZcQFCZ;->emlP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxManpower:[I

    aget v11, v11, v2

    if-lez v11, :cond_2c

    move-object/from16 v13, v32

    goto :goto_20

    :cond_2c
    move-object v13, v5

    :goto_20
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxManpower:[I

    aget v12, v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$20;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2d
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_2e
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Research:[F

    if-eqz v0, :cond_31

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Research"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_21
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Research:[F

    array-length v3, v3

    if-ge v2, v3, :cond_30

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$21;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Research"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Research:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_2f

    move-object/from16 v13, v32

    goto :goto_22

    :cond_2f
    move-object v13, v5

    :goto_22
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Research:[F

    aget v12, v12, v2

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$21;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_30
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_31
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ResearchPoints:[F

    const/16 v2, 0x64

    if-eqz v0, :cond_34

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ResearchPerMonth"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v10, v11

    sub-int v17, v4, v10

    move-object v12, v3

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :goto_23
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ResearchPoints:[F

    array-length v10, v10

    if-ge v3, v10, :cond_33

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$22;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v3

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v3

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ResearchPerMonth"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ResearchPoints:[F

    aget v12, v12, v3

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_32

    move-object/from16 v13, v32

    goto :goto_24

    :cond_32
    move-object v13, v5

    :goto_24
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ResearchPoints:[F

    aget v12, v12, v3

    invoke-static {v12, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    move-object v12, v10

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v3

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$22;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_33
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_34
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingSlot:[I

    if-eqz v0, :cond_37

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "AdditionalBuildingsInProvince"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v10, 0x2

    mul-int/2addr v3, v10

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_25
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingSlot:[I

    array-length v3, v3

    if-ge v2, v3, :cond_36

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$23;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v10

    mul-int/2addr v10, v2

    add-int v10, v21, v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    mul-int/2addr v11, v2

    add-int v14, v10, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "AdditionalBuildingsInProvince"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingSlot:[I

    aget v11, v11, v2

    if-lez v11, :cond_35

    move-object/from16 v13, v32

    goto :goto_26

    :cond_35
    move-object v13, v5

    :goto_26
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingSlot:[I

    aget v11, v11, v2

    int-to-float v11, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->build:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$23;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_36
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_37
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxInfrastructure:[I

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "MaximumInfrastructureLevel"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v10, 0x2

    mul-int/2addr v3, v10

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_27
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxInfrastructure:[I

    array-length v3, v3

    if-ge v2, v3, :cond_39

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$24;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v10

    mul-int/2addr v10, v2

    add-int v10, v21, v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    mul-int/2addr v11, v2

    add-int v14, v10, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "MaximumInfrastructureLevel"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxInfrastructure:[I

    aget v11, v11, v2

    if-lez v11, :cond_38

    move-object/from16 v13, v32

    goto :goto_28

    :cond_38
    move-object v13, v5

    :goto_28
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxInfrastructure:[I

    aget v11, v11, v2

    int-to-float v11, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->infrastructure:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$24;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_39
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_3a
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Devastation:[F

    if-eqz v0, :cond_3d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Devastation"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_29
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Devastation:[F

    array-length v3, v3

    if-ge v2, v3, :cond_3c

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$25;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Devastation"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Devastation:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3b

    move-object/from16 v13, v32

    goto :goto_2a

    :cond_3b
    move-object v13, v5

    :goto_2a
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Devastation:[F

    aget v12, v12, v2

    mul-float v12, v12, v22

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->devastation:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$25;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    :cond_3c
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_3d
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GrowthRate:[F

    if-eqz v0, :cond_40

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "GrowthRate"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_2b
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GrowthRate:[F

    array-length v3, v3

    if-ge v2, v3, :cond_3f

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$26;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "GrowthRate"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GrowthRate:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_3e

    move-object/from16 v13, v32

    goto :goto_2c

    :cond_3e
    move-object v13, v5

    :goto_2c
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GrowthRate:[F

    aget v12, v12, v2

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$26;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    :cond_3f
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_40
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyIncome:[F

    if-eqz v0, :cond_43

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "MonthlyIncome"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v10, v11

    sub-int v17, v4, v10

    move-object v12, v3

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :goto_2d
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyIncome:[F

    array-length v10, v10

    if-ge v3, v10, :cond_42

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$27;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v3

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v3

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "MonthlyIncome"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyIncome:[F

    aget v12, v12, v3

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_41

    move-object/from16 v13, v32

    goto :goto_2e

    :cond_41
    move-object v13, v5

    :goto_2e
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyIncome:[F

    aget v12, v12, v3

    invoke-static {v12, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->goldPositive:I

    move-object v12, v10

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v3

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$27;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_42
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_43
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Gold:[F

    if-eqz v0, :cond_46

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Gold"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v10, v11

    sub-int v17, v4, v10

    move-object v12, v3

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :goto_2f
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Gold:[F

    array-length v10, v10

    if-ge v3, v10, :cond_45

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$28;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v3

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v3

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Gold"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Gold:[F

    aget v12, v12, v3

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_44

    move-object/from16 v13, v32

    goto :goto_30

    :cond_44
    move-object v13, v5

    :goto_30
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Gold:[F

    aget v12, v12, v3

    invoke-static {v12, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    move-object v12, v10

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v3

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$28;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_45
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_46
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyLegacy:[F

    if-eqz v0, :cond_49

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "MonthlyLegacy"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v10, v11

    sub-int v17, v4, v10

    move-object v12, v3

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :goto_31
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyLegacy:[F

    array-length v10, v10

    if-ge v3, v10, :cond_48

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$29;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v3

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v3

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "MonthlyLegacy"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyLegacy:[F

    aget v12, v12, v3

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_47

    move-object/from16 v13, v32

    goto :goto_32

    :cond_47
    move-object v13, v5

    :goto_32
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyLegacy:[F

    aget v12, v12, v3

    invoke-static {v12, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    move-object v12, v10

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v3

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$29;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_48
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_49
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeProduction:[F

    if-eqz v0, :cond_4c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "IncomeProduction"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_33
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeProduction:[F

    array-length v3, v3

    if-ge v2, v3, :cond_4b

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$30;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "IncomeProduction"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeProduction:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4a

    move-object/from16 v13, v32

    goto :goto_34

    :cond_4a
    move-object v13, v5

    :goto_34
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeProduction:[F

    aget v12, v12, v2

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$30;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_4b
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_4c
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProductionEfficiency:[F

    if-eqz v0, :cond_4f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v12, 0x0

    sget-object v12, Lcom/badlogic/gdx/utils/compression/spWT/QefTqRjwAJmEDy;->EWLFSEGmwUTJu:Ljava/lang/String;

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_35
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProductionEfficiency:[F

    array-length v3, v3

    if-ge v2, v3, :cond_4e

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$31;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ProductionEfficiency"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProductionEfficiency:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4d

    move-object/from16 v13, v32

    goto :goto_36

    :cond_4d
    move-object v13, v5

    :goto_36
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProductionEfficiency:[F

    aget v12, v12, v2

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$31;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    :cond_4e
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_4f
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->InvestInEconomyCost:[F

    if-eqz v0, :cond_52

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "InvestInEconomyCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_37
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->InvestInEconomyCost:[F

    array-length v3, v3

    if-ge v2, v3, :cond_51

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$32;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "InvestInEconomyCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->InvestInEconomyCost:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_50

    move-object/from16 v13, v32

    goto :goto_38

    :cond_50
    move-object v13, v5

    :goto_38
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->InvestInEconomyCost:[F

    aget v12, v12, v2

    mul-float v12, v12, v22

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY_UP:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$32;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_51
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_52
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseManpowerCost:[F

    if-eqz v0, :cond_55

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "IncreaseManpowerCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_39
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseManpowerCost:[F

    array-length v3, v3

    if-ge v2, v3, :cond_54

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$33;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "IncreaseManpowerCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseManpowerCost:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_53

    move-object/from16 v13, v32

    goto :goto_3a

    :cond_53
    move-object v13, v5

    :goto_3a
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseManpowerCost:[F

    aget v12, v12, v2

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$33;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_54
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_55
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseTaxEfficiencyCost:[F

    if-eqz v0, :cond_58

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "IncreaseTaxEfficiencyCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_3b
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseTaxEfficiencyCost:[F

    array-length v3, v3

    if-ge v2, v3, :cond_57

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$34;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "IncreaseTaxEfficiencyCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseTaxEfficiencyCost:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_56

    move-object/from16 v13, v32

    goto :goto_3c

    :cond_56
    move-object v13, v5

    :goto_3c
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseTaxEfficiencyCost:[F

    aget v12, v12, v2

    mul-float v12, v12, v22

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->taxUp:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$34;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    :cond_57
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_58
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseGrowthRateCost:[F

    if-eqz v0, :cond_5b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "IncreaseGrowthRateCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_3d
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseGrowthRateCost:[F

    array-length v3, v3

    if-ge v2, v3, :cond_5a

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$35;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "IncreaseGrowthRateCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseGrowthRateCost:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_59

    move-object/from16 v13, v32

    goto :goto_3e

    :cond_59
    move-object v13, v5

    :goto_3e
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseGrowthRateCost:[F

    aget v12, v12, v2

    mul-float v12, v12, v22

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->populationUp:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$35;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_5a
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_5b
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DevelopInfrastructureCost:[F

    if-eqz v0, :cond_5e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "DevelopInfrastructureCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_3f
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DevelopInfrastructureCost:[F

    array-length v3, v3

    if-ge v2, v3, :cond_5d

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$36;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "DevelopInfrastructureCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DevelopInfrastructureCost:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_5c

    move-object/from16 v13, v32

    goto :goto_40

    :cond_5c
    move-object v13, v5

    :goto_40
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DevelopInfrastructureCost:[F

    aget v12, v12, v2

    mul-float v12, v12, v22

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->infrastructureUp:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$36;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3f

    :cond_5d
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_5e
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralAttack:[I

    if-eqz v0, :cond_61

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "GeneralsAttack"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v10, 0x2

    mul-int/2addr v3, v10

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_41
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralAttack:[I

    array-length v3, v3

    if-ge v2, v3, :cond_60

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$37;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v10

    mul-int/2addr v10, v2

    add-int v10, v21, v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    mul-int/2addr v11, v2

    add-int v14, v10, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "GeneralsAttack"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralAttack:[I

    aget v11, v11, v2

    if-lez v11, :cond_5f

    move-object/from16 v13, v32

    goto :goto_42

    :cond_5f
    move-object v13, v5

    :goto_42
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralAttack:[I

    aget v11, v11, v2

    int-to-float v11, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$37;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    :cond_60
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_61
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralDefense:[I

    if-eqz v0, :cond_64

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "GeneralsDefense"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v10, 0x2

    mul-int/2addr v3, v10

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_43
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralDefense:[I

    array-length v3, v3

    if-ge v2, v3, :cond_63

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$38;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v10

    mul-int/2addr v10, v2

    add-int v10, v21, v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    mul-int/2addr v11, v2

    add-int v14, v10, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "GeneralsDefense"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralDefense:[I

    aget v11, v11, v2

    if-lez v11, :cond_62

    move-object/from16 v13, v32

    goto :goto_44

    :cond_62
    move-object v13, v5

    :goto_44
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralDefense:[I

    aget v11, v11, v2

    int-to-float v11, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$38;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :cond_63
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_64
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsAttack:[I

    if-eqz v0, :cond_67

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "UnitsAttack"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v10, 0x2

    mul-int/2addr v3, v10

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_45
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsAttack:[I

    array-length v3, v3

    if-ge v2, v3, :cond_66

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$39;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v10

    mul-int/2addr v10, v2

    add-int v10, v21, v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    mul-int/2addr v11, v2

    add-int v14, v10, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "UnitsAttack"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsAttack:[I

    aget v11, v11, v2

    if-lez v11, :cond_65

    move-object/from16 v13, v32

    goto :goto_46

    :cond_65
    move-object v13, v5

    :goto_46
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsAttack:[I

    aget v11, v11, v2

    int-to-float v11, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$39;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_66
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_67
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsDefense:[I

    if-eqz v0, :cond_6a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "UnitsDefense"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v10, 0x2

    mul-int/2addr v3, v10

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_47
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsDefense:[I

    array-length v3, v3

    if-ge v2, v3, :cond_69

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$40;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v10

    mul-int/2addr v10, v2

    add-int v10, v21, v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    mul-int/2addr v11, v2

    add-int v14, v10, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v11, 0x0

    sget-object v11, Laoc/kingdoms/lukasz/map/terrain/exjB/uiwPYaNhJS;->cXCHfgJkksdJPo:Ljava/lang/String;

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsDefense:[I

    aget v11, v11, v2

    if-lez v11, :cond_68

    move-object/from16 v13, v32

    goto :goto_48

    :cond_68
    move-object v13, v5

    :goto_48
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsDefense:[I

    aget v11, v11, v2

    int-to-float v11, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$40;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    :cond_69
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_6a
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxMorale:[F

    if-eqz v0, :cond_6d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "MaxMorale"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_49
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxMorale:[F

    array-length v3, v3

    if-ge v2, v3, :cond_6c

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$41;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "MaxMorale"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxMorale:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6b

    move-object/from16 v13, v32

    goto :goto_4a

    :cond_6b
    move-object v13, v5

    :goto_4a
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxMorale:[F

    aget v12, v12, v2

    mul-float v12, v12, v22

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->morale:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$41;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :cond_6c
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_6d
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMovementSpeed:[F

    if-eqz v0, :cond_70

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ArmyMovementSpeed"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_4b
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMovementSpeed:[F

    array-length v3, v3

    if-ge v2, v3, :cond_6f

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$42;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ArmyMovementSpeed"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMovementSpeed:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_6e

    move-object/from16 v13, v32

    goto :goto_4c

    :cond_6e
    move-object v13, v5

    :goto_4c
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMovementSpeed:[F

    aget v12, v12, v2

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->movementSpeed:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$42;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    :cond_6f
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_70
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->SiegeEffectiveness:[F

    if-eqz v0, :cond_73

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "SiegeEffectiveness"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_4d
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->SiegeEffectiveness:[F

    array-length v3, v3

    if-ge v2, v3, :cond_72

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$43;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "SiegeEffectiveness"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->SiegeEffectiveness:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_71

    move-object/from16 v13, v32

    goto :goto_4e

    :cond_71
    move-object v13, v5

    :goto_4e
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->SiegeEffectiveness:[F

    aget v12, v12, v2

    mul-float v12, v12, v22

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$43;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    :cond_72
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_73
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImproveRelationsModifier:[F

    if-eqz v0, :cond_76

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v12, 0x0

    sget-object v12, Lcom/google/android/gms/internal/tasks/Vhe/SwmJtrccN;->nxoSOBxylIq:Ljava/lang/String;

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_4f
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImproveRelationsModifier:[F

    array-length v3, v3

    if-ge v2, v3, :cond_75

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$44;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ImproveRelationsModifier"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImproveRelationsModifier:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_74

    move-object/from16 v13, v32

    goto :goto_50

    :cond_74
    move-object v13, v5

    :goto_50
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImproveRelationsModifier:[F

    aget v12, v12, v2

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->relations:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$44;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    :cond_75
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_76
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeFromVassals:[F

    if-eqz v0, :cond_79

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "IncomeFromVassals"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_51
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeFromVassals:[F

    array-length v3, v3

    if-ge v2, v3, :cond_78

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$45;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "IncomeFromVassals"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeFromVassals:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_77

    move-object/from16 v13, v32

    goto :goto_52

    :cond_77
    move-object v13, v5

    :goto_52
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeFromVassals:[F

    aget v12, v12, v2

    mul-float v12, v12, v22

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->vassal:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$45;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    :cond_78
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_79
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->LoanInterest:[F

    if-eqz v0, :cond_7c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "LoanInterest"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_53
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->LoanInterest:[F

    array-length v3, v3

    if-ge v2, v3, :cond_7b

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$46;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "LoanInterest"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->LoanInterest:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_7a

    move-object/from16 v13, v32

    goto :goto_54

    :cond_7a
    move-object v13, v5

    :goto_54
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->LoanInterest:[F

    aget v12, v12, v2

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->loan:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$46;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_7b
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_7c
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiplomacyPoints:[F

    if-eqz v0, :cond_7f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "DiplomacyPoints"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_55
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiplomacyPoints:[F

    array-length v3, v3

    if-ge v2, v3, :cond_7e

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$47;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "DiplomacyPoints"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiplomacyPoints:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_7d

    move-object/from16 v13, v32

    goto :goto_56

    :cond_7d
    move-object v13, v5

    :goto_56
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiplomacyPoints:[F

    aget v12, v12, v2

    mul-float v12, v12, v22

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->diplomacy:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$47;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_7e
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_7f
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitmentTime:[F

    if-eqz v0, :cond_82

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "RecruitmentTime"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_57
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitmentTime:[F

    array-length v3, v3

    if-ge v2, v3, :cond_81

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$48;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "RecruitmentTime"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitmentTime:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_80

    move-object/from16 v13, v32

    goto :goto_58

    :cond_80
    move-object v13, v5

    :goto_58
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitmentTime:[F

    aget v12, v12, v2

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$48;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    :cond_81
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_82
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyCost:[F

    if-eqz v0, :cond_85

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ArmyRecruitmentCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_59
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyCost:[F

    array-length v3, v3

    if-ge v2, v3, :cond_84

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$49;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ArmyRecruitmentCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyCost:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_83

    move-object/from16 v13, v32

    goto :goto_5a

    :cond_83
    move-object v13, v5

    :goto_5a
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyCost:[F

    aget v12, v12, v2

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$49;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    :cond_84
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_85
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyFirstLineCost:[F

    if-eqz v0, :cond_88

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "FirstLineArmyRecruitmentCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_5b
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyFirstLineCost:[F

    array-length v3, v3

    if-ge v2, v3, :cond_87

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$50;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "FirstLineArmyRecruitmentCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyFirstLineCost:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_86

    move-object/from16 v13, v32

    goto :goto_5c

    :cond_86
    move-object v13, v5

    :goto_5c
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyFirstLineCost:[F

    aget v12, v12, v2

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$50;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    :cond_87
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_88
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmySecondLineCost:[F

    if-eqz v0, :cond_8b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "SecondLineArmyRecruitmentCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_5d
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmySecondLineCost:[F

    array-length v3, v3

    if-ge v2, v3, :cond_8a

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$51;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "SecondLineArmyRecruitmentCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmySecondLineCost:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_89

    move-object/from16 v13, v32

    goto :goto_5e

    :cond_89
    move-object v13, v5

    :goto_5e
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmySecondLineCost:[F

    aget v12, v12, v2

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$51;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    :cond_8a
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_8b
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMaintenance:[F

    if-eqz v0, :cond_8e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ArmyMaintenance"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_5f
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMaintenance:[F

    array-length v3, v3

    if-ge v2, v3, :cond_8d

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$52;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ArmyMaintenance"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMaintenance:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_8c

    move-object/from16 v13, v32

    goto :goto_60

    :cond_8c
    move-object v13, v5

    :goto_60
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMaintenance:[F

    aget v12, v12, v2

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->armyMaintenance:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$52;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    :cond_8d
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_8e
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->CoreCost:[F

    if-eqz v0, :cond_91

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "CoreConstruction"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_61
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->CoreCost:[F

    array-length v3, v3

    if-ge v2, v3, :cond_90

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$53;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "CoreConstruction"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->CoreCost:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_8f

    move-object/from16 v13, v32

    goto :goto_62

    :cond_8f
    move-object v13, v5

    :goto_62
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->CoreCost:[F

    aget v12, v12, v2

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->core:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$53;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    :cond_90
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_91
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReligionCost:[F

    if-eqz v0, :cond_94

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ReligionConversionCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_63
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReligionCost:[F

    array-length v3, v3

    if-ge v2, v3, :cond_93

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$54;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ReligionConversionCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReligionCost:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_92

    move-object/from16 v13, v32

    goto :goto_64

    :cond_92
    move-object v13, v5

    :goto_64
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReligionCost:[F

    aget v12, v12, v2

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$54;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_63

    :cond_93
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_94
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumOfAlliances:[I

    if-eqz v0, :cond_97

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "MaxNumOfAlliances"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v10, 0x2

    mul-int/2addr v3, v10

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_65
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumOfAlliances:[I

    array-length v3, v3

    if-ge v2, v3, :cond_96

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$55;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v10

    mul-int/2addr v10, v2

    add-int v10, v21, v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    mul-int/2addr v11, v2

    add-int v14, v10, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "MaxNumOfAlliances"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumOfAlliances:[I

    aget v11, v11, v2

    if-lez v11, :cond_95

    move-object/from16 v13, v32

    goto :goto_66

    :cond_95
    move-object v13, v5

    :goto_66
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumOfAlliances:[I

    aget v11, v11, v2

    int-to-float v11, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->alliance:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$55;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    :cond_96
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_97
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorMaxLevel:[I

    if-eqz v0, :cond_9a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "MaximumAdvisorSkillLevel"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v10, 0x2

    mul-int/2addr v3, v10

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_67
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorMaxLevel:[I

    array-length v3, v3

    if-ge v2, v3, :cond_99

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$56;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v10

    mul-int/2addr v10, v2

    add-int v10, v21, v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    mul-int/2addr v11, v2

    add-int v14, v10, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "MaximumAdvisorSkillLevel"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorMaxLevel:[I

    aget v11, v11, v2

    if-lez v11, :cond_98

    move-object/from16 v13, v32

    goto :goto_68

    :cond_98
    move-object v13, v5

    :goto_68
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorMaxLevel:[I

    aget v11, v11, v2

    int-to-float v11, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->skill:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$56;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    :cond_99
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_9a
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorPoolSize:[I

    if-eqz v0, :cond_9d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "AdvisorPool"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v10, 0x2

    mul-int/2addr v3, v10

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_69
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorPoolSize:[I

    array-length v3, v3

    if-ge v2, v3, :cond_9c

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$57;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v10

    mul-int/2addr v10, v2

    add-int v10, v21, v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    mul-int/2addr v11, v2

    add-int v14, v10, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "AdvisorPool"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorPoolSize:[I

    aget v11, v11, v2

    if-lez v11, :cond_9b

    move-object/from16 v13, v32

    goto :goto_6a

    :cond_9b
    move-object v13, v5

    :goto_6a
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorPoolSize:[I

    aget v11, v11, v2

    int-to-float v11, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->council:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$57;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_69

    :cond_9c
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_9d
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumberOfLoans:[I

    if-eqz v0, :cond_a0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "MaximumNumberOfLoans"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v10, 0x2

    mul-int/2addr v3, v10

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_6b
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumberOfLoans:[I

    array-length v3, v3

    if-ge v2, v3, :cond_9f

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$58;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v10

    mul-int/2addr v10, v2

    add-int v10, v21, v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    mul-int/2addr v11, v2

    add-int v14, v10, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "MaximumNumberOfLoans"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumberOfLoans:[I

    aget v11, v11, v2

    if-lez v11, :cond_9e

    move-object/from16 v13, v32

    goto :goto_6c

    :cond_9e
    move-object v13, v5

    :goto_6c
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumberOfLoans:[I

    aget v11, v11, v2

    int-to-float v11, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->loan:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$58;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6b

    :cond_9f
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_a0
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    if-eqz v0, :cond_a3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "MaximumLevelOfTheMilitaryAcademyForGenerals"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v10, 0x2

    mul-int/2addr v3, v10

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_6d
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    array-length v3, v3

    if-ge v2, v3, :cond_a2

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$59;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v10

    mul-int/2addr v10, v2

    add-int v10, v21, v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    mul-int/2addr v11, v2

    add-int v14, v10, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "MaximumLevelOfTheMilitaryAcademyForGenerals"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    aget v11, v11, v2

    if-lez v11, :cond_a1

    move-object/from16 v13, v32

    goto :goto_6e

    :cond_a1
    move-object v13, v5

    :goto_6e
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    aget v11, v11, v2

    int-to-float v11, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->general:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$59;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6d

    :cond_a2
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_a3
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademy:[I

    if-eqz v0, :cond_a6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "MaximumLevelOfTheMilitaryAcademy"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v10, 0x2

    mul-int/2addr v3, v10

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_6f
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademy:[I

    array-length v3, v3

    if-ge v2, v3, :cond_a5

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$60;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v10

    mul-int/2addr v10, v2

    add-int v10, v21, v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    mul-int/2addr v11, v2

    add-int v14, v10, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "MaximumLevelOfTheMilitaryAcademy"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademy:[I

    aget v11, v11, v2

    if-lez v11, :cond_a4

    move-object/from16 v13, v32

    goto :goto_70

    :cond_a4
    move-object v13, v5

    :goto_70
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademy:[I

    aget v11, v11, v2

    int-to-float v11, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$60;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    :cond_a5
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_a6
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheSupremeCourt:[I

    if-eqz v0, :cond_a9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "MaximumLevelOfTheSupremeCourt"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v10, 0x2

    mul-int/2addr v3, v10

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_71
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheSupremeCourt:[I

    array-length v3, v3

    if-ge v2, v3, :cond_a8

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$61;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v10

    mul-int/2addr v10, v2

    add-int v10, v21, v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    mul-int/2addr v11, v2

    add-int v14, v10, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "MaximumLevelOfTheSupremeCourt"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheSupremeCourt:[I

    aget v11, v11, v2

    if-lez v11, :cond_a7

    move-object/from16 v13, v32

    goto :goto_72

    :cond_a7
    move-object v13, v5

    :goto_72
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheSupremeCourt:[I

    aget v11, v11, v2

    int-to-float v11, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->stability:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$61;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    :cond_a8
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_a9
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfCapitalCity:[I

    if-eqz v0, :cond_ac

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "MaximumLevelOfCapitalCity"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v10, 0x2

    mul-int/2addr v3, v10

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_73
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfCapitalCity:[I

    array-length v3, v3

    if-ge v2, v3, :cond_ab

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$62;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v10

    mul-int/2addr v10, v2

    add-int v10, v21, v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    mul-int/2addr v11, v2

    add-int v14, v10, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "MaximumLevelOfCapitalCity"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfCapitalCity:[I

    aget v11, v11, v2

    if-lez v11, :cond_aa

    move-object/from16 v13, v32

    goto :goto_74

    :cond_aa
    move-object v13, v5

    :goto_74
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfCapitalCity:[I

    aget v11, v11, v2

    int-to-float v11, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->capital:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$62;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_73

    :cond_ab
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_ac
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AggressiveExpansion:[F

    if-eqz v0, :cond_af

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "AggressiveExpansion"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_75
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AggressiveExpansion:[F

    array-length v3, v3

    if-ge v2, v3, :cond_ae

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$63;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "AggressiveExpansion"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AggressiveExpansion:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_ad

    move-object/from16 v13, v32

    goto :goto_76

    :cond_ad
    move-object v13, v5

    :goto_76
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AggressiveExpansion:[F

    aget v12, v12, v2

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->war:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$63;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    :cond_ae
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_af
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiseaseDeathRate:[F

    if-eqz v0, :cond_b2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "DiseasesDeathRate"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_77
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiseaseDeathRate:[F

    array-length v3, v3

    if-ge v2, v3, :cond_b1

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$64;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "DiseasesDeathRate"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiseaseDeathRate:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_b0

    move-object/from16 v13, v32

    goto :goto_78

    :cond_b0
    move-object v13, v5

    :goto_78
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiseaseDeathRate:[F

    aget v12, v12, v2

    mul-float v12, v12, v22

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->disease:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$64;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    :cond_b1
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_b2
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoveryFromADisbandedArmy:[F

    if-eqz v0, :cond_b5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ManpowerRecoveryFromADisbandedArmy"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_79
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoveryFromADisbandedArmy:[F

    array-length v3, v3

    if-ge v2, v3, :cond_b4

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$65;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ManpowerRecoveryFromADisbandedArmy"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoveryFromADisbandedArmy:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_b3

    move-object/from16 v13, v32

    goto :goto_7a

    :cond_b3
    move-object v13, v5

    :goto_7a
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoveryFromADisbandedArmy:[F

    aget v12, v12, v2

    mul-float v12, v12, v22

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_DISBAND:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$65;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    :cond_b4
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_b5
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorCost:[F

    if-eqz v0, :cond_b8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "AdvisorCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_7b
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorCost:[F

    array-length v3, v3

    if-ge v2, v3, :cond_b7

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$66;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "AdvisorCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorCost:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_b6

    move-object/from16 v13, v32

    goto :goto_7c

    :cond_b6
    move-object v13, v5

    :goto_7c
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorCost:[F

    aget v12, v12, v2

    mul-float v12, v12, v22

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->council:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$66;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7b

    :cond_b7
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_b8
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralCost:[F

    if-eqz v0, :cond_bb

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "GeneralCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_7d
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralCost:[F

    array-length v3, v3

    if-ge v2, v3, :cond_ba

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$67;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "GeneralCost"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralCost:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_b9

    move-object/from16 v13, v32

    goto :goto_7e

    :cond_b9
    move-object v13, v5

    :goto_7e
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralCost:[F

    aget v12, v12, v2

    mul-float v12, v12, v22

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->general:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$67;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    :cond_ba
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_bb
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Discipline:[F

    if-eqz v0, :cond_be

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Discipline"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_7f
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Discipline:[F

    array-length v3, v3

    if-ge v2, v3, :cond_bd

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$68;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Discipline"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Discipline:[F

    aget v12, v12, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_bc

    move-object/from16 v13, v32

    goto :goto_80

    :cond_bc
    move-object v13, v5

    :goto_80
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Discipline:[F

    aget v12, v12, v2

    mul-float v12, v12, v22

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->discipline:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$68;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7f

    :cond_bd
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_be
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold:[F

    const-string v2, "MaximumAmountOfGold"

    if-eqz v0, :cond_c1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v11, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v10, v11

    sub-int v17, v4, v10

    move-object v12, v3

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :goto_81
    sget-object v10, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold:[F

    array-length v10, v10

    if-ge v3, v10, :cond_c0

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$69;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v3

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v3

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v11, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold:[F

    aget v12, v12, v3

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-lez v12, :cond_bf

    move-object/from16 v13, v32

    goto :goto_82

    :cond_bf
    move-object v13, v5

    :goto_82
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold:[F

    aget v12, v12, v3

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    move-object v12, v10

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v3

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$69;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_81

    :cond_c0
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_c1
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold_Percentage:[F

    if-eqz v0, :cond_c4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v11}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    invoke-virtual {v11, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v12, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    sub-int v17, v4, v11

    move-object v12, v3

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    :goto_83
    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold_Percentage:[F

    array-length v11, v11

    if-ge v3, v11, :cond_c3

    new-instance v11, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$70;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v12

    mul-int/2addr v12, v3

    add-int v12, v21, v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/2addr v13, v14

    mul-int/2addr v13, v3

    add-int v14, v12, v13

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v12

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v12, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold_Percentage:[F

    aget v13, v13, v3

    const/16 v16, 0x0

    cmpl-float v13, v13, v16

    if-lez v13, :cond_c2

    move-object/from16 v13, v32

    goto :goto_84

    :cond_c2
    move-object v13, v5

    :goto_84
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold_Percentage:[F

    aget v13, v13, v3

    mul-float v13, v13, v22

    move-object/from16 v33, v2

    const/16 v2, 0xa

    invoke-static {v13, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    move-object v12, v11

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v3

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$70;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v33

    goto :goto_83

    :cond_c3
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_c4
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Loot:[F

    if-eqz v0, :cond_c7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Loot"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_85
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Loot:[F

    array-length v3, v3

    if-ge v2, v3, :cond_c6

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$71;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Loot"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Loot:[F

    aget v12, v12, v2

    const/16 v31, 0x0

    cmpl-float v12, v12, v31

    if-lez v12, :cond_c5

    move-object/from16 v13, v32

    goto :goto_86

    :cond_c5
    move-object v13, v5

    :goto_86
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Loot:[F

    aget v12, v12, v2

    mul-float v12, v12, v22

    const/16 v13, 0xa

    invoke-static {v12, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->loot:I

    move-object v12, v3

    move v11, v13

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$71;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    :cond_c6
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_c7
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BattleWidth:[I

    if-eqz v0, :cond_ca

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "BattleWidth"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v10, 0x2

    mul-int/2addr v3, v10

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_87
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BattleWidth:[I

    array-length v3, v3

    if-ge v2, v3, :cond_c9

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$72;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v10

    mul-int/2addr v10, v2

    add-int v10, v21, v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    mul-int/2addr v11, v2

    add-int v14, v10, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "BattleWidth"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BattleWidth:[I

    aget v11, v11, v2

    if-lez v11, :cond_c8

    move-object/from16 v13, v32

    goto :goto_88

    :cond_c8
    move-object v13, v5

    :goto_88
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BattleWidth:[I

    aget v11, v11, v2

    int-to-float v11, v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$72;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    :cond_c9
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_ca
    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RegimentsLimit:[I

    if-eqz v0, :cond_cd

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "RegimentsLimit"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v10, 0x2

    mul-int/2addr v3, v10

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_89
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RegimentsLimit:[I

    array-length v3, v3

    if-ge v2, v3, :cond_cc

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$73;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v10

    mul-int/2addr v10, v2

    add-int v10, v21, v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    mul-int/2addr v11, v2

    add-int v14, v10, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v10

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "RegimentsLimit"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RegimentsLimit:[I

    aget v11, v11, v2

    if-lez v11, :cond_cb

    move-object/from16 v13, v32

    goto :goto_8a

    :cond_cb
    move-object v13, v5

    :goto_8a
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RegimentsLimit:[I

    aget v11, v11, v2

    int-to-float v11, v11

    const/4 v13, 0x1

    invoke-static {v11, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->regimentsLimit:I

    move-object v12, v3

    move v10, v13

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$73;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_89

    :cond_cc
    const/4 v10, 0x1

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    invoke-direct {v2, v3, v7, v5, v11}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8d

    :cond_cd
    const/4 v10, 0x1

    sget-object v0, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AllCharactersLifeExpectancy:[I

    if-eqz v0, :cond_d0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantageMaxLvl(I)Z

    move-result v13

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "AllCharactersLifeExpectancy"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/16 v16, 0x0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    const/4 v11, 0x2

    mul-int/2addr v3, v11

    sub-int v17, v4, v3

    move-object v12, v2

    move/from16 v18, v7

    invoke-direct/range {v12 .. v18}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage_Title;-><init>(ZLjava/lang/String;IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_8b
    sget-object v3, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AllCharactersLifeExpectancy:[I

    array-length v3, v3

    if-ge v2, v3, :cond_cf

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$74;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonWidth()I

    move-result v11

    mul-int/2addr v11, v2

    add-int v11, v21, v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v13, 0x2

    mul-int/2addr v12, v13

    mul-int/2addr v12, v2

    add-int v14, v11, v12

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v15, v7, v11

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "AllCharactersLifeExpectancy"

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AllCharactersLifeExpectancy:[I

    aget v12, v12, v2

    if-lez v12, :cond_ce

    move-object/from16 v13, v32

    goto :goto_8c

    :cond_ce
    move-object v13, v5

    :goto_8c
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AllCharactersLifeExpectancy:[I

    aget v13, v13, v2

    const/4 v10, 0x0

    sget-object v10, Laoc/kingdoms/lukasz/map/allianceHRE/JgPF/HTGgowNjn;->oOqnvoFciIFizBL:Ljava/lang/String;

    invoke-virtual {v12, v10, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    sget v20, Laoc/kingdoms/lukasz/textures/Images;->council:I

    move-object v12, v3

    move-object/from16 v13, p0

    move/from16 v16, v9

    move/from16 v17, v2

    invoke-direct/range {v12 .. v20}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$74;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    const/4 v10, 0x1

    goto :goto_8b

    :cond_cf
    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v3, v4, v3

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    invoke-direct {v2, v3, v7, v5, v10}, Laoc/kingdoms/lukasz/menu_element/Empty_AdvantageBG;-><init>(IIII)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d0
    :goto_8d
    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v24

    move-object/from16 v2, v27

    move/from16 v5, v28

    move/from16 v0, v29

    move/from16 v11, v30

    const/4 v10, 0x1

    goto/16 :goto_8

    :cond_d1
    move/from16 v29, v0

    move-object/from16 v27, v2

    move/from16 v24, v3

    move/from16 v28, v5

    move/from16 v30, v11

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d6

    move/from16 v0, v29

    :goto_8e
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d5

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    const/4 v9, 0x0

    const/4 v13, 0x1

    :goto_8f
    if-ge v13, v2, :cond_d3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d2

    move v9, v13

    :cond_d2
    add-int/lit8 v13, v13, 0x1

    goto :goto_8f

    :cond_d3
    const/4 v5, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v5

    :goto_90
    if-ge v3, v2, :cond_d4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v11

    add-int/2addr v11, v0

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setPosY(I)V

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_90

    :cond_d4
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    add-int/2addr v2, v7

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage2;->getButtonHeight()I

    move-result v10

    add-int/2addr v2, v10

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_8e

    :cond_d5
    const/4 v15, 0x0

    goto :goto_91

    :cond_d6
    const/4 v5, 0x0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "None"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v10, -0x1

    mul-int/lit8 v11, v30, 0x2

    sub-int v13, v4, v11

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v7, v0

    move v15, v5

    const/4 v1, 0x1

    move/from16 v11, v30

    move/from16 v12, v29

    invoke-direct/range {v7 .. v14}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v0, v29, v0

    :goto_91
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v1, v1, v28

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {v1, v15, v15, v4, v0}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$75;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v2, v26

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "AdvantagePoints"

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v2, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    move-object v7, v1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages$75;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;Ljava/lang/String;Ljava/lang/String;ZZI)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v24

    move/from16 v3, v28

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    iput-boolean v15, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->drawScrollPositionAlways:Z

    return-void
.end method

.method public static final getAdvantagesSmall(I)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/MenuElement;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iAdvantagesSize:I

    if-ge v2, v3, :cond_83

    const/4 v3, 0x0

    :goto_1
    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->lvl:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_82

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v6, v6, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionCost:[F

    const/high16 v6, 0x42c80000    # 100.0f

    const-string v7, "%"

    const/16 v8, 0xa

    const-string v9, ""

    if-eqz v4, :cond_0

    new-instance v12, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "ConstructionCost"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionCost:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    move-object v4, v12

    move v6, v10

    move v7, v11

    move v8, v3

    move-object v9, v13

    move-object v10, v14

    move v11, v15

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_0
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdministrationBuildingsCost:[F

    if-eqz v4, :cond_1

    new-instance v12, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "AdministrationBuildingsCost"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdministrationBuildingsCost:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    move-object v4, v12

    move v6, v10

    move v7, v11

    move v8, v3

    move-object v9, v13

    move-object v10, v14

    move v11, v15

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_1
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MilitaryBuildingsCost:[F

    if-eqz v4, :cond_2

    new-instance v12, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "MilitaryBuildingsCost"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MilitaryBuildingsCost:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    move-object v4, v12

    move v6, v10

    move v7, v11

    move v8, v3

    move-object v9, v13

    move-object v10, v14

    move v11, v15

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_2
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->EconomyBuildingsCost:[F

    if-eqz v4, :cond_3

    new-instance v12, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "EconomyBuildingsCost"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->EconomyBuildingsCost:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->construction:I

    move-object v4, v12

    move v6, v10

    move v7, v11

    move v8, v3

    move-object v9, v13

    move-object v10, v14

    move v11, v15

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_3
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionTime:[F

    if-eqz v4, :cond_4

    new-instance v12, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "ConstructionTime"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ConstructionTime:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    move-object v4, v12

    move v6, v10

    move v7, v11

    move v8, v3

    move-object v9, v13

    move-object v10, v14

    move v11, v15

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_4
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WonderConstructionCost:[F

    if-eqz v4, :cond_5

    new-instance v12, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v10, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "WonderConstructionCost"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WonderConstructionCost:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->mapModesWonders:I

    move-object v4, v12

    move v6, v10

    move v7, v11

    move v8, v3

    move-object v9, v13

    move-object v10, v14

    move v11, v15

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_5
    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->TaxEfficiency:[F

    const/4 v10, 0x0

    const-string v11, "+"

    if-eqz v4, :cond_7

    new-instance v12, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "TaxEfficiency"

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->TaxEfficiency:[F

    aget v1, v1, v3

    cmpl-float v1, v1, v10

    if-lez v1, :cond_6

    move-object v9, v11

    :cond_6
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v9, v9, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->TaxEfficiency:[F

    aget v4, v4, v3

    invoke-static {v4, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->tax:I

    move-object v4, v12

    move v7, v13

    move v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_7
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProvinceMaintenance:[F

    if-eqz v1, :cond_9

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "ProvinceMaintenance"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProvinceMaintenance:[F

    aget v14, v14, v3

    cmpl-float v10, v14, v10

    if-lez v10, :cond_8

    move-object v9, v11

    :cond_8
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProvinceMaintenance:[F

    aget v9, v9, v3

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->provinces:I

    move-object v4, v1

    move v7, v12

    move v8, v3

    move-object v9, v13

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_9
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingsMaintenanceCost:[F

    if-eqz v1, :cond_b

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "BuildingsMaintenanceCost"

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingsMaintenanceCost:[F

    aget v12, v12, v3

    cmpl-float v10, v12, v10

    if-lez v10, :cond_a

    move-object v9, v11

    :cond_a
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingsMaintenanceCost:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->buildings:I

    move-object v4, v1

    const/4 v6, 0x0

    move v7, v13

    move v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_b
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoverySpeed:[F

    if-eqz v1, :cond_d

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "ManpowerRecoverySpeed"

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoverySpeed:[F

    aget v12, v12, v3

    cmpl-float v10, v12, v10

    if-lez v10, :cond_c

    move-object v9, v11

    :cond_c
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoverySpeed:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    move-object v4, v1

    const/4 v6, 0x0

    move v7, v13

    move v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_d
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMoraleRecovery:[F

    if-eqz v1, :cond_f

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "ArmyMoraleRecovery"

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMoraleRecovery:[F

    aget v12, v12, v3

    cmpl-float v10, v12, v10

    if-lez v10, :cond_e

    move-object v9, v11

    :cond_e
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMoraleRecovery:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->morale:I

    move-object v4, v1

    const/4 v6, 0x0

    move v7, v13

    move v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_f
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WarScoreCost:[F

    if-eqz v1, :cond_11

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "WarScoreCost"

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WarScoreCost:[F

    aget v12, v12, v3

    cmpl-float v10, v12, v10

    if-lez v10, :cond_10

    move-object v9, v11

    :cond_10
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->WarScoreCost:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->victoryPoints:I

    move-object v4, v1

    const/4 v6, 0x0

    move v7, v13

    move v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_11
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReinforcementSpeed:[F

    if-eqz v1, :cond_13

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "ReinforcementSpeed"

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReinforcementSpeed:[F

    aget v12, v12, v3

    cmpl-float v10, v12, v10

    if-lez v10, :cond_12

    move-object v9, v11

    :cond_12
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReinforcementSpeed:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    move-object v4, v1

    const/4 v6, 0x0

    move v7, v13

    move v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_13
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxManpower:[I

    if-eqz v1, :cond_15

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "MaximumManpower"

    invoke-virtual {v4, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxManpower:[I

    aget v8, v8, v3

    if-lez v8, :cond_14

    goto :goto_2

    :cond_14
    move-object v11, v9

    :goto_2
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxManpower:[I

    aget v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    move-object v4, v1

    move v8, v3

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_15
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Research:[F

    if-eqz v1, :cond_17

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "Research"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Research:[F

    aget v14, v14, v3

    cmpl-float v10, v14, v10

    if-lez v10, :cond_16

    move-object v9, v11

    :cond_16
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Research:[F

    aget v9, v9, v3

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    move-object v4, v1

    move v7, v12

    move v8, v3

    move-object v9, v13

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_17
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ResearchPoints:[F

    const/16 v4, 0x64

    if-eqz v1, :cond_19

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "ResearchPerMonth"

    invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ResearchPoints:[F

    aget v13, v13, v3

    cmpl-float v10, v13, v10

    if-lez v10, :cond_18

    move-object v9, v11

    :cond_18
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ResearchPoints:[F

    aget v9, v9, v3

    invoke-static {v9, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    move-object v4, v1

    move v8, v3

    move-object v9, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_19
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingSlot:[I

    if-eqz v1, :cond_1b

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v10, 0x0

    sget-object v10, Lcom/google/android/gms/internal/common/oss/ClXgFvsSKQc;->vuOEUEiPiSbkdv:Ljava/lang/String;

    invoke-virtual {v4, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingSlot:[I

    aget v12, v12, v3

    if-lez v12, :cond_1a

    move-object v9, v11

    :cond_1a
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BuildingSlot:[I

    aget v9, v9, v3

    int-to-float v9, v9

    invoke-static {v9, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->build:I

    move-object v4, v1

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v3

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_1b
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxInfrastructure:[I

    if-eqz v1, :cond_1d

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "MaximumInfrastructureLevel"

    invoke-virtual {v4, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxInfrastructure:[I

    aget v12, v12, v3

    if-lez v12, :cond_1c

    move-object v9, v11

    :cond_1c
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxInfrastructure:[I

    aget v9, v9, v3

    int-to-float v9, v9

    invoke-static {v9, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->infrastructure:I

    move-object v4, v1

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v3

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_1d
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Devastation:[F

    if-eqz v1, :cond_1f

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v14, 0x0

    sget-object v14, Lcom/badlogic/gdx/utils/compression/spWT/QefTqRjwAJmEDy;->JUGowqiyA:Ljava/lang/String;

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Devastation:[F

    aget v12, v12, v3

    cmpl-float v10, v12, v10

    if-lez v10, :cond_1e

    move-object v9, v11

    :cond_1e
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Devastation:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->devastation:I

    move-object v4, v1

    const/4 v6, 0x0

    move v7, v13

    move v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_1f
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GrowthRate:[F

    if-eqz v1, :cond_21

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "GrowthRate"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GrowthRate:[F

    aget v14, v14, v3

    cmpl-float v10, v14, v10

    if-lez v10, :cond_20

    move-object v9, v11

    :cond_20
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GrowthRate:[F

    aget v9, v9, v3

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->populationGrowth:I

    move-object v4, v1

    move v7, v12

    move v8, v3

    move-object v9, v13

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_21
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyIncome:[F

    if-eqz v1, :cond_23

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "MonthlyIncome"

    invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyIncome:[F

    aget v13, v13, v3

    cmpl-float v10, v13, v10

    if-lez v10, :cond_22

    move-object v9, v11

    :cond_22
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyIncome:[F

    aget v9, v9, v3

    invoke-static {v9, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->goldPositive:I

    move-object v4, v1

    move v8, v3

    move-object v9, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_23
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Gold:[F

    if-eqz v1, :cond_25

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "Gold"

    invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Gold:[F

    aget v13, v13, v3

    cmpl-float v10, v13, v10

    if-lez v10, :cond_24

    move-object v9, v11

    :cond_24
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Gold:[F

    aget v9, v9, v3

    invoke-static {v9, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    move-object v4, v1

    move v8, v3

    move-object v9, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_25
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyLegacy:[F

    if-eqz v1, :cond_27

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v12, "MonthlyLegacy"

    invoke-virtual {v8, v12}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyLegacy:[F

    aget v13, v13, v3

    cmpl-float v10, v13, v10

    if-lez v10, :cond_26

    move-object v9, v11

    :cond_26
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MonthlyLegacy:[F

    aget v9, v9, v3

    invoke-static {v9, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    move-object v4, v1

    move v8, v3

    move-object v9, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_27
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeProduction:[F

    if-eqz v1, :cond_29

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "IncomeProduction"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeProduction:[F

    aget v14, v14, v3

    cmpl-float v10, v14, v10

    if-lez v10, :cond_28

    move-object v9, v11

    :cond_28
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeProduction:[F

    aget v9, v9, v3

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    move-object v4, v1

    move v7, v12

    move v8, v3

    move-object v9, v13

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_29
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProductionEfficiency:[F

    if-eqz v1, :cond_2b

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "ProductionEfficiency"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProductionEfficiency:[F

    aget v14, v14, v3

    cmpl-float v10, v14, v10

    if-lez v10, :cond_2a

    move-object v9, v11

    :cond_2a
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ProductionEfficiency:[F

    aget v9, v9, v3

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->goods:I

    move-object v4, v1

    move v7, v12

    move v8, v3

    move-object v9, v13

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_2b
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->InvestInEconomyCost:[F

    if-eqz v1, :cond_2d

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "InvestInEconomyCost"

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->InvestInEconomyCost:[F

    aget v12, v12, v3

    cmpl-float v10, v12, v10

    if-lez v10, :cond_2c

    move-object v9, v11

    :cond_2c
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->InvestInEconomyCost:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY_UP:I

    move-object v4, v1

    const/4 v6, 0x0

    move v7, v13

    move v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_2d
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseManpowerCost:[F

    if-eqz v1, :cond_2f

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "IncreaseManpowerCost"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseManpowerCost:[F

    aget v14, v14, v3

    cmpl-float v10, v14, v10

    if-lez v10, :cond_2e

    move-object v9, v11

    :cond_2e
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseManpowerCost:[F

    aget v9, v9, v3

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    move-object v4, v1

    move v7, v12

    move v8, v3

    move-object v9, v13

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_2f
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseTaxEfficiencyCost:[F

    if-eqz v1, :cond_31

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "IncreaseTaxEfficiencyCost"

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseTaxEfficiencyCost:[F

    aget v12, v12, v3

    cmpl-float v10, v12, v10

    if-lez v10, :cond_30

    move-object v9, v11

    :cond_30
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseTaxEfficiencyCost:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->taxUp:I

    move-object v4, v1

    const/4 v6, 0x0

    move v7, v13

    move v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_31
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseGrowthRateCost:[F

    if-eqz v1, :cond_33

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "IncreaseGrowthRateCost"

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseGrowthRateCost:[F

    aget v12, v12, v3

    cmpl-float v10, v12, v10

    if-lez v10, :cond_32

    move-object v9, v11

    :cond_32
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncreaseGrowthRateCost:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->populationUp:I

    move-object v4, v1

    const/4 v6, 0x0

    move v7, v13

    move v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_33
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DevelopInfrastructureCost:[F

    if-eqz v1, :cond_35

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "DevelopInfrastructureCost"

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DevelopInfrastructureCost:[F

    aget v12, v12, v3

    cmpl-float v10, v12, v10

    if-lez v10, :cond_34

    move-object v9, v11

    :cond_34
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DevelopInfrastructureCost:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->infrastructure:I

    move-object v4, v1

    const/4 v6, 0x0

    move v7, v13

    move v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_35
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralAttack:[I

    if-eqz v1, :cond_37

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "GeneralsAttack"

    invoke-virtual {v4, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralAttack:[I

    aget v12, v12, v3

    if-lez v12, :cond_36

    move-object v9, v11

    :cond_36
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralAttack:[I

    aget v9, v9, v3

    int-to-float v9, v9

    invoke-static {v9, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    move-object v4, v1

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v3

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_37
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralDefense:[I

    if-eqz v1, :cond_39

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "GeneralsDefense"

    invoke-virtual {v4, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralDefense:[I

    aget v12, v12, v3

    if-lez v12, :cond_38

    move-object v9, v11

    :cond_38
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralDefense:[I

    aget v9, v9, v3

    int-to-float v9, v9

    invoke-static {v9, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    move-object v4, v1

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v3

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_39
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsAttack:[I

    if-eqz v1, :cond_3b

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "UnitsAttack"

    invoke-virtual {v4, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsAttack:[I

    aget v12, v12, v3

    if-lez v12, :cond_3a

    move-object v9, v11

    :cond_3a
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsAttack:[I

    aget v9, v9, v3

    int-to-float v9, v9

    invoke-static {v9, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->attack:I

    move-object v4, v1

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v3

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_3b
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsDefense:[I

    if-eqz v1, :cond_3d

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "UnitsDefense"

    invoke-virtual {v4, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsDefense:[I

    aget v12, v12, v3

    if-lez v12, :cond_3c

    move-object v9, v11

    :cond_3c
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->UnitsDefense:[I

    aget v9, v9, v3

    int-to-float v9, v9

    invoke-static {v9, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->defense:I

    move-object v4, v1

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v3

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_3d
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxMorale:[F

    if-eqz v1, :cond_3f

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "MaxMorale"

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxMorale:[F

    aget v12, v12, v3

    cmpl-float v10, v12, v10

    if-lez v10, :cond_3e

    move-object v9, v11

    :cond_3e
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxMorale:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->morale:I

    move-object v4, v1

    const/4 v6, 0x0

    move v7, v13

    move v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_3f
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMovementSpeed:[F

    if-eqz v1, :cond_41

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v13, 0x0

    sget-object v13, Laoc/kingdoms/lukasz/menusInGame/DrawOver/SQ/XjthpFh;->aTqBBEUtfRtmHBU:Ljava/lang/String;

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMovementSpeed:[F

    aget v14, v14, v3

    cmpl-float v10, v14, v10

    if-lez v10, :cond_40

    move-object v9, v11

    :cond_40
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMovementSpeed:[F

    aget v9, v9, v3

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->movementSpeed:I

    move-object v4, v1

    move v7, v12

    move v8, v3

    move-object v9, v13

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_41
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->SiegeEffectiveness:[F

    if-eqz v1, :cond_43

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "SiegeEffectiveness"

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->SiegeEffectiveness:[F

    aget v12, v12, v3

    cmpl-float v10, v12, v10

    if-lez v10, :cond_42

    move-object v9, v11

    :cond_42
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->SiegeEffectiveness:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->siege:I

    move-object v4, v1

    const/4 v6, 0x0

    move v7, v13

    move v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_43
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImproveRelationsModifier:[F

    if-eqz v1, :cond_45

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "ImproveRelationsModifier"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImproveRelationsModifier:[F

    aget v14, v14, v3

    cmpl-float v10, v14, v10

    if-lez v10, :cond_44

    move-object v9, v11

    :cond_44
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ImproveRelationsModifier:[F

    aget v9, v9, v3

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->relations:I

    move-object v4, v1

    move v7, v12

    move v8, v3

    move-object v9, v13

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_45
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeFromVassals:[F

    if-eqz v1, :cond_47

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "IncomeFromVassals"

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeFromVassals:[F

    aget v12, v12, v3

    cmpl-float v10, v12, v10

    if-lez v10, :cond_46

    move-object v9, v11

    :cond_46
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->IncomeFromVassals:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->vassal:I

    move-object v4, v1

    const/4 v6, 0x0

    move v7, v13

    move v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_47
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->LoanInterest:[F

    if-eqz v1, :cond_49

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "LoanInterest"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->LoanInterest:[F

    aget v14, v14, v3

    cmpl-float v10, v14, v10

    if-lez v10, :cond_48

    move-object v9, v11

    :cond_48
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->LoanInterest:[F

    aget v9, v9, v3

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->loan:I

    move-object v4, v1

    move v7, v12

    move v8, v3

    move-object v9, v13

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_49
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiplomacyPoints:[F

    if-eqz v1, :cond_4b

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "DiplomacyPoints"

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiplomacyPoints:[F

    aget v12, v12, v3

    cmpl-float v10, v12, v10

    if-lez v10, :cond_4a

    move-object v9, v11

    :cond_4a
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiplomacyPoints:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->diplomacy:I

    move-object v4, v1

    const/4 v6, 0x0

    move v7, v13

    move v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_4b
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitmentTime:[F

    if-eqz v1, :cond_4d

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "RecruitmentTime"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitmentTime:[F

    aget v14, v14, v3

    cmpl-float v10, v14, v10

    if-lez v10, :cond_4c

    move-object v9, v11

    :cond_4c
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitmentTime:[F

    aget v9, v9, v3

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_TIME:I

    move-object v4, v1

    move v7, v12

    move v8, v3

    move-object v9, v13

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_4d
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyCost:[F

    if-eqz v1, :cond_4f

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "ArmyRecruitmentCost"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyCost:[F

    aget v14, v14, v3

    cmpl-float v10, v14, v10

    if-lez v10, :cond_4e

    move-object v9, v11

    :cond_4e
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyCost:[F

    aget v9, v9, v3

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    move-object v4, v1

    move v7, v12

    move v8, v3

    move-object v9, v13

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_4f
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyFirstLineCost:[F

    if-eqz v1, :cond_51

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v13, 0x0

    sget-object v13, Landroidx/lifecycle/livedata/core/jzw/jkEBdieJhbh;->VBdTructuZs:Ljava/lang/String;

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyFirstLineCost:[F

    aget v14, v14, v3

    cmpl-float v10, v14, v10

    if-lez v10, :cond_50

    move-object v9, v11

    :cond_50
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmyFirstLineCost:[F

    aget v9, v9, v3

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    move-object v4, v1

    move v7, v12

    move v8, v3

    move-object v9, v13

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_51
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmySecondLineCost:[F

    if-eqz v1, :cond_53

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "SecondLineArmyRecruitmentCost"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmySecondLineCost:[F

    aget v14, v14, v3

    cmpl-float v10, v14, v10

    if-lez v10, :cond_52

    move-object v9, v11

    :cond_52
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RecruitArmySecondLineCost:[F

    aget v9, v9, v3

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    move-object v4, v1

    move v7, v12

    move v8, v3

    move-object v9, v13

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_53
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMaintenance:[F

    if-eqz v1, :cond_55

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "ArmyMaintenance"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMaintenance:[F

    aget v14, v14, v3

    cmpl-float v10, v14, v10

    if-lez v10, :cond_54

    move-object v9, v11

    :cond_54
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ArmyMaintenance:[F

    aget v9, v9, v3

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->armyMaintenance:I

    move-object v4, v1

    move v7, v12

    move v8, v3

    move-object v9, v13

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_55
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->CoreCost:[F

    if-eqz v1, :cond_57

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "CoreConstruction"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->CoreCost:[F

    aget v14, v14, v3

    cmpl-float v10, v14, v10

    if-lez v10, :cond_56

    move-object v9, v11

    :cond_56
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->CoreCost:[F

    aget v9, v9, v3

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->core:I

    move-object v4, v1

    move v7, v12

    move v8, v3

    move-object v9, v13

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_57
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReligionCost:[F

    if-eqz v1, :cond_59

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "ReligionConversionCost"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReligionCost:[F

    aget v14, v14, v3

    cmpl-float v10, v14, v10

    if-lez v10, :cond_58

    move-object v9, v11

    :cond_58
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ReligionCost:[F

    aget v9, v9, v3

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    move-object v4, v1

    move v7, v12

    move v8, v3

    move-object v9, v13

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_59
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumOfAlliances:[I

    if-eqz v1, :cond_5b

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v10, 0x0

    sget-object v10, Laoc/kingdoms/lukasz/map/plague/KMTV/fTNtCctcBZcqKK;->TfRMZZQicYb:Ljava/lang/String;

    invoke-virtual {v4, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumOfAlliances:[I

    aget v12, v12, v3

    if-lez v12, :cond_5a

    move-object v9, v11

    :cond_5a
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumOfAlliances:[I

    aget v9, v9, v3

    int-to-float v9, v9

    invoke-static {v9, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->alliance:I

    move-object v4, v1

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v3

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_5b
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorMaxLevel:[I

    if-eqz v1, :cond_5d

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "MaximumAdvisorSkillLevel"

    invoke-virtual {v4, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorMaxLevel:[I

    aget v12, v12, v3

    if-lez v12, :cond_5c

    move-object v9, v11

    :cond_5c
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorMaxLevel:[I

    aget v9, v9, v3

    int-to-float v9, v9

    invoke-static {v9, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->skill:I

    move-object v4, v1

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v3

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_5d
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorPoolSize:[I

    if-eqz v1, :cond_5f

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "AdvisorPool"

    invoke-virtual {v4, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorPoolSize:[I

    aget v12, v12, v3

    if-lez v12, :cond_5e

    move-object v9, v11

    :cond_5e
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorPoolSize:[I

    aget v9, v9, v3

    int-to-float v9, v9

    invoke-static {v9, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->council:I

    move-object v4, v1

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v3

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_5f
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumberOfLoans:[I

    if-eqz v1, :cond_61

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "MaximumNumberOfLoans"

    invoke-virtual {v4, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumberOfLoans:[I

    aget v12, v12, v3

    if-lez v12, :cond_60

    move-object v9, v11

    :cond_60
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaxNumberOfLoans:[I

    aget v9, v9, v3

    int-to-float v9, v9

    invoke-static {v9, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->loan:I

    move-object v4, v1

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v3

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_61
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    if-eqz v1, :cond_63

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "MaximumLevelOfTheMilitaryAcademyForGenerals"

    invoke-virtual {v4, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    aget v12, v12, v3

    if-lez v12, :cond_62

    move-object v9, v11

    :cond_62
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademyForGenerals:[I

    aget v9, v9, v3

    int-to-float v9, v9

    invoke-static {v9, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->general:I

    move-object v4, v1

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v3

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_63
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademy:[I

    if-eqz v1, :cond_65

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "MaximumLevelOfTheMilitaryAcademy"

    invoke-virtual {v4, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademy:[I

    aget v12, v12, v3

    if-lez v12, :cond_64

    move-object v9, v11

    :cond_64
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheMilitaryAcademy:[I

    aget v9, v9, v3

    int-to-float v9, v9

    invoke-static {v9, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    move-object v4, v1

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v3

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_65
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheSupremeCourt:[I

    if-eqz v1, :cond_67

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "MaximumLevelOfTheSupremeCourt"

    invoke-virtual {v4, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheSupremeCourt:[I

    aget v12, v12, v3

    if-lez v12, :cond_66

    move-object v9, v11

    :cond_66
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfTheSupremeCourt:[I

    aget v9, v9, v3

    int-to-float v9, v9

    invoke-static {v9, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->stability:I

    move-object v4, v1

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v3

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_67
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfCapitalCity:[I

    if-eqz v1, :cond_69

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "MaximumLevelOfCapitalCity"

    invoke-virtual {v4, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfCapitalCity:[I

    aget v12, v12, v3

    if-lez v12, :cond_68

    move-object v9, v11

    :cond_68
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumLevelOfCapitalCity:[I

    aget v9, v9, v3

    int-to-float v9, v9

    invoke-static {v9, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->capital:I

    move-object v4, v1

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v3

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_69
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AggressiveExpansion:[F

    if-eqz v1, :cond_6b

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v13, "AggressiveExpansion"

    invoke-virtual {v4, v13}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v15

    iget-object v15, v15, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v15, v15, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AggressiveExpansion:[F

    aget v14, v14, v3

    cmpl-float v10, v14, v10

    if-lez v10, :cond_6a

    move-object v9, v11

    :cond_6a
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AggressiveExpansion:[F

    aget v9, v9, v3

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->war:I

    move-object v4, v1

    move v7, v12

    move v8, v3

    move-object v9, v13

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_6b
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiseaseDeathRate:[F

    if-eqz v1, :cond_6d

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "DiseasesDeathRate"

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiseaseDeathRate:[F

    aget v12, v12, v3

    cmpl-float v10, v12, v10

    if-lez v10, :cond_6c

    move-object v9, v11

    :cond_6c
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->DiseaseDeathRate:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->disease:I

    move-object v4, v1

    const/4 v6, 0x0

    move v7, v13

    move v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_6d
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoveryFromADisbandedArmy:[F

    if-eqz v1, :cond_6f

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "ManpowerRecoveryFromADisbandedArmy"

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoveryFromADisbandedArmy:[F

    aget v12, v12, v3

    cmpl-float v10, v12, v10

    if-lez v10, :cond_6e

    move-object v9, v11

    :cond_6e
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->ManpowerRecoveryFromADisbandedArmy:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_DISBAND:I

    move-object v4, v1

    const/4 v6, 0x0

    move v7, v13

    move v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_6f
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorCost:[F

    if-eqz v1, :cond_71

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "AdvisorCost"

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorCost:[F

    aget v12, v12, v3

    cmpl-float v10, v12, v10

    if-lez v10, :cond_70

    move-object v9, v11

    :cond_70
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AdvisorCost:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->council:I

    move-object v4, v1

    const/4 v6, 0x0

    move v7, v13

    move v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_71
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralCost:[F

    if-eqz v1, :cond_73

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "GeneralCost"

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralCost:[F

    aget v12, v12, v3

    cmpl-float v10, v12, v10

    if-lez v10, :cond_72

    move-object v9, v11

    :cond_72
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->GeneralCost:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->general:I

    move-object v4, v1

    const/4 v6, 0x0

    move v7, v13

    move v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_73
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Discipline:[F

    if-eqz v1, :cond_75

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "Discipline"

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Discipline:[F

    aget v12, v12, v3

    cmpl-float v10, v12, v10

    if-lez v10, :cond_74

    move-object v9, v11

    :cond_74
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Discipline:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->discipline:I

    move-object v4, v1

    const/4 v6, 0x0

    move v7, v13

    move v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_75
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold:[F

    const-string v4, "MaximumAmountOfGold"

    if-eqz v1, :cond_77

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v12, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v14

    iget-object v14, v14, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v14, v14, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold:[F

    aget v13, v13, v3

    cmpl-float v10, v13, v10

    if-lez v10, :cond_76

    move-object v9, v11

    :cond_76
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold:[F

    aget v9, v9, v3

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    move-object v4, v1

    move v8, v3

    move-object v9, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_77
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold_Percentage:[F

    if-eqz v1, :cond_79

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v14, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v14, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold_Percentage:[F

    aget v12, v12, v3

    cmpl-float v10, v12, v10

    if-lez v10, :cond_78

    move-object v9, v11

    :cond_78
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->MaximumAmountOfGold_Percentage:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    move-object v4, v1

    const/4 v6, 0x0

    move v7, v13

    move v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_79
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Loot:[F

    if-eqz v1, :cond_7b

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "Loot"

    invoke-virtual {v4, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Loot:[F

    aget v12, v12, v3

    cmpl-float v10, v12, v10

    if-lez v10, :cond_7a

    move-object v9, v11

    :cond_7a
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v10, v10, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->Loot:[F

    aget v9, v9, v3

    mul-float/2addr v9, v6

    invoke-static {v9, v8}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->loot:I

    move-object v4, v1

    const/4 v6, 0x0

    move v7, v13

    move v8, v3

    move-object v9, v14

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_7b
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BattleWidth:[I

    if-eqz v1, :cond_7d

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "BattleWidth"

    invoke-virtual {v4, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BattleWidth:[I

    aget v12, v12, v3

    if-lez v12, :cond_7c

    move-object v9, v11

    :cond_7c
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->BattleWidth:[I

    aget v9, v9, v3

    int-to-float v9, v9

    invoke-static {v9, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->battleWidth:I

    move-object v4, v1

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v3

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_7d
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RegimentsLimit:[I

    if-eqz v1, :cond_7f

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v8, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "RegimentsLimit"

    invoke-virtual {v4, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v13

    iget-object v13, v13, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v13, v13, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RegimentsLimit:[I

    aget v12, v12, v3

    if-lez v12, :cond_7e

    move-object v9, v11

    :cond_7e
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->RegimentsLimit:[I

    aget v9, v9, v3

    int-to-float v9, v9

    invoke-static {v9, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->regimentsLimit:I

    move-object v4, v1

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v3

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_7f
    sget-object v1, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AllCharactersLifeExpectancy:[I

    if-eqz v1, :cond_81

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v7, v4, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "AllCharactersLifeExpectancy"

    invoke-virtual {v4, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v12

    iget-object v12, v12, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v12, v12, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AllCharactersLifeExpectancy:[I

    aget v8, v8, v3

    if-lez v8, :cond_80

    move-object v9, v11

    :cond_80
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v9, Laoc/kingdoms/lukasz/map/AdvantagesManager;->advantages:Ljava/util/List;

    invoke-static/range {p0 .. p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/civilization/Civilization;->lAdvantages:Ljava/util/List;

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;

    iget v11, v11, Laoc/kingdoms/lukasz/map/civilization/CivilizationLegacy;->id:I

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/AdvantagesManager$Advantage;->AllCharactersLifeExpectancy:[I

    aget v9, v9, v3

    const-string v11, "YearsX"

    invoke-virtual {v8, v11, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->council:I

    move-object v4, v1

    move v8, v3

    move-object v9, v10

    move-object v10, v11

    move v11, v12

    invoke-direct/range {v4 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Advantage3;-><init>(IIIILjava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_81
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_82
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_83
    return-object v0
.end method


# virtual methods
.method public actionCloseMenu()V
    .locals 0

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->actionOnClose()V

    return-void
.end method

.method public final actionUnlock(IILjava/lang/String;)V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-ne v0, v1, :cond_6

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->haveAdvantage(II)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string p3, "AlreadyUnlocked"

    invoke-virtual {p2, p3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget p3, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    invoke-virtual {p1, p2, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getClickMain()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto/16 :goto_1

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v0

    if-gtz v0, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "AdvantagePoints"

    invoke-virtual {p3, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    invoke-virtual {p1, p2, p3, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastInsufficient(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getClickMain()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto/16 :goto_1

    :cond_1
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->canUnlockAdvantage(II)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    if-lez p2, :cond_7

    sub-int/2addr p2, v1

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->actionUnlock(IILjava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-static {v0, p1, p2}, Laoc/kingdoms/lukasz/map/AdvantagesManager;->unlockAdvantage(III)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    if-nez p2, :cond_3

    sget p2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_ADVANTAGE0:I

    goto :goto_0

    :cond_3
    if-ne p2, v1, :cond_4

    sget p2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_ADVANTAGE1:I

    goto :goto_0

    :cond_4
    sget p2, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_ADVANTAGE2:I

    :goto_0
    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    sget p1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    sput p1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID:I

    const/4 p1, 0x0

    sput p1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->iCivID2:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "CivilizationAdvantage"

    invoke-virtual {p2, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Unlocked"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Info(Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Laoc/kingdoms/lukasz/textures/Images;->infoAdvantage:I

    sput p1, Laoc/kingdoms/lukasz/menusInGame/Info/InGame_Info;->imgID:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget p2, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->iActiveCivID:I

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivilizationAdvantages_SavePos(I)V

    const-wide/16 p1, 0x0

    sput-wide p1, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->lTime:J

    goto :goto_1

    :cond_5
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string p3, "NotAvailable"

    invoke-virtual {p2, p3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget p3, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    invoke-virtual {p1, p2, p3}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getClickMain()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    goto :goto_1

    :cond_6
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getClickMain()I

    move-result p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 14

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->lTime:J

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
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getPosX()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int v1, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getPosX()I

    move-result v0

    add-int v6, v0, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getPosY()I

    move-result v0

    add-int v7, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getHeight()I

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getWidth()I

    move-result v1

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

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getPosY()I

    move-result v0

    add-int v8, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->getHeight()I

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

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->lTime:J

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CivilizationAdvantages;->lTime2:J

    return-void
.end method
