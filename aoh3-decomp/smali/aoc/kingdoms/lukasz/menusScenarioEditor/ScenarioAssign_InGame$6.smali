.class Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame$6;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "ScenarioAssign_InGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame;->actionUpdateData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menusScenarioEditor/ScenarioAssign_InGame$6;->id:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->buildCivilizationsRegion(I)V

    const/4 v0, 0x1

    sput-boolean v0, Laoc/kingdoms/lukasz/jakowski/Game;->updateProvincesInView:Z

    sput-boolean v0, Laoc/kingdoms/lukasz/map/civilization/CivilizationRegionsManager;->updateRegionsInView:Z

    return-void
.end method
