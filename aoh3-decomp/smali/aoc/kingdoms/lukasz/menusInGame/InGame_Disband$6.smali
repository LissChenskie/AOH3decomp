.class Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$6;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonArmy;
.source "InGame_Disband.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;Ljava/lang/String;IIIIIIII)V
    .locals 11

    move-object v10, p0

    move-object v0, p1

    iput-object v0, v10, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$6;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menu_element/button/ButtonArmy;-><init>(Ljava/lang/String;IIIIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 3

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyLeft:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->lArmyRegiment:Ljava/util/List;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$6;->getCurrent()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/army/ArmyRegiment;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->addRegiment(Laoc/kingdoms/lukasz/map/army/ArmyRegiment;)V

    sget-object v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->armyRight:Laoc/kingdoms/lukasz/map/army/ArmyDivision;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband$6;->getCurrent()I

    move-result v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/army/ArmyDivision;->removeRegiment(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_DisbandUnits()V

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/menusInGame/InGame_Disband;->lTime:J

    return-void
.end method
