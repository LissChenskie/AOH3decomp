.class public Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_Battle.java"


# static fields
.field public static final ANIMATION_TIME:I = 0x3c

.field public static HOVER_POSX:I = 0x0

.field public static HOVER_POSY:I = 0x0

.field public static TURN_ID:I = 0x0

.field public static battleID:I = 0x0

.field public static battlePosY:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static enableAnimation:Z = true

.field public static iDayWidth:I = 0x0

.field public static iProvinceID:I = 0x0

.field public static key:Ljava/lang/String; = ""

.field public static lTime:J

.field public static nTranslateX:I

.field public static nTranslateY:I

.field public static offsetAttY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static offsetDefY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static sDay:Ljava/lang/String;


# instance fields
.field public bottomY:I

.field public regimentElementID:I

.field public topY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battlePosY:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetDefY:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetAttY:Ljava/util/List;

    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->TURN_ID:I

    const-string v0, ""

    sput-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->sDay:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 31

    move-object/from16 v14, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput v15, v14, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->regimentElementID:I

    iput v15, v14, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->topY:I

    iput v15, v14, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->bottomY:I

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title630:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->title630:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v12, v1, v2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleOver:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v11

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v1, 0x2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v17, v1, 0x3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattleID(Ljava/lang/String;)I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->TURN_ID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    if-ltz v1, :cond_17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    sub-int/2addr v2, v3

    const/4 v10, 0x1

    sub-int/2addr v2, v10

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getNumOfDates_ByTurnID(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->roundID:I

    const-string v9, ""

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    sget-object v3, Lcom/badlogic/gdx/assets/loaders/Wkvw/PZBvyl;->XOKKeYSKmRheXRa:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v4, "ArmyDeployment"

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v9

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->sDay:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->sDay:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iDayWidth:I

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetDefY:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v15

    :goto_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v1, v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetDefY:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetAttY:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battlePosY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v15

    :goto_2
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v1, :cond_4

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v2, v2, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    if-le v1, v2, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battlePosY:Ljava/util/List;

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMiddleHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMiddleHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    int-to-float v4, v4

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battlePosY:Ljava/util/List;

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMiddleHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMiddleHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v4

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v4, v6}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v4, v4, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    int-to-float v4, v4

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v6, v6, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    sub-float/2addr v3, v4

    neg-float v3, v3

    mul-float/2addr v5, v3

    add-float/2addr v2, v5

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battlePosY:Ljava/util/List;

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMiddleHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_4
    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$1;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    const/4 v5, 0x1

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v3, v17

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$1;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;IIIZ)V

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$2;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v0, v16, v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->generalFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2;->getStatsHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v7, v0, v1

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v4, v17

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$2;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;IIIII)V

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v18, v17, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    const-string v8, "NoGeneral"

    if-nez v0, :cond_5

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$3;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    invoke-virtual {v0, v8}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    const/4 v6, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v4, v18

    move/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$3;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;IIIZ)V

    invoke-interface {v13, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move/from16 v26, v11

    move/from16 v19, v12

    move-object v15, v13

    goto/16 :goto_4

    :cond_5
    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$4;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->n:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getAttack()I

    move-result v4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getDefense()I

    move-result v5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->g:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->d:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v10, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->m:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v15, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v15}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v15, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->y:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    move/from16 v20, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->sI:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    move-object/from16 v21, v1

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getCombatExperience()I

    move-result v22

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v23, v6

    move/from16 v6, v18

    move-object v14, v7

    move/from16 v7, v16

    move-object/from16 v24, v8

    move/from16 v8, v23

    move-object/from16 v25, v9

    move/from16 v9, v20

    move/from16 v26, v11

    move v11, v15

    move v15, v12

    move-object/from16 v12, v21

    move/from16 v19, v15

    move-object v15, v13

    move/from16 v13, v22

    invoke-direct/range {v0 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$4;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;IIIIIIIIILjava/lang/String;I)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/4 v14, 0x1

    sub-int/2addr v0, v14

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v8, v18, v0

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$5;

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v13, v25

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->diceRollGeneral:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->dice:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->generalFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2;->getStatsHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v8

    move/from16 v5, v16

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$5;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;IIIII)V

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$6;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->fMorale:F

    const/high16 v18, 0x42c80000    # 100.0f

    mul-float v1, v1, v18

    invoke-static {v1, v14}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "%"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->morale:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v16, v16, v0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->generalFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2;->getStatsHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int v5, v16, v0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->generalFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2;->getStatsHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$6;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;IIIII)V

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v14

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v14

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v11, v0, v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_6

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$7;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Attackers"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ":"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x32

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v7, v0, v1

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v4, v17

    move v5, v11

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$7;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;Ljava/util/List;IIII)V

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v14

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    add-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    add-int v6, v17, v0

    mul-int/lit8 v2, v17, 0x2

    sub-int v16, v19, v2

    sub-int v8, v16, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v9, v0, v2

    const/4 v0, 0x0

    move-object v2, v1

    move v7, v11

    move-object/from16 v27, v10

    move v10, v0

    invoke-direct/range {v2 .. v10}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v14

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    add-int/2addr v0, v11

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    move-object/from16 v10, p0

    iput v0, v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->topY:I

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v14

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    add-int/2addr v11, v0

    div-int/lit8 v20, v19, 0x2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    add-int/2addr v1, v14

    mul-int/2addr v1, v14

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v20, v0

    add-int/2addr v0, v14

    move v9, v0

    const/4 v8, 0x0

    :goto_6
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_8

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$8;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getImageRegimentID(I)I

    move-result v3

    const/16 v21, 0x0

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v6, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->AttackRange:I

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move v4, v9

    move v5, v11

    move/from16 v25, v6

    move v6, v8

    move-object v14, v7

    move/from16 v7, v21

    move/from16 v21, v8

    move/from16 v8, v25

    move/from16 v28, v9

    move/from16 v9, v22

    move-object/from16 v22, v12

    move-object v12, v10

    move/from16 v10, v23

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$8;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;IIIIIIIZZ)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v2, v28

    goto :goto_7

    :cond_7
    move/from16 v21, v8

    move/from16 v28, v9

    move-object/from16 v22, v12

    move-object v12, v10

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$9;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy2:I

    move/from16 v2, v28

    invoke-direct {v0, v12, v1, v2, v11}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$9;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;III)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    add-int v9, v2, v0

    add-int/lit8 v8, v21, 0x1

    move-object v10, v12

    move-object/from16 v12, v22

    const/4 v14, 0x1

    goto/16 :goto_6

    :cond_8
    move-object/from16 v22, v12

    move-object v12, v10

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v20, v0

    add-int/2addr v0, v2

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v11, v1

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->regimentElementID:I

    move v14, v0

    const/4 v10, 0x0

    :goto_8
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_d

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v0, :cond_a

    new-instance v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$10;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getImageRegimentID(I)I

    move-result v3

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->enableAnimation:Z

    if-eqz v0, :cond_9

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetAttY:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v7, v0

    goto :goto_9

    :cond_9
    const/4 v7, 0x0

    :goto_9
    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v8, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->AttackRange:I

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object v0, v9

    move-object/from16 v1, p0

    move v4, v14

    move v5, v11

    move v6, v10

    move-object/from16 v25, v13

    move-object v13, v9

    move/from16 v9, v21

    move v12, v10

    move/from16 v10, v23

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$10;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;IIIIIIIZZ)V

    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_a
    move v12, v10

    move-object/from16 v25, v13

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$11;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getImageRegimentID(I)I

    move-result v3

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->enableAnimation:Z

    if-eqz v0, :cond_b

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetAttY:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v7, v0

    goto :goto_a

    :cond_b
    const/4 v7, 0x0

    :goto_a
    move-object v0, v8

    move-object/from16 v1, p0

    move v4, v14

    move v5, v11

    move v6, v12

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$11;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;IIIIII)V

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_c
    move v12, v10

    move-object/from16 v25, v13

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-direct {v0, v1, v14, v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;-><init>(III)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    add-int/2addr v14, v0

    add-int/lit8 v10, v12, 0x1

    move-object/from16 v12, p0

    move-object/from16 v13, v25

    goto/16 :goto_8

    :cond_d
    move-object/from16 v25, v13

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v20, v0

    add-int/2addr v0, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMiddleHeight()I

    move-result v1

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v1, v2

    add-int/2addr v11, v1

    move v12, v0

    const/4 v13, 0x0

    :goto_c
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_12

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    if-lez v0, :cond_f

    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$12;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getImageRegimentID(I)I

    move-result v3

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->enableAnimation:Z

    if-eqz v0, :cond_e

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetDefY:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v7, v0

    goto :goto_d

    :cond_e
    const/4 v7, 0x0

    :goto_d
    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v8, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->AttackRange:I

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, v14

    move-object/from16 v1, p0

    move v4, v12

    move v5, v11

    move v6, v13

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$12;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;IIIIIIIZZ)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_f
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$13;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getImageRegimentID(I)I

    move-result v3

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->enableAnimation:Z

    if-eqz v0, :cond_10

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetDefY:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v7, v0

    goto :goto_e

    :cond_10
    const/4 v7, 0x0

    :goto_e
    move-object v0, v8

    move-object/from16 v1, p0

    move v4, v12

    move v5, v11

    move v6, v13

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$13;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;IIIIII)V

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_11
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-direct {v0, v1, v12, v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentEmpty;-><init>(III)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_f
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_c

    :cond_12
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int v20, v20, v0

    add-int/lit8 v20, v20, 0x1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    add-int/2addr v11, v0

    move/from16 v12, v20

    const/4 v13, 0x0

    :goto_10
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_14

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    new-instance v14, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$14;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getImageRegimentID(I)I

    move-result v3

    const/4 v7, 0x0

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v8, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->AttackRange:I

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object v0, v14

    move-object/from16 v1, p0

    move v4, v12

    move v5, v11

    move v6, v13

    invoke-direct/range {v0 .. v10}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$14;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;IIIIIIIZZ)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v14, p0

    goto :goto_11

    :cond_13
    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$15;

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->battleArmy2:I

    move-object/from16 v14, p0

    invoke-direct {v0, v14, v1, v12, v11}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$15;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;III)V

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_11
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_10

    :cond_14
    const/4 v1, 0x1

    move-object/from16 v14, p0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    add-int/2addr v11, v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_15

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_15
    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$16;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Defenders"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v6, 0x32

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v7, v0, v1

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v4, v17

    move v5, v11

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$16;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;Ljava/util/List;IIII)V

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    new-instance v10, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v13, v25

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnitsOnBattlefield:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->inReserve:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v5, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v4

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v4, v4, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCasualties:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iRetreated:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    add-int v5, v17, v0

    sub-int v7, v16, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v8, v0, v1

    const/4 v9, 0x1

    move-object v1, v10

    move v6, v11

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextFlagsCasualties;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIZ)V

    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v0, v11, v0

    iput v0, v14, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->bottomY:I

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v16, v11, v0

    new-instance v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$17;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    const/4 v5, 0x1

    move-object v0, v6

    move-object/from16 v1, p0

    move/from16 v3, v17

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$17;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;IIIZ)V

    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$18;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->getNumberWithSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->IMG_MANPOWER:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v0, v16, v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    add-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->generalFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2;->getStatsHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->flagOverDefault:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int v7, v0, v1

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v4, v17

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$18;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;IIIII)V

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v20, v17, v0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    if-nez v0, :cond_16

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$19;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    const/4 v6, 0x0

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v4, v20

    move/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$19;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;IIIZ)V

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v30, v13

    move-object/from16 v29, v22

    goto/16 :goto_13

    :cond_16
    new-instance v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$20;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v2, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->n:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->iCivID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getAttack()I

    move-result v4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getDefense()I

    move-result v5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v8, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->g:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v9, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->d:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v10, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->m:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget v11, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->y:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    iget-object v7, v0, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->sI:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v0

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/BattleLine;->armyGeneral:Laoc/kingdoms/lukasz/map/army/ArmyGeneral;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/army/ArmyGeneral;->getCombatExperience()I

    move-result v21

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v6, v20

    move-object/from16 v23, v7

    move/from16 v7, v16

    move-object v14, v12

    move-object/from16 v29, v22

    move-object/from16 v12, v23

    move-object/from16 v30, v13

    move/from16 v13, v21

    invoke-direct/range {v0 .. v13}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$20;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;IIIIIIIIILjava/lang/String;I)V

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_13
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v20, v20, v0

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$21;

    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->diceRollGeneral:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->dice:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->generalFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2;->getStatsHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v4, v20

    move/from16 v5, v16

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$21;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;IIIII)V

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$22;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->fMorale:F

    mul-float v1, v1, v18

    const/4 v2, 0x1

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->morale:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v0, v16, v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->generalFrameBattle:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2;->getStatsHeight()I

    move-result v4

    add-int/2addr v1, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v6

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->generalFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyGeneral2;->getStatsHeight()I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v4, v20

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$22;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;IIIII)V

    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v20, v20, v0

    sput v20, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy;->mPosX:I

    sput v16, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy;->mPosY:I

    sub-int v12, v19, v20

    sub-int v12, v12, v17

    sput v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy;->mWidth:I

    sput v20, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->mPosX:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->mPosY:I

    sput v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->mWidth:I

    goto :goto_14

    :cond_17
    move/from16 v26, v11

    move/from16 v19, v12

    move-object v15, v13

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->activeArmySize:I

    if-lez v0, :cond_18

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$23;

    const-string v1, "rebuildInGame_ProvinceArmy"

    move-object/from16 v9, p0

    invoke-direct {v0, v9, v1}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$23;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    goto :goto_15

    :cond_18
    :goto_14
    move-object/from16 v9, p0

    :goto_15
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_16
    if-ge v1, v0, :cond_1a

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v3

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_19

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getPosY()I

    move-result v2

    invoke-interface {v15, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_1a
    move/from16 v1, v26

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int v11, v0, v10

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy;->mPosY:I

    add-int/2addr v0, v11

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy;->mPosY:I

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->mPosY:I

    add-int/2addr v0, v11

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->mPosY:I

    const/4 v0, 0x0

    add-int v1, v0, v19

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    sput v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->HOVER_POSX:I

    sput v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->HOVER_POSY:I

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    move/from16 v12, v19

    invoke-direct {v1, v0, v0, v12, v10}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v13, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$24;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BattleOf"

    invoke-virtual {v0, v2, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/battles/Battle;->getDefendersProvinceBonuses(I)I

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v3, "Defense"

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": +"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/map/battles/Battle;->getDefendersProvinceBonuses(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_1b
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->terrains:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/terrain/Terrain;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/terrain/Terrain;->Name:Ljava/lang/String;

    :goto_17
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Laoc/kingdoms/lukasz/textures/Images;->title630:I

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v7

    sget v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iProvinceID:I

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$24;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;Ljava/lang/String;ZZIII)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move v3, v11

    move v4, v12

    move v5, v10

    move-object v6, v15

    invoke-virtual/range {v0 .. v8}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;ZZ)V

    return-void
.end method

.method public static getImageRegimentID(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget p0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    return p0

    :cond_0
    sget p0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy2:I

    return p0

    :cond_1
    sget p0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy1:I

    return p0
.end method

.method public static getMiddleHeight()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleArmy0:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
.end method


# virtual methods
.method public actionCloseMenu()V
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->actionCloseMenu()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_Battle(Z)V

    return-void
.end method

.method public battleFull()V
    .locals 0

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v15, p1

    sget-wide v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->lTime:J

    const-wide/16 v2, 0x3c

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    sub-int v0, p2, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_WIDTH:I

    int-to-float v1, v1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->lTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->lTime:J

    sub-long/2addr v4, v7

    long-to-float v4, v4

    div-float/2addr v4, v3

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    float-to-int v1, v1

    add-int v1, p3, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->BATTLE_SOUND_2:Z

    if-eqz v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v3, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_BATTLE2:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getSoundsVolumeMaster()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    goto :goto_0

    :cond_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    sget v3, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->SOUND_BATTLE:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->soundsManager:Laoc/kingdoms/lukasz/jakowski/SoundsManager;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->getSoundsVolumeMaster()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/SoundsManager;->playSound(IF)V

    :goto_0
    move/from16 v16, v0

    move/from16 v17, v1

    goto :goto_1

    :cond_1
    move/from16 v16, p2

    move/from16 v17, p3

    :goto_1
    sput v16, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->nTranslateX:I

    sput v17, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->nTranslateY:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosX()I

    move-result v0

    add-int v0, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosY()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v1, v1, v17

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getWidth()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getTitle()Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v4

    invoke-static {v15, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosX()I

    move-result v0

    add-int v8, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosY()I

    move-result v0

    add-int v9, v0, v17

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getWidth()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    add-int v10, v0, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v11, v0, v1

    const/4 v12, 0x0

    sget v13, Laoc/kingdoms/lukasz/textures/Images;->insideTop630:I

    sget v14, Laoc/kingdoms/lukasz/textures/Images;->insideBot630:I

    move-object/from16 v7, p1

    invoke-static/range {v7 .. v14}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawMenusBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZII)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->terrainManager:Laoc/kingdoms/lukasz/map/terrain/TerrainManager;

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->iProvinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/terrain/TerrainManager;->getBattleTerrain(I)I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosX()I

    move-result v1

    add-int v1, v1, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->battleOver:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    add-int v2, v2, v17

    invoke-virtual {v0, v15, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3eb33333    # 0.35f

    const/4 v5, 0x0

    invoke-direct {v0, v5, v5, v5, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosX()I

    move-result v0

    add-int v9, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosY()I

    move-result v0

    add-int v10, v0, v17

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getWidth()I

    move-result v11

    iget v12, v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->topY:I

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosX()I

    move-result v1

    add-int v2, v1, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosY()I

    move-result v1

    iget v3, v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->bottomY:I

    add-int/2addr v1, v3

    add-int v3, v1, v17

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getHeight()I

    move-result v1

    iget v7, v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->bottomY:I

    sub-int v7, v1, v7

    move-object/from16 v1, p1

    move v8, v5

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v8, v8, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosX()I

    move-result v0

    add-int v9, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosY()I

    move-result v0

    iget v1, v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->topY:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v10, v0, v17

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getWidth()I

    move-result v11

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v12, v0, 0x2

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v14}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosX()I

    move-result v1

    add-int v2, v1, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosY()I

    move-result v1

    iget v3, v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->bottomY:I

    add-int/2addr v1, v3

    add-int v3, v1, v17

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v1, 0x2

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosX()I

    move-result v0

    add-int v0, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosY()I

    move-result v1

    iget v2, v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->bottomY:I

    add-int/2addr v1, v2

    add-int v1, v1, v17

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getWidth()I

    move-result v2

    invoke-static {v15, v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosX()I

    move-result v0

    add-int v0, v0, v16

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getPosY()I

    move-result v1

    iget v2, v6, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->topY:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    add-int v1, v1, v17

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getWidth()I

    move-result v2

    invoke-static {v15, v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawLine(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->enableAnimation:Z

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->drawAnimation()V

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-super/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->TURN_ID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-eq v0, v1, :cond_3

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->TURN_ID:I

    new-instance v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$25;

    const-string v1, "rebuildBattleView"

    invoke-direct {v0, v6, v1}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$25;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_3
    return-void
.end method

.method public final drawAnimation()V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v1, :cond_4

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetAttY:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetAttY:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battlePosY:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-le v3, v4, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    move v3, v6

    :goto_1
    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetDefY:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetDefY:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMiddleHeight()I

    move-result v4

    sget-object v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battlePosY:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v4, v7

    if-le v3, v4, :cond_1

    move v5, v6

    :cond_1
    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->regimentElementID:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getCurrent()I

    move-result v1

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battlePosY:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->regimentElementID:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetAttY:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    :cond_2
    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->regimentElementID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getCurrent()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMiddleHeight()I

    move-result v2

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battlePosY:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_3

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->regimentElementID:I

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v1

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetDefY:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public onHovered()V
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameBattle()V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->lTime:J

    :cond_0
    invoke-super {p0, p1}, Laoc/kingdoms/lukasz/menu/Menu;->setVisible(Z)V

    return-void
.end method

.method public updateAnimationStatus()V
    .locals 4

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->enableAnimation:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->enableAnimation:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v2, :cond_1

    iget v2, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->regimentElementID:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    iget v2, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->regimentElementID:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->getMenuElement(I)Laoc/kingdoms/lukasz/menu_element/MenuElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->setCurrent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetDefY:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->offsetAttY:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
