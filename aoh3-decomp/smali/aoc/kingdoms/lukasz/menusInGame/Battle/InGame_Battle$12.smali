.class Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$12;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegiment;
.source "InGame_Battle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;IIIIIIIZZ)V
    .locals 11

    move-object v10, p0

    move-object v0, p1

    iput-object v0, v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$12;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegiment;-><init>(IIIIIIIZZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$12;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;->updateAnimationStatus()V

    return-void
.end method

.method public getBattleRegiment(II)Laoc/kingdoms/lukasz/map/battles/BattleRegiment;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->battleManager:Laoc/kingdoms/lukasz/map/battles/BattleManager;

    invoke-virtual {v0, p1}, Laoc/kingdoms/lukasz/map/battles/BattleManager;->getBattle(I)Laoc/kingdoms/lukasz/map/battles/Battle;

    move-result-object p1

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/battles/Battle;->defendingArmy:Laoc/kingdoms/lukasz/map/battles/BattleLine;

    iget-object p1, p1, Laoc/kingdoms/lukasz/map/battles/BattleLine;->firstLine:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    return-object p1
.end method
