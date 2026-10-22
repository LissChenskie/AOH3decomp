.class public Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData;
.super Ljava/lang/Object;
.source "ExportData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;,
        Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;,
        Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final Save_Save_ProvinceData_3M()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;-><init>()V

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->iX:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->iY:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getTerrainID()I

    move-result v4

    iput v4, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->terrainID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v4

    iput v4, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->resourceID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    iput v4, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->baseDevelopment:F

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "P3M.json"

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static final Save_Save_ProvinceData_Images()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/FBO/idYW/HjHDSSkYG;->AWfVjHzvbOTTti:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "provinces/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;-><init>()V

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->iX:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->iY:I

    iput v2, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->imgID:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "P_IMG.json"

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static final Save_Save_ProvinceData_ScenarioCivs()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;-><init>()V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v4, v5

    iput v4, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->iX:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v3

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v4, v4, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v3, v4

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->iY:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->sTag:Ljava/lang/String;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    iput v3, v2, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->numOfProvinces:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "P_SCEN.json"

    invoke-interface {v2, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static final Save_Save_ProvinceData_ScenarioCivsAssign()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;-><init>()V

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->iX:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->iY:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivTag()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->sTag:Ljava/lang/String;

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    iput v4, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->numOfProvinces:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "P_SCEN_ASSI.json"

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static final Save_Save_ProvinceData_Wonders()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget v3, Laoc/kingdoms/lukasz/map/WondersManager;->wondersSize:I

    if-ge v2, v3, :cond_0

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;

    invoke-direct {v3}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;-><init>()V

    sget-object v4, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v4, v4, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->ProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/City;->getPosX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->iX:I

    sget-object v4, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v4, v4, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->ProvinceID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/City;->getPosY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    div-int/2addr v4, v5

    iput v4, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->iY:I

    sget-object v4, Laoc/kingdoms/lukasz/map/WondersManager;->wonders:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;

    iget v4, v4, Laoc/kingdoms/lukasz/map/WondersManager$Wonders;->ProvinceID:I

    iput v4, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->imgID:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v4, "P_WOND.json"

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Json;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static final loadSave_ProvinceData_3M()V
    .locals 7

    :try_start_0
    const-string v0, "P3M.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/JsonValue;

    const-class v4, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;

    iget v4, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->iX:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v4, v5

    iget v5, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->iY:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v5, v6

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getResourceID()I

    move-result v5

    if-ltz v5, :cond_1

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    const/16 v6, 0x19

    if-ge v5, v6, :cond_0

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v6, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->terrainID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->setTerrainID(I)V

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v6, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->resourceID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->setResourceID(I)V

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->baseDevelopment:F

    iput v3, v4, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    goto :goto_0

    :cond_1
    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v6, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->terrainID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->setTerrainID(I)V

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    iget v6, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->resourceID:I

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/map/province/Province;->setResourceID(I)V

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_3M;->baseDevelopment:F

    iput v3, v4, Laoc/kingdoms/lukasz/map/province/Province;->BaseDevelopment:F

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static final loadSave_ProvinceData_Images()V
    .locals 7

    :try_start_0
    const-string v0, "P_IMG.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/JsonValue;

    const-class v4, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;

    iget v4, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->iX:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v4, v5

    iget v5, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->iY:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v5, v6

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->imgID:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".png -----> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static final loadSave_ProvinceData_ScenarioCivs()V
    .locals 13

    :try_start_0
    const-string v0, "P_SCEN.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->createScenario()V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    const/4 v3, 0x1

    iput-boolean v3, v2, Laoc/kingdoms/lukasz/map/map/MapBG;->requestToDisposeMinimap:Z

    const/4 v2, 0x0

    sput v2, Laoc/kingdoms/lukasz/jakowski/CFG;->iCreateScenario_AssignProvinces_Civ:I

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/map/MapScenarios;->loadReligions_JustBuild(Z)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScenarios:Laoc/kingdoms/lukasz/map/map/MapScenarios;

    iput-boolean v2, v3, Laoc/kingdoms/lukasz/map/map/MapScenarios;->scenarioEditor_isCampaign:Z

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v3, Laoc/kingdoms/lukasz/menu/View;->SCENARIO_WASTELAND_CONTINENTS:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/JsonValue;

    const-class v4, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;

    iget v4, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->iX:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v4, v5

    iget v5, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->iY:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v5, v6

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NOT ADDED: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->sTag:Ljava/lang/String;

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->getCiv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v6, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->sTag:Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Laoc/kingdoms/lukasz/jakowski/Game;->addCivilization(Ljava/lang/String;IZZZZZ)Z

    goto :goto_0

    :cond_1
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lCivs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sput v1, Laoc/kingdoms/lukasz/jakowski/Game;->iCivsSize:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static final loadSave_ProvinceData_ScenarioCivs_Assign()V
    .locals 7

    :try_start_0
    const-string v0, "P_SCEN_ASSI.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/JsonValue;

    const-class v4, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;

    iget v4, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->iX:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v4, v5

    iget v5, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->iY:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v5, v6

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v5

    if-gtz v5, :cond_0

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_ScenarioCivs;->sTag:Ljava/lang/String;

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivID(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setCivID_RemoveOldAddNewToCiv(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static final loadSave_ProvinceData_Wonders()V
    .locals 7

    :try_start_0
    const-string v0, "P_WOND.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/JsonValue;

    const-class v4, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;

    iget v4, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->iX:I

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v4, v5

    iget v5, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->iY:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v5, v6

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/Game;->setProvinceID_Point(II)I

    move-result v4

    if-ltz v4, :cond_0

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getSeaProvince()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Old prov: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/SaveLoad/ExportData$Save_ProvinceData_Images;->imgID:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " -----> New: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->LOG(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
