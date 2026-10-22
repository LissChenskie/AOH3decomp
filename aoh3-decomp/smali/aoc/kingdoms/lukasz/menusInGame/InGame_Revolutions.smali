.class public Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Revolutions.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static lTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 36

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

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getOtherMenuPosX_2()I

    move-result v2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->revolutionManager:Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/map/rebels/RevolutionManager;->getRevolutionaryProvinces_Sorted(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    const/4 v15, 0x0

    if-lez v7, :cond_1

    mul-int/lit8 v1, v0, 0x2

    sub-int v1, v4, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v8, v0, v8

    add-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v8, v9

    new-instance v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlueSort;

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Province"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, -0x1

    sget v21, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x6

    add-int v24, v10, v11

    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v22, 0x0

    move-object/from16 v16, v9

    move/from16 v23, v7

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlueSort;-><init>(ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlueSort;

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v11, 0x0

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/AI/Government/nSju/IlLkpaQxs;->HaXzrvfFzHGJ:Ljava/lang/String;

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x6

    add-int v24, v10, v11

    sget v25, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v16, v9

    move/from16 v21, v7

    move/from16 v23, v8

    invoke-direct/range {v16 .. v25}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlueSort;-><init>(ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlueSort;

    const/16 v27, 0x1

    const/16 v28, 0x0

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v11, "Unrest"

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const/16 v30, -0x1

    add-int v31, v7, v8

    sub-int v7, v4, v31

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v33, v7, v8

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x6

    add-int v34, v7, v8

    sget v35, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    const/16 v32, 0x0

    move-object/from16 v26, v9

    invoke-direct/range {v26 .. v35}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_TitleBlueSort;-><init>(ZZLjava/lang/String;IIIIII)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    add-int/2addr v7, v15

    move/from16 v24, v7

    move v14, v15

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v14, v7, :cond_0

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$1;

    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->revolutionRisk:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v16, v7, v8

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int v18, v7, v8

    const/16 v19, 0x1

    move-object v7, v13

    move-object/from16 v8, p0

    move v11, v0

    move/from16 v12, v24

    move/from16 v25, v1

    move-object v1, v13

    move/from16 v13, v16

    move/from16 v26, v2

    move v2, v14

    move/from16 v14, v17

    move/from16 v15, v18

    move/from16 v16, v19

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1, v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$2;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/CFG;->getShortNumber(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sub-int v7, v4, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v9, v7, v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v19, v9, v10

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v23, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v16, v1

    move-object/from16 v17, p0

    move/from16 v20, v24

    invoke-direct/range {v16 .. v23}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;Ljava/lang/String;IIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$3;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getRevulutionaryRisk()F

    move-result v8

    const/16 v10, 0x64

    invoke-static {v8, v10}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v19, v7, v8

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v22, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget v23, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v23}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;Ljava/lang/String;IIIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v1, v7}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

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

    add-int v24, v24, v1

    add-int/lit8 v14, v2, 0x1

    move/from16 v1, v25

    move/from16 v2, v26

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_0
    move/from16 v26, v2

    goto :goto_1

    :cond_1
    move/from16 v26, v2

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$4;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "None"

    invoke-virtual {v5, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v11, -0x1

    mul-int/lit8 v5, v0, 0x2

    sub-int v14, v4, v5

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v7, v2

    move-object/from16 v8, p0

    move v12, v0

    move v13, v1

    invoke-direct/range {v7 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;Ljava/lang/String;IIIIII)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    add-int v24, v1, v0

    :goto_1
    move/from16 v0, v24

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v9, 0x0

    invoke-direct {v1, v9, v9, v4, v0}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$5;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "RevolutionaryMovements"

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    sget v15, Laoc/kingdoms/lukasz/textures/Images;->title500:I

    move-object v10, v1

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v15}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;Ljava/lang/String;ZZI)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v26

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    iput-boolean v9, v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;->drawScrollPositionAlways:Z

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 9

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;->lTime:J

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
    move v8, p2

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;->getPosX()I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;->getPosX()I

    move-result v0

    add-int v1, v0, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;->getPosY()I

    move-result v0

    add-int v2, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;->getHeight()I

    move-result v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v0

    const/4 v5, 0x0

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->insideTop500:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideBot500:I

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;->getPosX()I

    move-result v1

    add-int v2, v1, v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;->getHeight()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object v0, p0

    move v2, v8

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Revolutions;->lTime:J

    return-void
.end method
