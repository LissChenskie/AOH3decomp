.class public Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_CourtOptions2.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static HEIGHT:I = 0x64

.field public static TEXT_ANIMATION_TIME:I = 0xa5

.field public static TEXT_TIME:J = 0x0L

.field public static buttonW_Draw:I = 0x0

.field public static idCores:I = -0x15

.field public static idCourt:I = -0x9

.field public static idExploitEconomy:I = -0x5e

.field public static idProvinces:I = -0x4d

.field public static idReligion:I = -0x18

.field public static isOptionHovered:Z

.field public static menuH:I

.field public static textMaxWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 22

    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int v13, v0, v1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuWidth()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v14, v0, v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    :goto_0
    move v15, v0

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$1;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Missions"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->missions:I

    const/16 v16, 0x1

    sget v17, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move v6, v14

    move v7, v15

    move-object v12, v9

    move/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    const/4 v12, 0x0

    add-int/2addr v0, v12

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    invoke-direct {v1, v12, v0, v2}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v17, v0, v1

    sput v16, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iGovernmentID:I

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$2;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Government"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->government:I

    const/16 v18, 0x2

    sget v19, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v5, v17

    move/from16 v8, v16

    move-object v12, v9

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int v0, v17, v0

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    const/4 v3, 0x0

    invoke-direct {v1, v3, v0, v2}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int v12, v0, v1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->zoom:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Zoom;->SIDEBAR_ZOOM_SCALE_BUTTONS:Z

    if-eqz v0, :cond_1

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "Scale"

    invoke-virtual {v1, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->plus:I

    const/16 v17, 0x3

    sget v19, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    const/4 v4, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move v5, v12

    move v6, v14

    move v7, v15

    move-object/from16 v20, v8

    move/from16 v8, v18

    move/from16 v21, v13

    move-object v13, v9

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v12, v1}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$4;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v2, v20

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->minus:I

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v0, v13

    move-object/from16 v1, p0

    move v5, v12

    move/from16 v8, v17

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v12, v1}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    const/4 v0, 0x4

    move v8, v0

    goto :goto_1

    :cond_1
    move/from16 v21, v13

    move/from16 v8, v18

    :goto_1
    sput v8, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iLawID:I

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$5;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Laws"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->law:I

    add-int/lit8 v17, v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    const/4 v4, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move v5, v12

    move v6, v14

    move v7, v15

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v12, v1}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    sput v17, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->buildID:I

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$6;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Buildings"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->build:I

    add-int/lit8 v18, v17, 0x1

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v0, v13

    move-object/from16 v1, p0

    move v5, v12

    move/from16 v8, v17

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v12, v1}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$7;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "TaxEfficiency"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->taxUp:I

    add-int/lit8 v17, v18, 0x1

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v0, v13

    move-object/from16 v1, p0

    move v5, v12

    move/from16 v8, v18

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v12, v1}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$8;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Economy"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_ECONOMY_UP:I

    add-int/lit8 v18, v17, 0x1

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v0, v13

    move-object/from16 v1, p0

    move v5, v12

    move/from16 v8, v17

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v12, v1}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$9;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Infrastructure"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->infrastructureUp:I

    add-int/lit8 v17, v18, 0x1

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v0, v13

    move-object/from16 v1, p0

    move v5, v12

    move/from16 v8, v18

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v12, v1}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$10;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "GrowthRate"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->populationUp:I

    add-int/lit8 v18, v17, 0x1

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v0, v13

    move-object/from16 v1, p0

    move v5, v12

    move/from16 v8, v17

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v12, v1}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$11;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Manpower"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER_UP:I

    add-int/lit8 v17, v18, 0x1

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v0, v13

    move-object/from16 v1, p0

    move v5, v12

    move/from16 v8, v18

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v12, v1}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    sput v17, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->idCores:I

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$12;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Cores"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->core:I

    add-int/lit8 v18, v17, 0x1

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v0, v13

    move-object/from16 v1, p0

    move v5, v12

    move/from16 v8, v17

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v12, v1}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    sput v18, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->idReligion:I

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$13;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Religion"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    add-int/lit8 v17, v18, 0x1

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v0, v13

    move-object/from16 v1, p0

    move v5, v12

    move/from16 v8, v18

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v12, v1}, Laoc/kingdoms/lukasz/menu_element/SpaceHorizontal;-><init>(III)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$14;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "Sandbox"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->sandbox:I

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    move-object v0, v13

    move-object/from16 v1, p0

    move v5, v12

    move/from16 v8, v17

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;IIIIIII)V

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$15;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->buttonW_Draw:I

    const/4 v2, 0x0

    invoke-direct {v0, v10, v2, v12, v1}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;III)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v12, v0

    sput v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_3

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getTextWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    if-le v1, v2, :cond_2

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getTextWidth()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v21

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v1, 0x0

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->textMaxWidth:I

    add-int/2addr v14, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int v4, v14, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->enableHideSideMenu:Z

    xor-int/lit8 v7, v0, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    const/4 v2, 0x0

    move/from16 v3, v21

    move-object v6, v11

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    const/4 v0, 0x0

    iput-boolean v0, v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->drawScrollPositionAlways:Z

    iput-boolean v0, v10, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->drawScrollPositionAlways2:Z

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->HEIGHT:I

    move v12, v0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuElementsSize()I

    move-result v0

    if-ge v12, v0, :cond_5

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->HEIGHT:I

    if-le v0, v1, :cond_4

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-virtual {v10, v12}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->HEIGHT:I

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_5
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->HEIGHT:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/menusInGame/InGame;->leftSideBarPadding:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->HEIGHT:I

    return-void
.end method

.method public static final actionBuildings(I)V
    .locals 5

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eq p0, v0, :cond_0

    sput p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->disableAllViews()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Buildings2()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    sput-wide v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    if-ne v0, v4, :cond_1

    sput p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->disableAllViews()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Buildings2()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p0, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    sput-wide v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    :cond_1
    :goto_0
    return-void
.end method

.method public static final actionCores(I)V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    if-eq p0, v0, :cond_0

    sput p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->disableAllViews()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Core()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget p0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CORE:I

    if-eq p0, v0, :cond_0

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CORE:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    :cond_0
    return-void
.end method

.method public static final actionCourt(I)V
    .locals 5

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    sput p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->disableAllViews()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Court()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    sput-wide v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    if-ne p0, v0, :cond_1

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->inCourt:Z

    if-nez v0, :cond_2

    :cond_1
    sput p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->disableAllViews()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Court()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p0, v4}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    sput-wide v2, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    :cond_2
    :goto_0
    return-void
.end method

.method public static final actionLaws(I)V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    if-eq p0, v0, :cond_0

    sput p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->disableAllViews()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_LawsCourt()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    :cond_0
    return-void
.end method

.method public static actionMissions()V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyTree()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TechnologyTree(Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_MissionTree(ZZ)V

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$17;

    const-string v1, "setOrderOfMenu_TechnologyTree"

    invoke-direct {v0, v1}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$17;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :goto_0
    return-void
.end method

.method public static final actionProvinces(I)V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    if-eq p0, v0, :cond_0

    sput p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->disableAllViews()V

    const-string p0, ""

    sput-object p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Provinces;->sSearch:Ljava/lang/String;

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CourtProvinces()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    :cond_0
    return-void
.end method

.method public static final actionReligion(I)V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    if-eq p0, v0, :cond_0

    sput p0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->disableAllViews()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Religion()V

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget p0, p0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CONVERT_RELIGION:I

    if-eq p0, v0, :cond_0

    sget-object p0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CONVERT_RELIGION:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    :cond_0
    return-void
.end method

.method public static disableAllViews()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INVEST_IN_ECONOMY:I

    if-ne v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEVELOP_INFRASTRUCTURE:I

    if-ne v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_TAX_EFFICIENCY:I

    if-ne v0, v1, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto/16 :goto_0

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_MANPOWER:I

    if-ne v0, v1, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_0

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_MOVE_CAPITAL:I

    if-ne v0, v1, :cond_4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_0

    :cond_4
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_INCREASE_GROWTH_RATE:I

    if-ne v0, v1, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_0

    :cond_5
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CONVERT_RELIGION:I

    if-ne v0, v1, :cond_6

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_0

    :cond_6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_CORE:I

    if-ne v0, v1, :cond_7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    goto :goto_0

    :cond_7
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_BUILDING:I

    if-ne v0, v1, :cond_8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DEFAULT:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapModeManager;->setActiveViewID(I)V

    :cond_8
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court_Buildings2;->oBuildingID:Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    return-void
.end method

.method public static final getMenuWidth()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->leftSideBar:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->leftSideBarInnerWidth:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public static final getOtherMenuPosX()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuWidth()I

    move-result v1

    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->IN_GAME_LEFT_PADDING_EXTRA:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static final getOtherMenuPosX_2()I
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->enableHideSideMenu:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuWidth()I

    move-result v0

    :goto_0
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->IN_GAME_LEFT_PADDING_EXTRA:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public actionCloseMenu()V
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    return-void
.end method

.method public actionElement(I)V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    if-eq v0, v1, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->iActiveCivID:I

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_Court()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getCurrent()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions;->iActiveID:I

    if-ne v0, v1, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Court(Z)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->actionElement(I)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 6

    const/4 v0, 0x0

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->isOptionHovered:Z

    :goto_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuElementsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->isOptionHovered:Z

    sget-boolean v0, Laoc/kingdoms/lukasz/menu/MenuManager;->orderOfMenuInGame:Z

    if-nez v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyTree()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$16;

    const-string v1, "setOrderOfMenu_InGame"

    invoke-direct {v0, p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask_First(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->isOptionHovered:Z

    if-nez v0, :cond_2

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_CourtOptions2;->TEXT_TIME:J

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->enableHideSideMenu:Z

    if-eqz v0, :cond_3

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int/2addr p2, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v0, v0

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v3, Laoc/kingdoms/lukasz/menusInGame/Court/InGame_Court;->lTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr p2, v0

    :cond_3
    move v2, p2

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public getPosX()I
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->IN_GAME_LEFT_PADDING_EXTRA:I

    add-int/2addr v0, v1

    return v0
.end method

.method public onHovered()V
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameCourt()V

    return-void
.end method
