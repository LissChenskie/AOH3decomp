.class Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy$14;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit3_3;
.source "InGame_RecruitArmy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;IIIIIZZ)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy$14;->this$0:Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonUnit3_3;-><init>(IIIIIZZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->getVisibleInGame_TechnologyTree()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TechnologyTree(Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_TechnologyChoose(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/map/army/ArmyManager;->lArmy:Ljava/util/ArrayList;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy$14;->getValue1()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/RecruitArmy/InGame_RecruitArmy$14;->getValue2()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;

    iget v0, v0, Laoc/kingdoms/lukasz/map/army/ArmyManager$Data_Army;->RequiredTechID:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Technology/InGame_TechnologyTree;->centerToTechID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_TechnologyTree(ZZ)V

    :goto_0
    return-void
.end method
