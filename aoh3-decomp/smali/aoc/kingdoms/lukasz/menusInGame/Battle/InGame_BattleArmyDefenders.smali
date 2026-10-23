.class public Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "InGame_BattleArmyDefenders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;
    }
.end annotation


# static fields
.field public static mPosX:I

.field public static mPosY:I

.field public static mWidth:I


# instance fields
.field private tRegiments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;",
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
    .locals 19

    move-object/from16 v8, p0

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v1, 0x0

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    if-ltz v2, :cond_e

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v5, v9}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v5, v9}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v8, v5, v9, v10, v11}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->addRegiment(IIII)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_3

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v5, v9}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v5, v9}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleLine;->secondLine:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v8, v5, v9, v10, v11}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->addRegiment(IIII)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v5, v9}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveFirstLine:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v8, v5, v9, v10, v11}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->addRegiment(IIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v5, v9}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleLine;->reserveSecondLine:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v8, v5, v9, v10, v11}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->addRegiment(IIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v2, v4}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v2, :cond_6

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v5, v9}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v5, v5, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->uID:I

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v9, v10}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v9

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v9, v9, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->aID:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v10, v11}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v10

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget-object v10, v10, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->aR:Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    iget v10, v10, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;->num:I

    sget-object v11, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    sget v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->battleID:I

    invoke-virtual {v11, v12}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object v11

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/Battle;->attackingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleLine;->defeated:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    iget v11, v11, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;->c:I

    invoke-virtual {v8, v5, v9, v10, v11}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->addRegiment(IIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v5, :cond_7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v9, 0x1

    const/4 v10, 0x0

    :goto_7
    if-ge v9, v5, :cond_a

    iget-object v11, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v11, v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->unitTypeID:I

    iget-object v12, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v12, v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->unitTypeID:I

    if-le v11, v12, :cond_8

    goto :goto_8

    :cond_8
    iget-object v11, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v11, v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->unitTypeID:I

    iget-object v12, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v12, v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->unitTypeID:I

    if-ne v11, v12, :cond_9

    iget-object v11, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v11, v11, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->armyID:I

    iget-object v12, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v12, v12, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->armyID:I

    if-le v11, v12, :cond_9

    :goto_8
    move v10, v9

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    :cond_a
    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_b
    const/4 v4, 0x0

    :goto_9
    const/4 v5, 0x3

    if-ge v4, v5, :cond_e

    iget-object v5, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v15, 0x0

    :goto_a
    if-ge v15, v5, :cond_d

    sget-object v9, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lUnitsTypes:Ljava/util/List;

    iget-object v10, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v10, v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->unitTypeID:I

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;

    iget v9, v9, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_UnitTypes;->Line:I

    if-ne v9, v4, :cond_c

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v10, v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->numOfUnits:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v9, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v11, v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->numOfRegiments:I

    iget-object v9, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v12, v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->iCivID:I

    iget-object v9, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v13, v9, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->unitTypeID:I

    iget-object v9, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v7, v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->armyID:I

    const/16 v17, 0x1

    move-object v9, v14

    move/from16 v16, v13

    move v13, v0

    move-object v3, v14

    move v14, v1

    move/from16 v18, v15

    move/from16 v15, v16

    move/from16 v16, v7

    invoke-direct/range {v9 .. v17}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;-><init>(Ljava/lang/String;IIIIIIZ)V

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getWidth()I

    move-result v3

    sget v7, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v3, v7

    add-int/2addr v0, v3

    goto :goto_b

    :cond_c
    move/from16 v18, v15

    :goto_b
    add-int/lit8 v15, v18, 0x1

    goto/16 :goto_a

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_9

    :cond_e
    const/4 v1, 0x0

    sget v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->mPosX:I

    sget v3, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->mPosY:I

    sget v4, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->mWidth:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->unitsFrameBattle:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmyBattle;->getStatsHeight()I

    move-result v5

    add-int/2addr v0, v5

    const/4 v5, 0x1

    add-int/2addr v5, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    iput-boolean v9, v8, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->drawScrollPositionAlways:Z

    return-void
.end method


# virtual methods
.method public addRegiment(IIII)V
    .locals 8

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v2, v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->unitTypeID:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget v2, v2, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->armyID:I

    if-ne v2, p2, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget p2, p1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->numOfUnits:I

    add-int/2addr p2, p3

    iput p2, p1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->numOfUnits:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    iget p2, p1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->numOfRegiments:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->numOfRegiments:I

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;->tRegiments:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;-><init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getMenuPosX()I
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->nTranslateX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getMenuPosY()I
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getMenuPosY()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->nTranslateY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPosX()I
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->nTranslateX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getPosY()I
    .locals 2

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->getPosY()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->nTranslateY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public onHovered()V
    .locals 1

    invoke-super {p0}, Laoc/kingdoms/lukasz/menu/Menu;->onHovered()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->setOrderOfMenu_InGameBattle()V

    return-void
.end method
