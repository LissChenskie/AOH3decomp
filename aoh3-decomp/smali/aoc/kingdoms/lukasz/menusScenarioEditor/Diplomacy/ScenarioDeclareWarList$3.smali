.class Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioDeclareWarList$3;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame;
.source "ScenarioDeclareWarList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioDeclareWarList;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioDeclareWarList;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioDeclareWarList;Ljava/lang/String;IIII)V
    .locals 6

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioDeclareWarList$3;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioDeclareWarList;

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
    .locals 4

    sget v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioDeclareWarList;->activeCivID:I

    if-lez v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioDeclareWarList;->activeCivID2:I

    if-lez v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioDeclareWarList;->activeCivID:I

    sget v1, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioDeclareWarList;->activeCivID2:I

    if-eq v0, v1, :cond_0

    sget v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioDeclareWarList;->activeCivID:I

    sget v1, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioDeclareWarList;->activeCivID2:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Laoc/kingdoms/lukasz/map/diplomacy/DiplomacyManager;->declareWar(IIZLjava/util/List;)Z

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioDeclareWarList;->activeCivID2:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "War"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->war:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menusScenarioEditor/Diplomacy/ScenarioDiplomacy;->goBackTo:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    goto :goto_0

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "SelectCivilization"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
