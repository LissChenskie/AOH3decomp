.class Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioNonAggressionList$4;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv;
.source "ScenarioNonAggressionList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioNonAggressionList;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioNonAggressionList;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioNonAggressionList;Ljava/lang/String;IIIIIII)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioNonAggressionList$4;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioNonAggressionList;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG_ID_FlagCiv;-><init>(Ljava/lang/String;IIIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 3

    sget v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioNonAggressionList;->activeCivID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioNonAggressionList$4;->getCurrent()I

    move-result v1

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->removeNonAggressionPact(II)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ScenarioEditorNonAggression()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Removed"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->v:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    return-void
.end method
