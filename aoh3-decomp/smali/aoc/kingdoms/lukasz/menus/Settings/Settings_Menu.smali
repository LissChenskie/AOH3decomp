.class public Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "Settings_Menu.java"


# static fields
.field public static drawArmies_Time:J

.field public static drawCities_Time:J

.field public static drawCivsNames_Time:J

.field public static drawClouds_Time:J

.field public static drawMapBorder_Time:J

.field public static drawMoveUnits_Time:J

.field public static drawProvincesBorder_Time:J

.field public static drawProvincesFBO_Time:J

.field public static drawProvincesNames_Time:J

.field public static drawProvinces_Time:J

.field public static drawShips2_Time:J

.field public static drawShips_Time:J

.field public static goBackToMenu:Laoc/kingdoms/lukasz/menu/View;

.field public static lastUpdateTime:J

.field public static provinceInView_Time:J

.field public static updateTimes:Z


# instance fields
.field public nanoW:I

.field public statTextPercW:I

.field public statTextW:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->MAINMENU:Laoc/kingdoms/lukasz/menu/View;

    sput-object v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->goBackToMenu:Laoc/kingdoms/lukasz/menu/View;

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->provinceInView_Time:J

    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvinces_Time:J

    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesFBO_Time:J

    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawArmies_Time:J

    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesBorder_Time:J

    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesNames_Time:J

    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawCivsNames_Time:J

    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawCities_Time:J

    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawMoveUnits_Time:J

    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawClouds_Time:J

    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawShips_Time:J

    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawShips2_Time:J

    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawMapBorder_Time:J

    const/4 v2, 0x1

    sput-boolean v2, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->updateTimes:Z

    sput-wide v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->lastUpdateTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 21

    move-object/from16 v11, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    const/4 v12, 0x0

    iput v12, v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    iput v12, v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    iput v12, v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->nanoW:I

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v14, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v15

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v10, v0, 0x2

    new-instance v9, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$1;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Back"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    mul-int/lit8 v0, v14, 0x2

    sub-int v16, v15, v0

    const/4 v8, 0x1

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    move-object v0, v9

    move-object/from16 v1, p0

    move v5, v14

    move v6, v10

    move/from16 v7, v16

    move-object v12, v9

    move/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$1;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v10

    add-int/2addr v10, v0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Graphics"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v1, 0x4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v6, v15, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v7, v1, v5

    const-string v8, ""

    move-object v1, v0

    move v5, v10

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v12, v10, v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    const-string v10, ": "

    if-eqz v0, :cond_2

    new-instance v9, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$2;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Fullscreen"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v4, -0x1

    const/4 v8, 0x1

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/16 v18, 0x1

    move-object v0, v9

    move-object/from16 v1, p0

    move v5, v14

    move v6, v12

    move/from16 v7, v16

    move-object/from16 v19, v9

    move/from16 v9, v17

    move-object v11, v10

    move/from16 v10, v18

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$2;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZIZ)V

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Resolution"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->iWidth:I

    if-lez v1, :cond_1

    sget v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->iHeight:I

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->iWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsDesktop;->iHeight:I

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v4, -0x1

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v10

    move-object/from16 v1, p0

    move v5, v14

    move v6, v12

    move/from16 v7, v16

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$3;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    goto :goto_2

    :cond_2
    move-object v11, v10

    :goto_2
    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$4;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "UIScale"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v4, -0x1

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v10

    move-object/from16 v1, p0

    move v5, v14

    move v6, v12

    move/from16 v7, v16

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$4;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Game"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v1, 0x4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v6, v15, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v7, v1, v5

    const-string v8, ""

    move-object v1, v0

    move v5, v12

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$5;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "SelectLanguage"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v10

    move-object/from16 v1, p0

    move v5, v14

    move v6, v12

    move/from16 v7, v16

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$5;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$6;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_Double()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    sub-int v7, v16, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/16 v17, 0x1

    move-object v0, v10

    move-object/from16 v1, p0

    move v6, v12

    move/from16 v18, v15

    move-object v15, v10

    move/from16 v10, v17

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$6;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZIZ)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$7;

    const-string v2, ">>"

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v0, v16, v0

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$7;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$8;

    const-string v2, "<<"

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v10

    move-object/from16 v1, p0

    move v5, v14

    move v6, v12

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$8;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$9;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Autosave"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->AUTO_SAVE_DAYS:I

    if-nez v1, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Off"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->AUTO_SAVE_DAYS:I

    const-string v3, "DaysX"

    invoke-virtual {v1, v3, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v4, -0x1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v7, v16, v0

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v10

    move-object/from16 v1, p0

    move v6, v12

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$9;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$10;

    const-string v2, ">>"

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v0, v16, v0

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$10;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$11;

    const-string v2, "<<"

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    const/4 v4, -0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v10

    move-object/from16 v1, p0

    move v5, v14

    move v6, v12

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$11;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$12;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_InGamePaddingLeft()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v7, v16, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$12;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$13;

    const-string v2, ">>"

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v0, v16, v0

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$13;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    :cond_4
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Audio"

    invoke-virtual {v0, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v2, v0, 0x4

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v5, v18, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int v6, v0, v4

    const-string v7, ""

    move-object v0, v8

    move v4, v12

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$14;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v0, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v10

    move-object/from16 v1, p0

    move v5, v14

    move v6, v12

    move/from16 v7, v16

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$14;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v9, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$15;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Provinces"

    invoke-virtual {v0, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v0, 0x4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v6, v18, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int v7, v0, v1

    const-string v8, ""

    move-object v0, v9

    move-object/from16 v1, p0

    move v5, v12

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$15;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$16;

    const-string v2, "<<"

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    const/4 v4, -0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    move v5, v14

    move v6, v12

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$16;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$17;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v7, v16, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$17;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$18;

    const-string v2, ">>"

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v0, v16, v0

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$18;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$19;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_Double()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    sub-int v7, v16, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    move v5, v14

    move v6, v12

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$19;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$20;

    const-string v2, ">>"

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v0, v16, v0

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$20;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$21;

    const-string v2, "<<"

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    move v5, v14

    move v6, v12

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$21;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$22;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_Names()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v7, v16, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$22;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$23;

    const-string v2, ">>"

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v0, v16, v0

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$23;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$24;

    const-string v2, "<<"

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    move v5, v14

    move v6, v12

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$24;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$25;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_Names()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v7, v16, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$25;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$26;

    const/4 v2, 0x0

    sget-object v2, Lcom/badlogic/gdx/net/otUh/aBEBOpwLZcQFCZ;->tZqSlaPUWdgq:Ljava/lang/String;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v0, v16, v0

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$26;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$27;

    const-string v2, "<<"

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    move v5, v14

    move v6, v12

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$27;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$28;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_CivNames()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v7, v16, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$28;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$29;

    const-string v2, ">>"

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v0, v16, v0

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$29;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$30;

    const-string v2, "<<"

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    move v5, v14

    move v6, v12

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$30;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$31;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_ProvinceFlags()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v7, v16, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$31;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$32;

    const-string v2, ">>"

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v0, v16, v0

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$32;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$33;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_Cities()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    sub-int v7, v16, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    move v5, v14

    move v6, v12

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$33;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$34;

    const-string v2, ">>"

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v0, v16, v0

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$34;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$35;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Ships"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    const/4 v7, 0x0

    const/16 v8, 0x64

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v9, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SHIPS_ON_MAP:I

    move-object v0, v15

    move-object/from16 v1, p0

    move v3, v14

    move v4, v12

    move/from16 v5, v16

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$35;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->loadClouds()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$36;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_Clouds()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v4, -0x1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    sub-int v7, v16, v0

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    move v5, v14

    move v6, v12

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$36;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$37;

    const-string v2, ">>"

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v0, v16, v0

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$37;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    :cond_5
    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$38;

    const-string v2, "<<"

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    const/4 v4, -0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    move v5, v14

    move v6, v12

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$38;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$39;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "DrawArmyScale"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    const/16 v2, 0x64

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v7, v16, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$39;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$40;

    const-string v2, ">>"

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v0, v16, v0

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$40;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->MOBILE_DISABLE_FBO:Z

    if-nez v0, :cond_7

    :cond_6
    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$41;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_FBO()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v4, -0x1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    sub-int v7, v16, v0

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    move v5, v14

    move v6, v12

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$41;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$42;

    const/4 v2, 0x0

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/Bhs/fiRhHJntP;->RVkRRAtLKQfE:Ljava/lang/String;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v0, v16, v0

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$42;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$43;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_FBO_Provinces()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    sub-int v7, v16, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    move v5, v14

    move v6, v12

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$43;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$44;

    const-string v2, ">>"

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v0, v16, v0

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$44;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    :cond_7
    new-instance v8, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "ProvinceBorder"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Extra"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v2, v0, 0x4

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v5, v18, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int v6, v0, v4

    const-string v7, ""

    move-object v0, v8

    move v4, v12

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$45;

    const-string v2, "<<"

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    const/4 v4, -0x1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    move v5, v14

    move v6, v12

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$45;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$46;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_ProvincesBorderExtra()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v7, v16, v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$46;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$47;

    const/4 v2, 0x0

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/Bhs/fiRhHJntP;->AhkxSdnW:Ljava/lang/String;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v0, v16, v0

    add-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v0, v1

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$47;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "Alpha"

    invoke-virtual {v2, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v1, 0x4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v6, v18, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v7, v1, v5

    const-string v8, ""

    move-object v1, v0

    move v5, v12

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$48;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "ProvinceAlpha"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    const/16 v7, 0xa

    const/16 v8, 0xff

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    const/high16 v17, 0x437f0000    # 255.0f

    mul-float v0, v0, v17

    float-to-int v9, v0

    move-object v0, v15

    move-object/from16 v1, p0

    move v3, v14

    move v4, v12

    move/from16 v5, v16

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$48;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$49;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ", "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "OccupiedProvinces"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    const/16 v8, 0x64

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_OCCUPIED_ALPHA_EXTRA:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v5, v0

    move-object v0, v15

    move-object/from16 v1, p0

    move v4, v12

    move/from16 v19, v5

    move/from16 v5, v16

    move/from16 v20, v14

    move-object v14, v9

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$49;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$50;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Wasteland"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    const/16 v8, 0xff

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA_WASTELAND:F

    mul-float v0, v0, v17

    float-to-int v9, v0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v3, v20

    move v4, v12

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$50;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$51;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "ProvinceNames"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_NAMES_ALPHA:F

    mul-float v0, v0, v17

    float-to-int v9, v0

    move-object v0, v15

    move-object/from16 v1, p0

    move v4, v12

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$51;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v15, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$52;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v1, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "CivilizationsNames"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT4:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CIV_NAMES_TEXT_ALPHA:F

    mul-float v0, v0, v17

    float-to-int v9, v0

    move-object v0, v15

    move-object/from16 v1, p0

    move v4, v12

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$52;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIII)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "TexturesQuality"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v1, 0x4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v6, v18, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v7, v1, v5

    const-string v8, ""

    move-object v1, v0

    move v5, v12

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v14, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$53;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_Double()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v4, -0x1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    sub-int v7, v16, v0

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v10, 0x1

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v5, v20

    move v6, v12

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$53;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZIZ)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$54;

    const-string v2, ">>"

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int v0, v16, v0

    add-int v14, v20, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v14, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    add-int v5, v14, v0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$54;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "More"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    div-int/lit8 v3, v1, 0x4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v6, v18, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x4

    add-int v7, v1, v5

    const-string v8, ""

    move-object v1, v0

    move v5, v12

    invoke-direct/range {v1 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Title_v2_TextLR;-><init>(Ljava/lang/String;IIIIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v14, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$55;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Council"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Tip"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v4, -0x1

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v10, 0x1

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v5, v20

    move v6, v12

    move/from16 v7, v16

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$55;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZIZ)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$56;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "EdgeScrolling"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v11

    move-object/from16 v1, p0

    move v6, v12

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$56;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZIZ)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$57;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "VSync"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v4, -0x1

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v10, 0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v5, v20

    move v6, v12

    move/from16 v7, v16

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$57;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZIZ)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    :cond_8
    move v6, v12

    new-instance v10, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$58;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Reset"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v5, v20

    move/from16 v7, v16

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$58;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_4
    if-ge v1, v0, :cond_a

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_9

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v1, v1, 0x8

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v4, v18

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v4, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Settings"

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

    move-object v6, v13

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawScrollPositionAlways:Z

    const-string v1, "Provinces Border: 12"

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getTextWidth(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    const-string v1, "1000%"

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getTextWidth(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    const-string v1, "X16 666 667"

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getTextWidth(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->nanoW:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v9, p1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->SETTINGS_MENU_DRAW_TIMES:Z

    if-eqz v1, :cond_0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v7, v1, 0x4

    sget-wide v1, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvinces_Time:J

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesFBO_Time:J

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawArmies_Time:J

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesBorder_Time:J

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesNames_Time:J

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawCivsNames_Time:J

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawCities_Time:J

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawMoveUnits_Time:J

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawClouds_Time:J

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawShips_Time:J

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawShips2_Time:J

    add-long/2addr v1, v3

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawMapBorder_Time:J

    add-long v10, v1, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v1, v7

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v2, v2, p3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v3, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->nanoW:I

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x10

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-static {v9, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v3, 0x0

    sget-object v3, Laoc/kingdoms/lukasz/map/advisors/VjN/hQfu;->XSPnOEOtq:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v3, "Perc"

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v3, "Nanotime"

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/lit8 v8, v1, 0x0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v3, "Update Provinces "

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->provinceInView_Time:J

    long-to-float v3, v3

    long-to-float v10, v10

    div-float/2addr v3, v10

    const/high16 v11, 0x42c80000    # 100.0f

    mul-float/2addr v3, v11

    const/4 v13, 0x1

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v14, "%"

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->provinceInView_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v3, "Draw Provinces "

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvinces_Time:J

    long-to-float v3, v3

    div-float/2addr v3, v10

    mul-float/2addr v3, v11

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvinces_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const/4 v3, 0x0

    sget-object v3, Lcom/google/android/gms/security/IYT/MQYGMkZOAcS;->mXnmKliY:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesFBO_Time:J

    long-to-float v3, v3

    div-float/2addr v3, v10

    mul-float/2addr v3, v11

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesFBO_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v3, "Provinces Border "

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesBorder_Time:J

    long-to-float v3, v3

    div-float/2addr v3, v10

    mul-float/2addr v3, v11

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesBorder_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v3, "Provinces Names "

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesNames_Time:J

    long-to-float v3, v3

    div-float/2addr v3, v10

    mul-float/2addr v3, v11

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawProvincesNames_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v3, "Civs Names "

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawCivsNames_Time:J

    long-to-float v3, v3

    div-float/2addr v3, v10

    mul-float/2addr v3, v11

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawCivsNames_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v3, "Cities & Flags "

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawCities_Time:J

    long-to-float v3, v3

    div-float/2addr v3, v10

    mul-float/2addr v3, v11

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawCities_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v3, "Clouds "

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawClouds_Time:J

    long-to-float v3, v3

    div-float/2addr v3, v10

    mul-float/2addr v3, v11

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawClouds_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v3, "Ships "

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawShips_Time:J

    long-to-float v3, v3

    div-float/2addr v3, v10

    mul-float/2addr v3, v11

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawShips_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v3, "Ships 2 "

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawShips2_Time:J

    long-to-float v3, v3

    div-float/2addr v3, v10

    mul-float/2addr v3, v11

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawShips2_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v3, "Armies "

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawArmies_Time:J

    long-to-float v3, v3

    div-float/2addr v3, v10

    mul-float/2addr v3, v11

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawArmies_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v3, "Move Units "

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawMoveUnits_Time:J

    long-to-float v3, v3

    div-float/2addr v3, v10

    mul-float/2addr v3, v11

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawMoveUnits_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v3, "Map Border "

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawMapBorder_Time:J

    long-to-float v3, v3

    div-float/2addr v3, v10

    mul-float/2addr v3, v11

    invoke-static {v3, v13}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-wide v3, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->drawMapBorder_Time:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v8, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v3, "1 FPS"

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v3, ""

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    const-string v3, "16 666 667"

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextW:I

    add-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->statTextPercW:I

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    add-int/2addr v1, v7

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int/2addr v1, v8

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    add-int v1, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int v2, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    invoke-static {v9, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getHeight()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v1

    const/4 v6, 0x0

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->getHeight()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->rulerOver:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public updateLanguage()V
    .locals 0

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    return-void
.end method
