.class Laoc/kingdoms/lukasz/map/map/MapCities$6;
.super Ljava/lang/Object;
.source "MapCities.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/map/MapCities$CapitalCityName;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/map/MapCities;->updateCapitalCityName()V
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

    iput-object p1, p0, Laoc/kingdoms/lukasz/map/map/MapCities$6;->this$0:Laoc/kingdoms/lukasz/map/map/MapCities;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IFII)V
    .locals 6

    const/4 v1, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCivName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    add-int v3, p4, v0

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->capitalLeft:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p4

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p4

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    iget v0, v0, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iCapitalNameHeight:I

    sub-int/2addr p4, v0

    div-int/lit8 p4, p4, 0x2

    add-int v4, p5, p4

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p4, p4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p4

    iget-object p4, p4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p5

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p5

    invoke-virtual {p4, p5}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isImprovingRelations(I)Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p2, Lcom/badlogic/gdx/graphics/Color;

    sget-object p4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iget p4, p4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object p5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iget p5, p5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_POSITIVE:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_CAPITAL_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v5, p3

    invoke-direct {p2, p4, p5, v0, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :goto_0
    move-object v5, p2

    goto :goto_1

    :cond_0
    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget p4, p4, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p4

    iget-object p4, p4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p2

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result p2

    invoke-virtual {p4, p2}, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->isDamagingRelations(I)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/badlogic/gdx/graphics/Color;

    sget-object p4, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iget p4, p4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object p5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iget p5, p5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_NEGATIVE:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v5, p3

    invoke-direct {p2, p4, p5, v0, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/badlogic/gdx/graphics/Color;

    sget-object p4, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_CAPITAL_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget p4, p4, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object p5, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_CAPITAL_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget p5, p5, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v0, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_CAPITAL_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    sget-object v5, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_CAPITAL_NAME:Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v5, p3

    invoke-direct {p2, p4, p5, v0, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    goto :goto_0

    :goto_1
    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
