.class public Laoc/kingdoms/lukasz/map/map/Map_Data;
.super Ljava/lang/Object;
.source "Map_Data.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;
    }
.end annotation


# instance fields
.field public Folder:Ljava/lang/String;

.field public Icon:Laoc/kingdoms/lukasz/textures/Image;

.field public mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->Folder:Ljava/lang/String;

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "map/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->highTextueSettings()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Config.json"

    goto :goto_0

    :cond_0
    const-string v3, "ConfigLow.json"

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    const-class v3, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    invoke-virtual {v0, v3, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    :try_start_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor:[F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor:[F

    aget v3, v3, v0

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    aput v3, v1, v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor_ZoomIn:[F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor_ZoomIn:[F

    aget v3, v3, v0

    div-float/2addr v3, v4

    aput v3, v1, v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor_ZoomOut:[F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->BackgroundColor_ZoomOut:[F

    aget v3, v3, v0

    div-float/2addr v3, v4

    aput v3, v1, v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->WastelandColor:[F

    iget-object v3, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->mapData:Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/Map_Data$MapData;->WastelandColor:[F

    aget v3, v3, v0

    div-float/2addr v3, v4

    aput v3, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    new-instance v0, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "/icon.png"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p1

    invoke-direct {v0, p1}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/Map_Data;->Icon:Laoc/kingdoms/lukasz/textures/Image;

    return-void
.end method
