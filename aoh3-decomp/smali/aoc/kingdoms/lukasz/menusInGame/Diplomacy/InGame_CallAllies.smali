.class public Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_CallAllies.java"


# static fields
.field public static final ANIMATION_TIME:I = 0x3c

.field public static callToWar:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static iCivID:I = 0x0

.field public static lTime:J = 0x0L

.field public static warKey:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->callToWar:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 25

    const-string v0, ""

    const-string v1, "CallAllies"

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->flagBG:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget-object v7, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->callToWar:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    sput p1, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->iCivID:I

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->warBig:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x4

    add-int/2addr v7, v9

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v10

    mul-int/lit8 v11, v9, 0x2

    add-int v18, v10, v11

    div-int/lit8 v19, v6, 0x2

    sub-int v10, v19, v2

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v11, 0x2

    sub-int/2addr v10, v11

    div-int/lit8 v11, v7, 0x2

    sub-int/2addr v10, v11

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v12}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v12

    invoke-virtual {v12}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v12

    sub-int v20, v10, v12

    new-instance v10, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;

    sget-object v12, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v12, v12, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sub-int v13, v19, v11

    sget v14, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v14}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v14

    invoke-virtual {v14}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v14

    sub-int/2addr v13, v14

    add-int/2addr v9, v5

    const/4 v15, 0x1

    invoke-direct {v10, v12, v13, v9, v15}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;-><init>(IIIZ)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->iCivID:I

    add-int v11, v19, v11

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v11

    invoke-direct {v10, v12, v13, v9, v15}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag_Diplomacy;-><init>(IIIZ)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->iCivID:I

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/16 v16, -0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v11, v9

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->flagDiplomacyOver:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v9

    add-int v17, v11, v9

    move-object v9, v14

    move-object v11, v12

    move v12, v13

    move/from16 v13, v16

    move-object/from16 v21, v14

    move/from16 v14, v17

    move/from16 v22, v15

    move v15, v5

    move/from16 v16, v20

    move/from16 v17, v18

    invoke-direct/range {v9 .. v17}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;-><init>(ILjava/lang/String;IIIIII)V

    move-object/from16 v9, v21

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v13, -0x1

    move-object v9, v15

    move v14, v2

    move-object/from16 v23, v15

    move v15, v5

    invoke-direct/range {v9 .. v17}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Static_ID;-><init>(ILjava/lang/String;IIIIII)V

    move-object/from16 v9, v23

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$1;

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->warBig:I

    mul-int/lit8 v9, v2, 0x2

    sub-int v20, v6, v9

    move-object v9, v15

    move-object/from16 v10, p0

    move v12, v2

    move v13, v5

    move/from16 v14, v20

    move/from16 v21, v4

    move-object v4, v15

    move/from16 v15, v18

    move/from16 v16, v7

    invoke-direct/range {v9 .. v16}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;IIIIII)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v7

    add-int/2addr v5, v4

    :try_start_0
    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v9, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->iCivID:I

    invoke-static {v9, v10}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->declareWar_AlliesAttacker(II)Ljava/util/List;

    move-result-object v15

    sget-object v9, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v10, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->warKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    :goto_0
    if-ltz v9, :cond_2

    sget-object v10, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v11, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->warKey:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/war/War;

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v10

    if-nez v10, :cond_0

    sget-object v10, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v11, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->warKey:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/war/War;

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    invoke-interface {v15, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    :cond_2
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_3

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v10, "None"

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v12, -0x1

    move-object v9, v0

    move v13, v2

    move v14, v5

    move/from16 v15, v20

    move/from16 v16, v7

    invoke-direct/range {v9 .. v16}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v7

    add-int/2addr v5, v0

    goto/16 :goto_2

    :cond_3
    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$2;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v10, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v9, 0x2

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v10, v9, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    move-object v9, v14

    move/from16 v18, v10

    move-object/from16 v10, p0

    move-object v4, v14

    move v14, v2

    move-object/from16 v23, v15

    move v15, v5

    move/from16 v16, v20

    move/from16 v17, v7

    invoke-direct/range {v9 .. v18}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;Ljava/lang/String;IIIIIII)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v9

    add-int/2addr v5, v4

    const/4 v4, 0x0

    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_4

    new-instance v15, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$3;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v14, v23

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v10

    invoke-virtual {v10}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v13, v9, 0x2

    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object v9, v15

    move-object/from16 v10, p0

    move-object/from16 v23, v14

    move v14, v2

    move-object/from16 v24, v0

    move-object v0, v15

    move v15, v5

    move/from16 v16, v20

    move/from16 v17, v7

    invoke-direct/range {v9 .. v18}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;Ljava/lang/String;IIIIIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v9

    add-int/2addr v5, v0

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v24

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v0

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$4;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "Cancel"

    invoke-virtual {v4, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v13, -0x1

    mul-int/lit8 v4, v2, 0x2

    sub-int v4, v6, v4

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v7, v7, 0x2

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v4, v7

    div-int/lit8 v16, v7, 0x2

    const/16 v17, 0x1

    move-object v9, v0

    move-object/from16 v10, p0

    move v14, v2

    move v15, v5

    invoke-direct/range {v9 .. v17}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;Ljava/lang/String;IIIIIZ)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$5;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Confirm"

    invoke-virtual {v7, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v7, v7, 0x2

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v4, v7

    div-int/lit8 v7, v7, 0x2

    add-int v14, v2, v7

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v2, v2, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v4, v2

    div-int/lit8 v16, v4, 0x2

    sget v18, Laoc/kingdoms/lukasz/textures/Images;->v:I

    move-object v9, v0

    invoke-direct/range {v9 .. v18}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/2addr v5, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, v3

    sub-int v0, v0, v21

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v5, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v6, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$6;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;Ljava/lang/String;ZZI)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int v4, v1, v19

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v3, v7

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v2, p0

    move-object v3, v0

    invoke-virtual/range {v2 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method

.method public static final confirm()V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->callToWar:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->warKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->warKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/war/War;->isDefender(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->callToWar:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->warKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->callToWar:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/war/War;->addDefender(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->warKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-virtual {v0, v2}, Laoc/kingdoms/lukasz/map/war/War;->isAggressor(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->callToWar:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->warKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/war/War;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->callToWar:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/war/War;->addAggressor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 14

    invoke-static {}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->updateInAnimation()V

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x5

    sub-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->lTime:J

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
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getPosX()I

    move-result v0

    add-int v0, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    move-object v13, p1

    invoke-static {p1, v0, v1, v2, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getPosX()I

    move-result v0

    add-int v6, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getPosY()I

    move-result v0

    add-int v7, v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v9, v0, v1

    const/4 v10, 0x0

    sget v11, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    move-object v5, p1

    invoke-static/range {v5 .. v12}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->civInfoOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getPosX()I

    move-result v0

    add-int v7, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getPosY()I

    move-result v0

    add-int v8, v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->getHeight()I

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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Diplomacy/InGame_CallAllies;->lTime:J

    invoke-static {}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->updateAnimationTime()V

    return-void
.end method
