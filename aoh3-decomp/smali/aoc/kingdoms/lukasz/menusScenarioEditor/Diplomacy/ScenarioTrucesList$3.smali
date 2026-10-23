.class Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTrucesList$3;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;
.source "ScenarioTrucesList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTrucesList;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTrucesList;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTrucesList;Ljava/lang/String;IIII)V
    .locals 6

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTrucesList$3;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTrucesList;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;-><init>(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 3

    sget v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTrucesList;->activeCivID:I

    if-lez v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTrucesList;->activeCivID2:I

    if-lez v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTrucesList;->activeCivID:I

    sget v1, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTrucesList;->activeCivID2:I

    if-eq v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioDiplomacy;->goBackTo:Laoc/kingdoms/lukasz/menu/View;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->IN_GAME:Laoc/kingdoms/lukasz/menu/View;

    if-ne v0, v1, :cond_0

    sget v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTrucesList;->activeCivID:I

    sget v1, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTrucesList;->activeCivID2:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->isAtWar(II)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTrucesList;->activeCivID:I

    sget v1, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTrucesList;->activeCivID2:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/war/WarManager;->getWarKey(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->whitePeace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTrucesList$3$1;

    const-string v1, "rebuildInGame_Wars"

    invoke-direct {v0, p0, v1}, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTrucesList$3$1;-><init>(Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTrucesList$3;Ljava/lang/String;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTrucesList;->activeCivID:I

    sget v1, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTrucesList;->activeCivID2:I

    invoke-static {v0, v1}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->addTruce(II)V

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioTrucesList;->activeCivID2:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildInGame_ScenarioEditorTruces()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Added"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->v:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "SelectCivilization"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
