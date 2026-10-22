.class public Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_TechnologyTree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;
    }
.end annotation


# static fields
.field protected static final ANIMATION_TIME:I = 0x3c

.field public static centerToTechID:I

.field public static lTime:J

.field public static sparksAnimation:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;


# instance fields
.field public iLinesSize:I

.field public iMapPosY:I

.field public lines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sparksAnimation:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTime:J

    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->centerToTechID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 19

    move-object/from16 v9, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    const/4 v10, 0x0

    iput v10, v9, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->iMapPosY:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    iput v10, v9, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->iLinesSize:I

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v11, v0, 0x4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->titleTechTree:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v12

    sget v13, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

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

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title928:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v14, v0, v1

    move v7, v10

    move v15, v7

    :goto_0
    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologySize:I

    const/16 v6, 0x64

    if-ge v15, v0, :cond_4

    new-instance v5, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v15, v0}, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->getTechBG(II)I

    move-result v1

    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    add-int/2addr v0, v6

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeColumn:I

    mul-int/2addr v0, v2

    add-int/lit8 v3, v0, 0x64

    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

    add-int/lit8 v0, v0, 0xf

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeRow:I

    mul-int/2addr v0, v2

    add-int/lit8 v4, v0, 0xf

    const/16 v16, 0x1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->playerData:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerData;->techQueue:Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;

    invoke-virtual {v0, v15}, Laoc/kingdoms/lukasz/jakowski/Player/More/PlayerTechQueue;->getTechIsInQueue(I)I

    move-result v17

    move-object v0, v5

    move v2, v15

    move-object v10, v5

    move/from16 v5, v16

    move/from16 v16, v13

    move v13, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;-><init>(IIIIZI)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->centerToTechID:I

    if-ltz v0, :cond_0

    if-ne v15, v0, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_1

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    :cond_1
    :goto_1
    move v10, v7

    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    if-ltz v0, :cond_2

    iget-object v7, v9, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v13

    sget v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    add-int/2addr v1, v13

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeColumn:I

    mul-int/2addr v1, v2

    add-int v3, v0, v1

    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xf

    sget v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

    add-int/lit8 v1, v1, 0xf

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeRow:I

    mul-int/2addr v1, v2

    add-int v4, v0, v1

    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v13

    sget v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    add-int/2addr v1, v13

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeColumn:I

    mul-int/2addr v1, v2

    add-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xf

    sget v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

    add-int/lit8 v1, v1, 0xf

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeRow:I

    mul-int/2addr v1, v2

    add-int v17, v0, v1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v18

    move-object v0, v6

    move-object/from16 v1, p0

    move v2, v15

    move-object v13, v6

    move/from16 v6, v17

    move/from16 v17, v10

    move-object v10, v7

    move/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;-><init>(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;IIIIIZ)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move/from16 v17, v10

    :goto_2
    sget-object v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v0, v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    if-ltz v0, :cond_3

    iget-object v10, v9, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    div-int/lit8 v0, v0, 0x2

    const/16 v1, 0x64

    add-int/2addr v0, v1

    sget v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    add-int/2addr v2, v1

    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v3, v3, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeColumn:I

    mul-int/2addr v2, v1

    add-int v3, v0, v2

    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xf

    sget v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

    add-int/lit8 v1, v1, 0xf

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v4, v4, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->RequiredTech2:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeRow:I

    mul-int/2addr v1, v2

    add-int v4, v0, v1

    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    div-int/lit8 v0, v0, 0x2

    const/16 v1, 0x64

    add-int/2addr v0, v1

    sget v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyWidth:I

    add-int/2addr v2, v1

    sget-object v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v1, v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeColumn:I

    mul-int/2addr v2, v1

    add-int v5, v0, v2

    sget v0, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xf

    sget v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

    add-int/lit8 v1, v1, 0xf

    sget-object v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget v2, v2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->TreeRow:I

    mul-int/2addr v1, v2

    add-int v6, v0, v1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0, v15}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getTechResearched(I)Z

    move-result v7

    move-object v0, v13

    move-object/from16 v1, p0

    move v2, v15

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;-><init>(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;IIIIIZ)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v15, v15, 0x1

    move/from16 v13, v16

    move/from16 v7, v17

    const/4 v10, 0x0

    goto/16 :goto_0

    :cond_4
    move/from16 v16, v13

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v1, v0, :cond_6

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_5

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, v14

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v1, v0, :cond_8

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v4

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-le v4, v3, :cond_7

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosX()I

    move-result v3

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    const/16 v1, 0x64

    add-int/2addr v3, v1

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/Empty;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v3, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    int-to-float v0, v2

    sget v1, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->iTechnologyHeight:I

    add-int/lit8 v1, v1, 0xf

    int-to-float v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->inGame:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_InGame;->TECH_TREE_NUM_OF_ROWS:I

    int-to-float v2, v2

    const/high16 v3, 0x3e800000    # 0.25f

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    mul-int/lit8 v11, v11, 0x2

    int-to-float v2, v11

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    new-instance v10, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$1;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v1, "TechnologyTree"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move v3, v12

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;Ljava/lang/String;IZZ)V

    const/4 v2, 0x0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v6, 0x2

    sub-int v3, v0, v1

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object v1, v10

    move/from16 v4, v16

    move v5, v6

    move-object v6, v8

    move v10, v7

    move v7, v11

    move v8, v12

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iHeightOfMapTech:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->iMapPosY:I

    iget-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->iLinesSize:I

    if-eqz v10, :cond_9

    neg-int v0, v10

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->setMenuPosX(I)V

    :cond_9
    return-void
.end method


# virtual methods
.method public actionCloseMenu()V
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TechnologyTree(Z)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 20

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTime:J

    const-wide/16 v16, 0x3c

    add-long v0, v0, v16

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    const/high16 v18, 0x42700000    # 60.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-ltz v0, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v2, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    div-float v0, v0, v18

    move/from16 v19, v0

    goto :goto_0

    :cond_0
    move/from16 v19, v5

    :goto_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f19999a    # 0.6f

    mul-float v4, v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v10, v0, p3

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    div-int/lit8 v12, v0, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int v3, v1, p3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    div-int/lit8 v7, v1, 0x2

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v14, v5

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3e99999a    # 0.3f

    mul-float v4, v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v3, v1, p3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    div-int/lit8 v5, v1, 0x2

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v7, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    add-int v10, v0, p3

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT2:I

    div-int/lit8 v12, v0, 0x2

    const/4 v0, 0x1

    move v5, v14

    move v14, v0

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTime:J

    add-long v0, v0, v16

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    sub-int v0, p3, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v7, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTime:J

    sub-long/2addr v2, v7

    long-to-float v2, v2

    div-float v2, v2, v18

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    move/from16 v16, v0

    goto :goto_1

    :cond_1
    move/from16 v16, p3

    :goto_1
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I

    move-result v0

    add-int v0, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v1, v1, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {v15, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->insideTechTree:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I

    move-result v0

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v0

    add-int v10, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v12, v0, v1

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I

    move-result v0

    add-int v0, v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v2

    add-int v2, v2, v16

    sub-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getHeight()I

    move-result v3

    neg-int v3, v3

    invoke-static {v15, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setShaderWater(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->waves:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getMenuPosX()I

    move-result v0

    neg-int v13, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getMenuPosY()I

    move-result v0

    neg-int v14, v0

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIII)V

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setShaderDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/Map;->getActiveMap_MapData()Laoc/kingdoms/lukasz/map/map/Map_Data;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundZoomOut_Enable:Z

    const v14, 0x3e19999a    # 0.15f

    const/high16 v7, 0x3e800000    # 0.25f

    const/4 v13, 0x1

    if-eqz v0, :cond_2

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v5, v5, v5, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getMenuPosX()I

    move-result v2

    add-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v2

    add-int v2, v2, v16

    invoke-virtual {v0, v15, v1, v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->drawMapBG2_TechTree(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    move v12, v5

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v5, v5, v5, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderAlpha:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object v0, Laoc/kingdoms/lukasz/menus/InitGame;->background:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v2, v1, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int v3, v1, v16

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sget v8, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    move-object/from16 v1, p1

    move v12, v5

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v2, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int v2, v1, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v3, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int v3, v1, v16

    sget v4, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundWidth:I

    sget v5, Laoc/kingdoms/lukasz/menus/InitGame;->backgroundHeight:I

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shaderDefault:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setShader(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_2
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v1

    add-int v3, v1, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getHeight()I

    move-result v1

    add-int/lit8 v5, v1, -0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I

    move-result v0

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v0

    add-int v10, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getHeight()I

    move-result v0

    sub-int/2addr v0, v13

    const/4 v1, 0x0

    const/4 v2, 0x1

    move-object/from16 v8, p1

    move v5, v12

    move v12, v0

    move v4, v13

    move v13, v1

    move v3, v14

    move v14, v2

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v7, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v8, 0x3eb33333    # 0.35f

    invoke-direct {v0, v1, v2, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v1

    add-int v7, v1, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getHeight()I

    move-result v1

    add-int/lit8 v9, v1, -0x1

    move-object/from16 v1, p1

    move v14, v3

    move v3, v7

    move v13, v4

    move v4, v8

    move v12, v5

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v11, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct {v0, v11, v11, v11, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v1

    add-int v3, v1, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v1, 0x4

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v7, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I

    move-result v0

    add-int v9, v0, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v0

    add-int v0, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v8, p1

    move v5, v10

    move v10, v0

    move v0, v11

    move v11, v1

    move v1, v12

    move v12, v2

    move v2, v13

    move v13, v3

    move v3, v14

    move v14, v4

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v1, v1, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->sparksAnimation:Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I

    move-result v4

    add-int v4, v4, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosY()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    sget v8, Laoc/kingdoms/lukasz/textures/Images;->sparkHeight:I

    sub-int/2addr v7, v8

    add-int v7, v7, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getWidth()I

    move-result v8

    sget v9, Laoc/kingdoms/lukasz/textures/Images;->sparkHeight:I

    move v10, v0

    move-object v0, v3

    move v11, v1

    move-object/from16 v1, p1

    move v12, v2

    move v2, v4

    move v3, v7

    move v4, v8

    move v7, v5

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/SparksAnimation;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget v2, v6, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->iLinesSize:I

    if-ge v1, v2, :cond_5

    iget-object v2, v6, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsX:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    iget-object v2, v6, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsX:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v0

    :goto_4
    if-ge v3, v2, :cond_3

    iget-object v4, v6, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    invoke-static {v4}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->access$000(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getPosX()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getMenuPosX()I

    move-result v8

    add-int/2addr v5, v8

    add-int v5, v5, p2

    iget-object v8, v6, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    iget-object v8, v8, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsX:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v5, v8

    int-to-float v5, v5

    iput v5, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, v6, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    invoke-static {v4}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->access$000(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->getMenuPosY()I

    move-result v5

    add-int v5, v5, v16

    iget-object v8, v6, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    iget-object v8, v8, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->lPointsY:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v5, v8

    neg-int v5, v5

    int-to-float v5, v5

    iput v5, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v3, v10, v10, v10, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v3, v6, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    invoke-static {v3}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->access$000(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    const/high16 v4, 0x40400000    # 3.0f

    sget-object v5, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v2, v3, v4, v5, v12}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    iget-object v2, v6, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->researched:Z

    if-eqz v2, :cond_4

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3eaaaaab

    const v5, 0x3e48c8c9

    const v8, 0x3ec8c8c9

    invoke-direct {v3, v8, v4, v5, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    goto :goto_5

    :cond_4
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x3ea0a0a1

    invoke-direct {v3, v4, v4, v4, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->setColor(Lcom/badlogic/gdx/graphics/Color;)F

    :goto_5
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->shapeDrawer:Lspace/earlygrey/shapedrawer/ShapeDrawer;

    iget-object v3, v6, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lines:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;

    invoke-static {v3}, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;->access$000(Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree$TechLine;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    sget-object v4, Lspace/earlygrey/shapedrawer/JoinType;->SMOOTH:Lspace/earlygrey/shapedrawer/JoinType;

    invoke-virtual {v2, v3, v11, v4, v12}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->path(Ljava/lang/Iterable;FLspace/earlygrey/shapedrawer/JoinType;Z)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_5
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v16

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public onHovered()V
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_TechnologyTree()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->lTime:J

    return-void
.end method
