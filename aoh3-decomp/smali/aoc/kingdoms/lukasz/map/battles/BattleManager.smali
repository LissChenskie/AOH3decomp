.class public Laoc/kingdoms/lukasz/map/battles/BattleManager;
.super Ljava/lang/Object;
.source "BattleManager.java"


# static fields
.field private static ANIMATION_TIME:J = 0x0L

.field private static final ANIMATION_TIMER:J = 0x6eL

.field public static BATTLE_IMG_ID:I = 0x0

.field public static final BUTTON_PADDING:I = 0x1

.field public static FILL_ORDER:[I

.field private static imgStepID:I

.field private static reversedAnimation:Z


# instance fields
.field public iBattleSize:I

.field public lBattle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/battles/Battle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    new-array v1, v1, [I

    sput-object v1, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    move v1, v0

    :goto_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v3, v1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x2

    move v1, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    if-ge v0, v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/map/battles/BattleManager;->FILL_ORDER:[I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v1, 0x1

    sub-int/2addr v3, v1

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x2

    move v1, v4

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final drawBattles(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3

    invoke-direct {p0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->updateBattleIcon()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iput v0, v2, Laoc/kingdoms/lukasz/map/province/Province;->iBattlesInProvince:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    :try_start_1
    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->FOG_OF_WAR:Z

    if-eqz v1, :cond_2

    :goto_1
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getFogDrawArmy()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Laoc/kingdoms/lukasz/map/battles/Battle;->drawBattle_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Laoc/kingdoms/lukasz/map/battles/Battle;->drawBattle_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_1
    :cond_3
    return-void
.end method

.method public static getBattleWidth(I)I
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MAX_BATTLE_WIDTH:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->battle:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Battle;->BATTLE_MIN_BATTLE_WIDTH:I

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p0

    iget-object p0, p0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->civBonuses:Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;

    iget p0, p0, Laoc/kingdoms/lukasz/map/civilization/CivilizationBonuses;->BattleWidth:I

    add-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private final updateBattleIcon()V
    .locals 4

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v2, 0x6e

    sub-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/map/battles/BattleManager;->ANIMATION_TIME:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->ANIMATION_TIME:J

    sget-boolean v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->reversedAnimation:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->imgStepID:I

    sub-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->imgStepID:I

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->imgStepID:I

    sput-boolean v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->reversedAnimation:Z

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->imgStepID:I

    add-int/2addr v0, v1

    sput v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->imgStepID:I

    const/4 v2, 0x7

    if-lt v0, v2, :cond_1

    sput v2, Laoc/kingdoms/lukasz/map/battles/BattleManager;->imgStepID:I

    sput-boolean v1, Laoc/kingdoms/lukasz/map/battles/BattleManager;->reversedAnimation:Z

    :cond_1
    :goto_0
    sget v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->imgStepID:I

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleIcon0:I

    sput v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->BATTLE_IMG_ID:I

    goto :goto_1

    :cond_2
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleIcon1:I

    sput v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->BATTLE_IMG_ID:I

    goto :goto_1

    :cond_3
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleIcon2:I

    sput v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->BATTLE_IMG_ID:I

    goto :goto_1

    :cond_4
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleIcon3:I

    sput v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->BATTLE_IMG_ID:I

    goto :goto_1

    :cond_5
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleIcon4:I

    sput v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->BATTLE_IMG_ID:I

    goto :goto_1

    :cond_6
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->battleIcon5:I

    sput v0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->BATTLE_IMG_ID:I

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public final addBattle(Laoc/kingdoms/lukasz/map/battles/Battle;)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->BATTLE_START_MIN_REGIMENTS_RANDOM:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    iget v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    iget v4, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    sub-int/2addr v4, v2

    invoke-virtual {v3, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->numOfUnits:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->BATTLE_START_MIN_REGIMENTS:I

    add-int/2addr v4, v0

    mul-int/2addr v3, v4

    if-gt v1, v3, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    sub-int/2addr v0, v2

    iget p1, p1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->battleStarted_1(II)V

    goto/16 :goto_0

    :cond_0
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->BATTLE_START_MIN_REGIMENTS_2:I

    add-int/2addr v4, v0

    mul-int/2addr v3, v4

    if-gt v1, v3, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    sub-int/2addr v0, v2

    iget p1, p1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v0, p1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->battleStarted_2(II)V

    goto/16 :goto_0

    :cond_1
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->BATTLE_START_MOVE_ARMIES_RANDOM_CHANCE:I

    const/4 v5, 0x5

    if-ge v3, v4, :cond_2

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    sub-int/2addr v0, v2

    iget p1, p1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, p1, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->battleStarted(III)V

    goto :goto_0

    :cond_2
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->BATTLE_START_MIN_REGIMENTS_3:I

    add-int/2addr v4, v0

    mul-int/2addr v3, v4

    if-gt v1, v3, :cond_3

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    sub-int/2addr v0, v2

    iget p1, p1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    const/4 v1, 0x3

    invoke-static {v0, p1, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->battleStarted(III)V

    goto :goto_0

    :cond_3
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->BATTLE_START_MIN_REGIMENTS_4:I

    add-int/2addr v4, v0

    mul-int/2addr v3, v4

    if-gt v1, v3, :cond_4

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    sub-int/2addr v0, v2

    iget p1, p1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    const/4 v1, 0x4

    invoke-static {v0, p1, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->battleStarted(III)V

    goto :goto_0

    :cond_4
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->REGIMENT_SIZE:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->aiValuesArmies:Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/AI/Values/AI_ValuesArmies;->BATTLE_START_MIN_REGIMENTS_5:I

    add-int/2addr v0, v4

    mul-int/2addr v3, v0

    if-gt v1, v3, :cond_5

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    sub-int/2addr v0, v2

    iget p1, p1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-static {v0, p1, v5}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->battleStarted(III)V

    goto :goto_0

    :cond_5
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    sub-int/2addr v0, v2

    iget p1, p1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    const/4 v1, 0x6

    invoke-static {v0, p1, v1}, Laoc/kingdoms/lukasz/jakowski/AI/Army/AI_BattleStart;->battleStarted(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public clearData()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_ARMY_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    invoke-direct {p0, p1, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->drawBattles(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapTouchManager:Laoc/kingdoms/lukasz/map/map/MapTouchManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/map/MapTouchManager;->selectMode:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->drawBattles(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawHideAnimation:Z

    if-eqz v0, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_MIN_SCALE_ANIMATION:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_ARMY_ALPHA:F

    invoke-direct {p0, p1, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->drawBattles(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getArmyBattleKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    if-ne v1, p1, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v1

    invoke-virtual {v1, p2}, Laoc/kingdoms/lukasz/map/battles/Battle;->isInBattle(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/battles/Battle;

    return-object p1
.end method

.method public getBattle(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/battles/Battle;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/battles/Battle;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getBattleID(ILjava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getBattleID(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getBattleSize()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    return v0
.end method

.method public final getJakowskiLine()V
    .locals 0

    return-void
.end method

.method public isArmyInBattle(ILjava/lang/String;)Z
    .locals 3

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    invoke-virtual {v2, p2}, Laoc/kingdoms/lukasz/map/battles/Battle;->isInBattle(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isBattleInProvince(I)Z
    .locals 3

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final joinBattle(ILaoc/kingdoms/lukasz/map/army/ArmyDivision;I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    if-ne v1, p1, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v1, p3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->isInBattleCiv(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->iMaxBattleWidth:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-virtual {v1, p2, v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->joinBattle(Laoc/kingdoms/lukasz/map/army/ArmyDivision;ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    invoke-virtual {v1, p3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->isInBattleCiv(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->iMaxBattleWidth:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-virtual {v1, p2, v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->joinBattle(Laoc/kingdoms/lukasz/map/army/ArmyDivision;ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->isInBattleCiv(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->iMaxBattleWidth:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-virtual {v1, p2, v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->joinBattle(Laoc/kingdoms/lukasz/map/army/ArmyDivision;ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget v2, p2, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->civID:I

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->isInBattleCiv(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->iMaxBattleWidth:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-virtual {v1, p2, v2, v3}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->joinBattle(Laoc/kingdoms/lukasz/map/army/ArmyDivision;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public final removeBattle(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateAllArmiesNotInBattle(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    :try_start_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->provinceID:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->updateAllArmiesNotInBattle(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    :try_start_2
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->removeCivsInBattle(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_2
    :try_start_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/battles/BattleLine;->removeCivsInBattle(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_3
    :try_start_4
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method public stopAllBattles_PeaceTreaty(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    :try_start_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/battles/Battle;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/battles/BattleLine;->lCivs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v3}, Laoc/kingdoms/lukasz/map/war/WarManager;->getWarKey(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/Battle;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/map/battles/Battle;->updateBattle_Summary(Z)V

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->lBattle:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Laoc/kingdoms/lukasz/map/battles/BattleManager;->iBattleSize:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
