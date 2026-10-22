.class Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList$3;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style_Value;
.source "ScenarioCreateAlliance_AlliancesList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;Ljava/lang/String;IIIIIZI)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList$3;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonGame_Style_Value;-><init>(Ljava/lang/String;IIIIIZI)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioCreateAlliance_AlliancesList$3;->getCurrent()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->removeAllianceSpecial(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v1, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_CREATE_ALLIANCE:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    return-void
.end method
