.class Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$16;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;
.source "InGame_Peace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public lastValue:I

.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$16;->this$0:Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonStatsRectIMG_Bonuses;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIII)V

    const/4 v0, 0x0

    iput v0, v9, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$16;->lastValue:I

    return-void
.end method


# virtual methods
.method public getTextToDraw()Ljava/lang/String;
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$16;->lastValue:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iget v1, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold:I

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iget v1, v1, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold:I

    if-lez v1, :cond_0

    const-string v1, "+"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/PeaceTreaty;->getGold_PerDemand()F

    move-result v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$16;->setText2(Ljava/lang/String;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Player/Player;->peaceTreaty:Laoc/kingdoms/lukasz/map/PeaceTreaty;

    iget v0, v0, Laoc/kingdoms/lukasz/map/PeaceTreaty;->demandGold:I

    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$16;->lastValue:I

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Peace/InGame_Peace$16;->sText:Ljava/lang/String;

    return-object v0
.end method
