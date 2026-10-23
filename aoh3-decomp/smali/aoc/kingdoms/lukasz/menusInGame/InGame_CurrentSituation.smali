.class public Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_CurrentSituation.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static lTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 22

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title2:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->insideTop:I

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

    mul-int/lit8 v1, v1, 0x2

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v5

    if-eqz v5, :cond_0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    goto :goto_0

    :cond_0
    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT3:I

    :goto_0
    sget v7, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v8, v8, 0x4

    add-int v17, v7, v8

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noActiveResearch:Z

    const/4 v15, 0x0

    const/16 v18, 0x1

    if-eqz v7, :cond_1

    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$1;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "NoActiveResearch"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_TECHNOLOGY:I

    mul-int/lit8 v7, v0, 0x2

    sub-int v13, v4, v7

    const/16 v16, 0x1

    move-object v7, v14

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move/from16 v19, v2

    move-object v2, v14

    move v14, v5

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    move/from16 v15, v18

    goto :goto_1

    :cond_1
    move/from16 v19, v2

    const/4 v15, 0x0

    :goto_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->maxAmountOfGold:Z

    if-eqz v2, :cond_3

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$2;

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v8, "MaximumAmountOfGold"

    invoke-virtual {v7, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    mul-int/lit8 v7, v0, 0x2

    sub-int v13, v4, v7

    add-int/lit8 v20, v15, 0x1

    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_2

    move/from16 v16, v18

    goto :goto_2

    :cond_2
    const/16 v16, 0x0

    :goto_2
    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v14, v5

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    move/from16 v15, v20

    :cond_3
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->missionCanBeUnlocked:Z

    const-string v14, ": "

    if-eqz v2, :cond_5

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$3;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Missions"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Available"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->missions:I

    mul-int/lit8 v7, v0, 0x2

    sub-int v13, v4, v7

    add-int/lit8 v20, v15, 0x1

    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_4

    move/from16 v16, v18

    goto :goto_3

    :cond_4
    const/16 v16, 0x0

    :goto_3
    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move-object v15, v14

    move v14, v5

    move/from16 v21, v3

    move-object v3, v15

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    move/from16 v15, v20

    goto :goto_4

    :cond_5
    move/from16 v21, v3

    move-object v3, v14

    :goto_4
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->chooseRivals:Z

    if-eqz v2, :cond_7

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$4;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const/4 v9, 0x0

    sget-object v9, Landroidx/arch/core/ht/qIuEvFbUtcea;->SvOAWR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v8

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v8, v8, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->rivals:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/GameValues;->rivals:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;

    iget v8, v8, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Rivals;->RIVALS_LIMIT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->rivals:I

    mul-int/lit8 v7, v0, 0x2

    sub-int v13, v4, v7

    add-int/lit8 v20, v15, 0x1

    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_6

    move/from16 v16, v18

    goto :goto_5

    :cond_6
    const/16 v16, 0x0

    :goto_5
    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v14, v5

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    move/from16 v15, v20

    :cond_7
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->newLawAvailable:Z

    if-eqz v2, :cond_9

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$5;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Law"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "Unlocked"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->law:I

    mul-int/lit8 v7, v0, 0x2

    sub-int v13, v4, v7

    add-int/lit8 v20, v15, 0x1

    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_8

    move/from16 v16, v18

    goto :goto_6

    :cond_8
    const/16 v16, 0x0

    :goto_6
    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v14, v5

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    move/from16 v15, v20

    :cond_9
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->availableAdvantage:Z

    if-eqz v2, :cond_b

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$6;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v9, "AdvantagePoints"

    invoke-virtual {v8, v9}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getAdvantagePoints()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->advantages:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v13, v4, v3

    add-int/lit8 v3, v15, 0x1

    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_a

    move/from16 v16, v18

    goto :goto_7

    :cond_a
    const/16 v16, 0x0

    :goto_7
    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v14, v5

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    move v15, v3

    :cond_b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->highInflation:Z

    if-eqz v2, :cond_d

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$7;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "HighInflation"

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->inflation:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v13, v4, v3

    add-int/lit8 v3, v15, 0x1

    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_c

    move/from16 v16, v18

    goto :goto_8

    :cond_c
    const/16 v16, 0x0

    :goto_8
    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v14, v5

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    move v15, v3

    :cond_d
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->nonCoreProvinces:Z

    if-eqz v2, :cond_f

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$8;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "NonCoreProvince"

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->core:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v13, v4, v3

    add-int/lit8 v3, v15, 0x1

    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_e

    move/from16 v16, v18

    goto :goto_9

    :cond_e
    const/16 v16, 0x0

    :goto_9
    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v14, v5

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    move v15, v3

    :cond_f
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->differentReligionProvinces:Z

    if-eqz v2, :cond_11

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$9;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "DifferentReligion"

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->religion:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v13, v4, v3

    add-int/lit8 v3, v15, 0x1

    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_10

    move/from16 v16, v18

    goto :goto_a

    :cond_10
    const/16 v16, 0x0

    :goto_a
    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v14, v5

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    move v15, v3

    :cond_11
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->availableCivilizationLegacy:Z

    if-eqz v2, :cond_13

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$10;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "AvailableCivilizationLegacy"

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->legacy:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v13, v4, v3

    add-int/lit8 v3, v15, 0x1

    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_12

    move/from16 v16, v18

    goto :goto_b

    :cond_12
    const/16 v16, 0x0

    :goto_b
    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v14, v5

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    move v15, v3

    :cond_13
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->noAdvisor:I

    if-lez v2, :cond_15

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$11;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "NoAdvisor"

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->skill:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v13, v4, v3

    add-int/lit8 v3, v15, 0x1

    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_14

    move/from16 v16, v18

    goto :goto_c

    :cond_14
    const/16 v16, 0x0

    :goto_c
    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v14, v5

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    move v15, v3

    :cond_15
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->promoteAdvisor:I

    if-lez v2, :cond_17

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$12;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "PromoteAdvisor"

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->skill:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v13, v4, v3

    add-int/lit8 v3, v15, 0x1

    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_16

    move/from16 v16, v18

    goto :goto_d

    :cond_16
    const/16 v16, 0x0

    :goto_d
    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v14, v5

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    move v15, v3

    :cond_17
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->lackOfGeneral:Z

    if-eqz v2, :cond_19

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$13;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "LackOfGeneral"

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->general:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v13, v4, v3

    add-int/lit8 v3, v15, 0x1

    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_18

    move/from16 v16, v18

    goto :goto_e

    :cond_18
    const/16 v16, 0x0

    :goto_e
    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v14, v5

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    move v15, v3

    :cond_19
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeCapitalCity:Z

    if-eqz v2, :cond_1b

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$14;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "UpgradeCapitalCity"

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->capital:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v13, v4, v3

    add-int/lit8 v3, v15, 0x1

    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_1a

    move/from16 v16, v18

    goto :goto_f

    :cond_1a
    const/16 v16, 0x0

    :goto_f
    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v14, v5

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    move v15, v3

    :cond_1b
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeSupremeCourt:Z

    if-eqz v2, :cond_1d

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$15;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "UpgradeSupremeCourt"

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->stability:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v13, v4, v3

    add-int/lit8 v3, v15, 0x1

    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_1c

    move/from16 v16, v18

    goto :goto_10

    :cond_1c
    const/16 v16, 0x0

    :goto_10
    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v14, v5

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    move v15, v3

    :cond_1d
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->militaryAcademyCanBeUpgraded:Z

    if-eqz v2, :cond_1f

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$16;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "UpgradeMilitaryAcademy"

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v13, v4, v3

    add-int/lit8 v3, v15, 0x1

    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_1e

    move/from16 v16, v18

    goto :goto_11

    :cond_1e
    const/16 v16, 0x0

    :goto_11
    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v14, v5

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    move v15, v3

    :cond_1f
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->militaryAcademyForGeneralsCanBeUpgraded:Z

    if-eqz v2, :cond_21

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$17;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "UpgradeMilitaryAcademyForGenerals"

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->general:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v13, v4, v3

    add-int/lit8 v3, v15, 0x1

    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_20

    move/from16 v16, v18

    goto :goto_12

    :cond_20
    const/16 v16, 0x0

    :goto_12
    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v14, v5

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$17;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    move v15, v3

    :cond_21
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->upgradeNuclearReactor:Z

    if-eqz v2, :cond_23

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$18;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "UpgradeNuclearReactor"

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->nuke:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v13, v4, v3

    add-int/lit8 v3, v15, 0x1

    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_22

    move/from16 v16, v18

    goto :goto_13

    :cond_22
    const/16 v16, 0x0

    :goto_13
    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v14, v5

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$18;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v2

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v7

    add-int/2addr v1, v2

    move v15, v3

    :cond_23
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->currSituation:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerCurrentSituation;->wonderCanBeBuilt:Z

    if-eqz v2, :cond_25

    new-instance v2, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$19;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v7, "AWonderCanBeBuilt"

    invoke-virtual {v3, v7}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sget v10, Laoc/kingdoms/lukasz/textures/Images;->mapModesWonders:I

    mul-int/lit8 v3, v0, 0x2

    sub-int v13, v4, v3

    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_24

    move/from16 v16, v18

    goto :goto_14

    :cond_24
    const/16 v16, 0x0

    :goto_14
    move-object v7, v2

    move-object/from16 v8, p0

    move v11, v0

    move v12, v1

    move v14, v5

    move/from16 v15, v17

    invoke-direct/range {v7 .. v16}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$19;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;IIIIIIZ)V

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

    add-int/2addr v1, v0

    :cond_25
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v0, v0, v21

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v4, v1}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$20;

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget v12, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    move-object v7, v1

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation$20;-><init>(Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;Ljava/lang/String;ZZI)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v19

    move/from16 v3, v21

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 9

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int/2addr p2, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v0, v0

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v3, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->lTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr p2, v0

    :cond_0
    move v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getPosX()I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {p1, p2, v0, v1, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getPosX()I

    move-result p2

    add-int v4, p2, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getPosY()I

    move-result p2

    add-int v5, p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getHeight()I

    move-result p2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v7, p2, v0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZ)V

    sget p2, Laoc/kingdoms/lukasz/textures/Images;->newGameOver:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getPosX()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->newGameOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    add-int v5, p2, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getPosY()I

    move-result p2

    add-int v6, p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getHeight()I

    move-result p2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->newGameOver:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    move-object v0, p0

    move-object v1, p1

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

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->lTime:J

    return-void
.end method

.method public updateLanguage()V
    .locals 3

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->updateLanguage()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_CurrentSituation;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "CurrentSituation"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method
