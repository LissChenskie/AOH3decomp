.class Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnology_Default_List$1;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;
.source "ScenarioTechnology_Default_List.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnology_Default_List;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnology_Default_List;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnology_Default_List;Ljava/lang/String;IIIIIZ)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnology_Default_List$1;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnology_Default_List;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonMain;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    const/4 v1, -0x1

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Technology:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnology_Default_List$1;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnology_Default_List;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnology_Default_List;->updateLanguage()V

    return-void
.end method

.method public updateLanguage()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Technology"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "None"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnology_Default_List$1;->setText(Ljava/lang/String;)V

    return-void
.end method
