.class public Laoc/kingdoms/lukasz/menusInGame/InGame_Messages;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Messages.java"


# direct methods
.method public constructor <init>()V
    .locals 19

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v0, v0, 0x2

    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iMessagesSize:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_0

    new-instance v3, Laoc/kingdoms/lukasz/menusInGame/InGame_Messages$1;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    iget-object v10, v4, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->key:Ljava/lang/String;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    iget v11, v4, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->fromCivID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->getImageID()I

    move-result v12

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    iget v13, v4, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->expiresTurnID:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->messages:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;

    iget-wide v14, v4, Laoc/kingdoms/lukasz/jakowski/Player/MessageTypes/PMessage;->time:J

    const/16 v18, 0x1

    move-object v8, v3

    move-object/from16 v9, p0

    move/from16 v16, v2

    move/from16 v17, v0

    invoke-direct/range {v8 .. v18}, Laoc/kingdoms/lukasz/menusInGame/InGame_Messages$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Messages;Ljava/lang/String;IIIJIIZ)V

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v2, 0x0

    sget v3, Laoc/kingdoms/lukasz/menusInGame/InGame;->rankPosXW:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->topStats:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/InGame;->rankPosXW:I

    sub-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->messageBG:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int v6, v0, v1

    const/4 v8, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_Messages;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public actionElement(I)V
    .locals 0

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->actionElement(I)V

    const/4 p1, 0x0

    sput p1, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvincesCiv_HoveredFlagID:I

    return-void
.end method
