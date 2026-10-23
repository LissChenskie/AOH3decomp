.class public Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;
.super Ljava/lang/Object;
.source "InGame_BattleArmyDefenders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BattleStatsRegiments"
.end annotation


# instance fields
.field armyID:I

.field iCivID:I

.field numOfRegiments:I

.field numOfUnits:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;

.field unitTypeID:I


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;IIII)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->unitTypeID:I

    iput p3, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->armyID:I

    iput p4, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->numOfUnits:I

    const/4 p1, 0x1

    iput p1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->numOfRegiments:I

    iput p5, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmyDefenders$BattleStatsRegiments;->iCivID:I

    return-void
.end method
