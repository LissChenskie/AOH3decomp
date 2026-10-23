.class public Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy$BattleStatsRegiments;
.super Ljava/lang/Object;
.source "InGame_BattleArmy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BattleStatsRegiments"
.end annotation


# instance fields
.field public armyID:I

.field public iCivID:I

.field public numOfRegiments:I

.field public numOfUnits:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy;

.field public unitTypeID:I


# direct methods
.method public constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy;IIII)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy$BattleStatsRegiments;->this$0:Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy$BattleStatsRegiments;->unitTypeID:I

    iput p3, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy$BattleStatsRegiments;->armyID:I

    iput p4, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy$BattleStatsRegiments;->numOfUnits:I

    const/4 p1, 0x1

    iput p1, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy$BattleStatsRegiments;->numOfRegiments:I

    iput p5, p0, Laoc/kingdoms/lukasz/menusInGame/Battle/InGame_BattleArmy$BattleStatsRegiments;->iCivID:I

    return-void
.end method
