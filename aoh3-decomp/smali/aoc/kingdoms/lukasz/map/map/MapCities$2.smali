.class Laoc/kingdoms/lukasz/map/map/MapCities$2;
.super Ljava/lang/Object;
.source "MapCities.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/map/MapCities$CitiesInGame;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapCities;->updateCitiesInGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/map/map/MapCities;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/map/map/MapCities;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapCities$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapCities;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities$2;->this$0:Laoc/kingdoms/lukasz/map/map/MapCities;

    invoke-virtual {v0, p1, p2}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_InGame_NamesLow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    return-void
.end method
