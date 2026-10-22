.class Laoc/kingdoms/lukasz/map/map/MapScenarios$2;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "MapScenarios.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadScenario_48()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/map/MapScenarios;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/map/MapScenarios;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapScenarios$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Laoc/kingdoms/lukasz/map/map/MapCities;->updateNameToNewTrueOwner_Civ(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
