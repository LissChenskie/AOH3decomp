.class Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ$4;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Horizontal;
.source "InGame_Civ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;Ljava/lang/String;IIIIIIZ)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ$4;->this$0:Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/TextIcon2_Horizontal;-><init>(Ljava/lang/String;IIIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_CivRank()V

    return-void
.end method

.method public buildElementHover()V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    sget v1, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ;->iActiveCivID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v1

    iget v1, v1, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCivRankID:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRanking;->buildElementHover(II)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusInGame/Civ/InGame_Civ$4;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method
