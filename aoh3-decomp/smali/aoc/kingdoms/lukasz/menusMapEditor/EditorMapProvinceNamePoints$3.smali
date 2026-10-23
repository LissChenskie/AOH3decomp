.class Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints$3;
.super Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;
.source "EditorMapProvinceNamePoints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menusMapEditor/EditorMapProvinceNamePoints;->keyUp(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public update()V
    .locals 1

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceNamesManager;->updateDrawProvinceNames()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->updateCitiesInGame()V

    return-void
.end method
