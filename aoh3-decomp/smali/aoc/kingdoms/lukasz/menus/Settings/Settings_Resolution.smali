.class public Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "Settings_Resolution.java"


# direct methods
.method public constructor <init>()V
    .locals 22

    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v12, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v13

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v14, v0, v1

    sget v15, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v15, 0x2

    new-instance v9, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$1;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Back"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    mul-int/lit8 v17, v12, 0x2

    sub-int v7, v0, v17

    const/4 v8, 0x1

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v0, v9

    move-object/from16 v1, p0

    move v5, v12

    move/from16 v6, v16

    move/from16 v19, v14

    move-object v14, v9

    move/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$1;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int v0, v0, v16

    add-int v16, v16, v0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v14, "Resolution"

    invoke-virtual {v1, v14}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v1, 0x4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v6, v13, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v7, v1, v5

    const-string v8, ""

    move-object v1, v0

    move/from16 v5, v16

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v16, v16, v0

    new-instance v9, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$2;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Max"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    sub-int v7, v0, v17

    const/4 v8, 0x1

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v0, v9

    move-object/from16 v1, p0

    move v5, v12

    move/from16 v6, v16

    move-object/from16 v20, v14

    move-object v14, v9

    move/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$2;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v15

    add-int v16, v16, v0

    const/4 v9, 0x0

    :goto_0
    const/16 v0, 0x1a

    if-ge v9, v0, :cond_0

    new-instance v8, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$3;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getResolution(I)Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getResolution(I)Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->LEFT_MENU_WIDTH2:I

    sub-int v7, v0, v17

    const/16 v18, 0x1

    sget v21, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v0, v8

    move-object/from16 v1, p0

    move v5, v12

    move/from16 v6, v16

    move-object v14, v8

    move/from16 v8, v18

    move/from16 v18, v12

    move v12, v9

    move/from16 v9, v21

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution$3;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0, v12}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v15

    add-int v16, v16, v0

    add-int/lit8 v9, v12, 0x1

    move/from16 v12, v18

    goto :goto_0

    :cond_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    mul-int/lit8 v14, v19, 0x2

    sub-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v13, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v3, v20

    invoke-virtual {v0, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-direct {v1, v0, v2, v2, v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;-><init>(Ljava/lang/String;ZZI)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v0, 0xa

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v3, v0, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v4, v13

    move-object v6, v11

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    const/4 v0, 0x0

    iput-boolean v0, v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->drawScrollPositionAlways:Z

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getPosX()I

    move-result v0

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getPosY()I

    move-result v0

    add-int v3, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    const/4 v6, 0x0

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    move-object v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getPosY()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Resolution;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public getResolution(I)Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;
    .locals 13

    const/16 v0, 0x400

    const/16 v1, 0x500

    const/16 v2, 0x300

    const/16 v3, 0x384

    const/16 v4, 0x41a

    const/16 v5, 0x800

    const/16 v6, 0x1400

    const/16 v7, 0x438

    const/16 v8, 0x640

    const/16 v9, 0x870

    const/16 v10, 0x780

    const/16 v11, 0xa00

    const/16 v12, 0x5a0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {p1, v10, v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_0
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v0, 0x320

    const/16 v1, 0x258

    invoke-direct {p1, v0, v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_1
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {p1, v0, v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_2
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v0, 0x3c0

    invoke-direct {p1, v1, v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_3
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {p1, v1, v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_4
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v0, 0x556

    invoke-direct {p1, v0, v2}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_5
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {p1, v12, v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_6
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {p1, v12, v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_7
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {p1, v8, v3}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_8
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v0, 0x4b0

    invoke-direct {p1, v8, v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_9
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v0, 0x690

    invoke-direct {p1, v0, v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_a
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v0, 0x700

    const/16 v1, 0x540

    invoke-direct {p1, v0, v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_b
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v0, 0x740

    const/16 v1, 0x570

    invoke-direct {p1, v0, v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_c
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {p1, v10, v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_d
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {p1, v10, v12}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_e
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v0, 0x600

    invoke-direct {p1, v5, v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_f
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {p1, v11, v7}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_10
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {p1, v11, v12}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_11
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {p1, v11, v8}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_12
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {p1, v11, v10}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_13
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {p1, v11, v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_14
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v0, 0xd70

    invoke-direct {p1, v0, v12}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_15
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v0, 0xf00

    invoke-direct {p1, v0, v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_16
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v0, 0x1000

    invoke-direct {p1, v0, v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_17
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-direct {p1, v6, v9}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_18
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v0, 0xb40

    invoke-direct {p1, v6, v0}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    :pswitch_19
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    const/16 v0, 0x1e00

    const/16 v1, 0x10e0

    invoke-direct {p1, v0, v1}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;-><init>(II)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
