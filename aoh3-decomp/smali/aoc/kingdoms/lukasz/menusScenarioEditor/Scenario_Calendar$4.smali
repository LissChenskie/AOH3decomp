.class Laoc/kingdoms/lukasz/menusScenarioEditor/Scenario_Calendar$4;
.super Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;
.source "Scenario_Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/Scenario_Calendar;-><init>(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/Scenario_Calendar;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusScenarioEditor/Scenario_Calendar;Ljava/lang/String;IIIIII)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusScenarioEditor/Scenario_Calendar$4;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/Scenario_Calendar;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_StaticBG;-><init>(Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->currentMonth:I

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/MenuManager;->rebuildScenario_Calendar()V

    return-void
.end method
