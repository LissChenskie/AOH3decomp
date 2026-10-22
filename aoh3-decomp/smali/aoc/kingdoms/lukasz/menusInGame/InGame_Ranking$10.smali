.class Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$10;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_EconomyRanking;
.source "InGame_Ranking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;Ljava/lang/String;IIIIIII)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$10;->this$0:Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_EconomyRanking;-><init>(Ljava/lang/String;IIIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menusInGame/InGame_Ranking$10;->id:I

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ_Economy;->goBackToRank:Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_Civ_Economy()V

    return-void
.end method

.method public actionElementPPM()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/menusInGame/Graph/InGame_GraphPopulation;->activeModeID:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_GraphPopulation()V

    return-void
.end method
