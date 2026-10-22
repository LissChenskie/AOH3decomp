.class Laoc/kingdoms/lukasz/map/province/ProvinceDraw$28;
.super Ljava/lang/Object;
.source "ProvinceDraw.java"

# interfaces
.implements Laoc/kingdoms/lukasz/map/province/ProvinceDraw$DrawProvinces;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->updateDrawProvinces()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    const v3, 0x3f0ccccd    # 0.55f

    const/high16 v4, 0x437f0000    # 255.0f

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iR:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iG:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v7, v7, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v8

    invoke-static {v8}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v8

    invoke-virtual {v8}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v8

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iB:I

    int-to-float v7, v7

    div-float/2addr v7, v4

    invoke-direct {v2, v5, v6, v7, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iR:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iG:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->continents:Laoc/kingdoms/lukasz/map/map/Continents;

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/map/Continents;->lContinents:Ljava/util/List;

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v7

    invoke-static {v7}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v7

    invoke-virtual {v7}, Laoc/kingdoms/lukasz/map/province/Province;->getContinent()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/Continents$Continent;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/Continents$Continent;->iB:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    invoke-direct {v1, v2, v5, v6, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
