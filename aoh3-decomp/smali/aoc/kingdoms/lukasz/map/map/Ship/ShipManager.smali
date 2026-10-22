.class public Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;
.super Ljava/lang/Object;
.source "ShipManager.java"


# static fields
.field public static limitOfShipsAtSea:I

.field public static shipImg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;>;"
        }
    .end annotation
.end field

.field public static shipLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;",
            ">;"
        }
    .end annotation
.end field

.field public static shipLinesSize:I

.field public static ships:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/map/map/Ship/Ship2;",
            ">;"
        }
    .end annotation
.end field

.field public static shipsAtSea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static shipsAtSeaSize:I

.field public static shipsInPort:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static shipsInPortSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLinesSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipImg:Ljava/util/List;

    sput v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->limitOfShipsAtSea:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    sput v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSeaSize:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPort:Ljava/util/List;

    sput v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPortSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addShipAtSea()V
    .locals 3

    sget v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPortSize:I

    if-lez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPortSize:I

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;

    const/4 v2, 0x0

    iput-boolean v2, v1, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->remove:Z

    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSeaSize:I

    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPortSize:I

    :cond_0
    return-void
.end method

.method public static final addShipLine(Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;)V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    sput p0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLinesSize:I

    return-void
.end method

.method public static final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SHIPS_ON_MAP:I

    if-lez v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->PAUSE_MOVE_SHIPS:Z

    if-nez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->update()V

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->SHIP_GROUP:I

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSeaSize:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_5

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->PAUSE_MOVE_SHIPS:Z

    if-nez v2, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    if-eqz v2, :cond_3

    :cond_2
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->update()V

    :cond_3
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->remove:Z

    if-eqz v2, :cond_4

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPort:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSeaSize:I

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPortSize:I

    goto :goto_1

    :cond_4
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;

    invoke-virtual {v2, p0, v0}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method public static final drawCurrentScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 4

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SHIPS_ON_MAP:I

    if-lez v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->PAUSE_MOVE_SHIPS:Z

    if-nez v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->update()V

    :cond_1
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameAges:Laoc/kingdoms/lukasz/jakowski/Game_Ages;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages;->lAges:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->CURRENT_AGEID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/Game_Ages$Data_Ages;->SHIP_GROUP:I

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSeaSize:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_5

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->PAUSE_MOVE_SHIPS:Z

    if-nez v2, :cond_2

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    if-eqz v2, :cond_3

    :cond_2
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->update()V

    :cond_3
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->remove:Z

    if-eqz v2, :cond_4

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPort:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSeaSize:I

    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPortSize:I

    goto :goto_1

    :cond_4
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    sget-object v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSea:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;

    invoke-virtual {v2, p0, v0}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;->drawCurrentScale(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_5
    return-void
.end method

.method public static final loadShipLines()V
    .locals 11

    const-string v0, ";"

    const-string v1, "data/Lines_Sea.txt"

    const-string v2, "map/"

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v2, Lcom/google/android/gms/common/internal/constants/oyIG/kfGnwGN;->WGeF:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    array-length v2, v1

    if-lez v2, :cond_2

    aget-object v2, v1, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_2

    aget-object v4, v1, v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    aget-object v5, v1, v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    invoke-direct {v6}, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;-><init>()V

    move v7, v3

    :goto_1
    array-length v8, v4

    if-ge v7, v8, :cond_1

    aget-object v8, v4, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sget-object v9, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v9, v9, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v8, v9

    aget-object v9, v5, v7

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v9, v10

    invoke-virtual {v6, v8, v9}, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->addNewPoint_Just(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->buildData()V

    invoke-static {v6}, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->addShipLine(Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    move v0, v3

    :goto_3
    :try_start_3
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_AGES:I

    if-ge v0, v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    :goto_4
    sget-object v4, Laoc/kingdoms/lukasz/jakowski/GameValues;->ships:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;

    iget v4, v4, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Ships;->SHIP_IMAGES:I

    if-ge v2, v4, :cond_3

    new-instance v4, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gfx/map/ship_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadTexture(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v5

    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-direct {v4, v5, v6, v7}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    sget-object v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipImg:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    sget v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLinesSize:I

    if-ge v3, v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->ships:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;

    invoke-direct {v1, v3}, Laoc/kingdoms/lukasz/map/map/Ship/Ship2;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    sget-object v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPort:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsInPortSize:I

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->updateLimitOfShipsAtSea()V

    return-void
.end method

.method public static final loadShipLines_Provinces()V
    .locals 7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLinesSize:I

    if-ge v2, v3, :cond_6

    move v3, v1

    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    if-gt v4, v5, :cond_0

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    if-lt v4, v5, :cond_0

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    if-gt v4, v5, :cond_0

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    if-lt v4, v5, :cond_0

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    invoke-static {v3, v4, v5}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iput v3, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    goto/16 :goto_2

    :cond_0
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    add-int/2addr v5, v0

    if-gt v4, v5, :cond_1

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    add-int/2addr v5, v0

    if-lt v4, v5, :cond_1

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    if-gt v4, v5, :cond_1

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    if-lt v4, v5, :cond_1

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    add-int/2addr v4, v0

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    invoke-static {v3, v4, v5}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iput v3, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    goto/16 :goto_2

    :cond_1
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    sub-int/2addr v5, v0

    if-gt v4, v5, :cond_2

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    sub-int/2addr v5, v0

    if-lt v4, v5, :cond_2

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    if-gt v4, v5, :cond_2

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    if-lt v4, v5, :cond_2

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    sub-int/2addr v4, v0

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    invoke-static {v3, v4, v5}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iput v3, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    goto/16 :goto_2

    :cond_2
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    if-gt v4, v5, :cond_3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    if-lt v4, v5, :cond_3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    add-int/2addr v5, v0

    if-gt v4, v5, :cond_3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    add-int/2addr v5, v0

    if-lt v4, v5, :cond_3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v3, v4, v5}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iput v3, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    goto/16 :goto_2

    :cond_3
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    if-gt v4, v5, :cond_4

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    if-lt v4, v5, :cond_4

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    sub-int/2addr v5, v0

    if-gt v4, v5, :cond_4

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    sub-int/2addr v5, v0

    if-lt v4, v5, :cond_4

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v3, v4, v5}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iput v3, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->fromProvinceID:I

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_6
    move v2, v1

    :goto_3
    sget v3, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLinesSize:I

    if-ge v2, v3, :cond_d

    move v3, v1

    :goto_4
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v4

    if-ge v3, v4, :cond_c

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    if-gt v4, v5, :cond_7

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    if-lt v4, v5, :cond_7

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    if-gt v4, v5, :cond_7

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    if-lt v4, v5, :cond_7

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    invoke-static {v3, v4, v5}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iput v3, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    goto/16 :goto_5

    :cond_7
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    add-int/2addr v5, v0

    if-gt v4, v5, :cond_8

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    add-int/2addr v5, v0

    if-lt v4, v5, :cond_8

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    if-gt v4, v5, :cond_8

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    if-lt v4, v5, :cond_8

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    add-int/2addr v4, v0

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    invoke-static {v3, v4, v5}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v4

    if-eqz v4, :cond_8

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iput v3, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    goto/16 :goto_5

    :cond_8
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    sub-int/2addr v5, v0

    if-gt v4, v5, :cond_9

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    sub-int/2addr v5, v0

    if-lt v4, v5, :cond_9

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    if-gt v4, v5, :cond_9

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    if-lt v4, v5, :cond_9

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    sub-int/2addr v4, v0

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    invoke-static {v3, v4, v5}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iput v3, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    goto/16 :goto_5

    :cond_9
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    if-gt v4, v5, :cond_a

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    if-lt v4, v5, :cond_a

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    add-int/2addr v5, v0

    if-gt v4, v5, :cond_a

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    add-int/2addr v5, v0

    if-lt v4, v5, :cond_a

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v3, v4, v5}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iput v3, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    goto/16 :goto_5

    :cond_a
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    if-gt v4, v5, :cond_b

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v5

    if-lt v4, v5, :cond_b

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    sub-int/2addr v5, v0

    if-gt v4, v5, :cond_b

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    sub-int/2addr v5, v0

    if-lt v4, v5, :cond_b

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v4, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosX()I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->points:Ljava/util/List;

    sget-object v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->pointsSize:I

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/jakowski/zOther/Point_XY;->getPosY()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-static {v3, v4, v5}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;

    iput v3, v4, Laoc/kingdoms/lukasz/map/map/Ship/ShipLine;->toProvinceID:I

    goto :goto_5

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :cond_c
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_d
    return-void
.end method

.method public static final update()V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipsAtSeaSize:I

    sget v1, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->limitOfShipsAtSea:I

    if-ge v0, v1, :cond_0

    invoke-static {}, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->addShipAtSea()V

    :cond_0
    return-void
.end method

.method public static final updateLimitOfShipsAtSea()V
    .locals 3

    sget v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLinesSize:I

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SHIPS_ON_MAP:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->shipLinesSize:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    sput v0, Laoc/kingdoms/lukasz/map/map/Ship/ShipManager;->limitOfShipsAtSea:I

    return-void
.end method
