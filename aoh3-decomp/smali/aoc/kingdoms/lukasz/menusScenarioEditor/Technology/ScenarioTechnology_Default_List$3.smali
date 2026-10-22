.class Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnology_Default_List$3;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;
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
.method constructor <init>(Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnology_Default_List;IIIIZI)V
    .locals 7

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnology_Default_List$3;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnology_Default_List;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;-><init>(IIIIZI)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnology_Default_List$3;->getCurrent()I

    move-result v1

    iput v1, v0, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Technology:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnology_Default_List$3;->this$0:Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnology_Default_List;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnology_Default_List;->updateLanguage()V

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnology_Default_List$3;->getCurrent()I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditorDetails:Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapScenarios$Details;->CivDefault_Technology:I

    if-ne v0, v1, :cond_0

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->techResearched:I

    iput v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnology_Default_List$3;->btnIMG:I

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->techGray:I

    iput v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/Technology/ScenarioTechnology_Default_List$3;->btnIMG:I

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonTechnology;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method
