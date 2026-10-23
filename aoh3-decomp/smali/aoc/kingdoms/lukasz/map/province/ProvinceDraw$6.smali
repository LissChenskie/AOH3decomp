.class Laoc/kingdoms/lukasz/map/province/ProvinceDraw$6;
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
    .locals 8

    invoke-static {}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->getProvinceAlpha()F

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget v3, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    const/high16 v4, 0x437f0000    # 255.0f

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iR:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    sget-object v6, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iG:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    sget-object v7, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iB:I

    int-to-float v7, v7

    div-float/2addr v7, v4

    invoke-direct {v3, v5, v6, v7, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iR:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    sget-object v5, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iG:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    sget-object v6, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget v6, v6, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->iB:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    invoke-direct {v2, v3, v5, v6, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvinceExtra(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
