.class public Laoc/kingdoms/lukasz/menusInGame/InGame_Event;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Event.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static eventID:I

.field public static eventType:I

.field public static lTime:J


# instance fields
.field public event:Laoc/kingdoms/lukasz/events/Event;

.field public imgHeight:I

.field public imgWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Laoc/kingdoms/lukasz/events/Event;II)V
    .locals 21

    move-object/from16 v11, p0

    const-string v1, ""

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    const/4 v12, 0x1

    iput v12, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgWidth:I

    iput v12, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgHeight:I

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v0, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    sput p2, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventType:I

    sput p3, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventID:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v14, 0x2

    mul-int/2addr v0, v14

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v15, v0, v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v10

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->boxBGExtraY:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v2, v14

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    add-int v16, v0, v2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v0, 0x2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    iget-object v0, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v0, v0, Laoc/kingdoms/lukasz/events/Event;->image:Ljava/lang/String;

    invoke-static {v0}, Laoc/kingdoms/lukasz/events/EventsManager;->loadEventIMG(Ljava/lang/String;)V

    :try_start_0
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v0, v14

    sub-int v0, v10, v0

    int-to-float v0, v0

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventIMG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    mul-int/2addr v3, v14

    sub-int v3, v10, v3

    iput v3, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgWidth:I

    sget-object v3, Laoc/kingdoms/lukasz/events/EventsManager;->eventIMG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    sget v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->eventType:I

    const/4 v9, 0x5

    const/4 v8, 0x0

    if-eq v0, v14, :cond_1

    if-ne v0, v9, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v3, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->desc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v3, v15, 0x2

    sub-int v3, v10, v3

    invoke-direct {v0, v1, v15, v2, v3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1
    :goto_1
    :try_start_1
    iget-object v0, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v0, v0, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v0, v0, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getValue1()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/ResourcesManager;->getResourceName(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v0, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v0, v0, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v0, v0, Laoc/kingdoms/lukasz/events/EventOption;->outcome:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome;->getValue2()F

    move-result v0

    const/16 v4, 0xa

    invoke-static {v0, v4}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v3, v1

    :goto_2
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_3
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v5, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v5, v5, Laoc/kingdoms/lukasz/events/Event;->desc:Ljava/lang/String;

    invoke-virtual {v4, v5, v3, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v3, v15, 0x2

    sub-int v3, v10, v3

    invoke-direct {v0, v1, v15, v2, v3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Desc;-><init>(Ljava/lang/String;III)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v12

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v1, v14

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    move v0, v2

    move v7, v8

    :goto_5
    iget-object v1, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v1, v1, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v7, v1, :cond_2

    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v2, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v2, v2, Laoc/kingdoms/lukasz/events/Event;->options:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/events/EventOption;

    iget-object v2, v2, Laoc/kingdoms/lukasz/events/EventOption;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    const/4 v5, -0x1

    mul-int/lit8 v1, v15, 0x2

    sub-int v17, v10, v1

    const/16 v18, 0x1

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v14, v6

    move v6, v15

    move/from16 v19, v7

    move v7, v0

    move/from16 v8, v17

    move/from16 v17, v9

    move/from16 v9, v18

    move/from16 v20, v10

    move/from16 v10, v19

    invoke-direct/range {v1 .. v10}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Event;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v12

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v7, v19, 0x1

    move/from16 v9, v17

    move/from16 v10, v20

    const/4 v8, 0x0

    const/4 v14, 0x2

    goto :goto_5

    :cond_2
    move/from16 v17, v9

    move/from16 v20, v10

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v0, :cond_4

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v1

    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_4
    const/4 v4, 0x2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v16

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v2, v4

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v8, v20

    const/4 v10, 0x0

    invoke-direct {v2, v10, v10, v8, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->eventProvinceID:I

    if-gez v1, :cond_5

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    if-ltz v2, :cond_5

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v1

    goto :goto_7

    :cond_5
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_6

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v1

    :cond_6
    :goto_7
    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$2;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v3, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->event:Laoc/kingdoms/lukasz/events/Event;

    iget-object v3, v3, Laoc/kingdoms/lukasz/events/Event;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "EventInX"

    invoke-virtual {v2, v4, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget v7, Laoc/kingdoms/lukasz/textures/Images;->title600:I

    move-object v1, v9

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v7}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Event;Ljava/lang/String;Ljava/lang/String;ZZI)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    div-int/lit8 v2, v8, 0x2

    sub-int v3, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v4, v1, 0x5

    const/4 v12, 0x0

    const/4 v14, 0x1

    move-object/from16 v1, p0

    move-object v2, v9

    move v5, v8

    move v6, v0

    move-object v7, v13

    move v8, v12

    move v9, v14

    invoke-virtual/range {v1 .. v9}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    iput-boolean v10, v11, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->drawScrollPositionAlways:Z

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->lTime:J

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

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    move/from16 v16, v0

    goto :goto_0

    :cond_0
    move/from16 v16, p3

    :goto_0
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosX()I

    move-result v0

    add-int v0, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v1, v1, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {v15, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosX()I

    move-result v0

    add-int v8, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosY()I

    move-result v0

    add-int v9, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v11, v0, v1

    const/4 v12, 0x0

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->insideTop600:I

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->insideBot600:I

    move-object/from16 v7, p1

    invoke-static/range {v7 .. v14}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/events/EventsManager;->eventIMG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosY()I

    move-result v1

    add-int v3, v1, v16

    iget v4, v6, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgWidth:I

    iget v5, v6, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgHeight:I

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->eventCorner:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v0, v1

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosY()I

    move-result v0

    add-int v10, v0, v16

    iget v11, v6, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgWidth:I

    iget v12, v6, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgHeight:I

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v7, p1

    invoke-static/range {v7 .. v13}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIIF)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosY()I

    move-result v1

    iget v3, v6, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgHeight:I

    add-int/2addr v1, v3

    add-int v3, v1, v16

    iget v4, v6, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgWidth:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v1, 0x2

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v7, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v0, v1

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->getPosY()I

    move-result v0

    iget v1, v6, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgHeight:I

    add-int/2addr v0, v1

    add-int v10, v0, v16

    iget v11, v6, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->imgWidth:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v0, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Event;->lTime:J

    return-void
.end method
