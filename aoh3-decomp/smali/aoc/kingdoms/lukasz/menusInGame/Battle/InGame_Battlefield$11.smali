.class Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$11;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonBattleRegiment;
.source "InGame_Battlefield.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;IIIIIIIZZ)V
    .locals 11

    move-object v10, p0

    move-object v0, p1

    iput-object v0, v10, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$11;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;

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
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_PopUp(Z)V

    return-void
.end method

.method public buildElementHover()V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$11;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->firstLine:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$11;->id:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/battles/BattleRegiment;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield;->getHover(Laoc/kingdoms/lukasz/map/battles/BattleRegiment;)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_Battlefield$11;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method
