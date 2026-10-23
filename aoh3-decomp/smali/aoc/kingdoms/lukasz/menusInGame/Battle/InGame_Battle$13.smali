.class Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$13;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentDefeated;
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
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;IIIIII)V
    .locals 7

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$13;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegimentDefeated;-><init>(IIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle$13;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battle;

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
