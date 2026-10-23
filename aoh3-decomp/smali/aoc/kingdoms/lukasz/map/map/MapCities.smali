.class public Laoc/kingdoms/lukasz/map/map/MapCities;
.super Ljava/lang/Object;
.source "MapCities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;,
        Laoc/kingdoms/lukasz/map/map/MapCities$CitiesInGame;,
        Laoc/kingdoms/lukasz/map/map/MapCities$CapitalCityName;,
        Laoc/kingdoms/lukasz/map/map/MapCities$Config;,
        Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;
    }
.end annotation


# static fields
.field public static final ACTIVE_CITIES_ANIMATION_TIME:I = 0x226

.field public static COLOR_CITY_CAPITAL_NAME:Lcom/badlogic/gdx/graphics/Color; = null

.field public static COLOR_CITY_NAME:Lcom/badlogic/gdx/graphics/Color; = null

.field public static final FONT_ID:I = 0x4

.field public static final HOVERED_CITIES_ANIMATION_TIME:I = 0x7d0

.field public static citiesScaleGrowthRate:F

.field public static lTIME_ACTIVE_CITIES:J

.field public static lTIME_HOVERED_CITIES:J


# instance fields
.field public capitalCityName:Laoc/kingdoms/lukasz/map/map/MapCities$CapitalCityName;

.field public citiesInGame:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesInGame;

.field public citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

.field public imageCity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public imageCityFort:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f69e9ea

    const v2, 0x3f266666    # 0.65f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_NAME:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f6bebec

    const v2, 0x3f59999a    # 0.85f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/map/map/MapCities;->COLOR_CITY_CAPITAL_NAME:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesScaleGrowthRate:F

    const-wide/16 v0, 0x0

    sput-wide v0, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    sput-wide v0, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapCities$1;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapCities$1;-><init>(Laoc/kingdoms/lukasz/map/map/MapCities;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesInGame:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesInGame;

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapCities$5;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapCities$5;-><init>(Laoc/kingdoms/lukasz/map/map/MapCities;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->capitalCityName:Laoc/kingdoms/lukasz/map/map/MapCities$CapitalCityName;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapCities;->readSettings()V

    return-void
.end method

.method private final drawCities_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .locals 11

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    mul-float/2addr v0, p3

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v8, v8, p3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CITIES_FONT_SCALE:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapCities;->updateCitiesScale_CurrentScale()V

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v10, v2, :cond_1

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawCities()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, v0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v9, v2, :cond_3

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawCities()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, v0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_5

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    const-wide/16 v6, 0x226

    sub-long v6, v2, v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-wide v4, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    sub-long v6, v2, v4

    long-to-float v6, v6

    const v7, 0x44098000    # 550.0f

    div-float/2addr v6, v7

    mul-float/2addr v6, p3

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v2, v7

    mul-float v7, p3, v2

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move v5, v6

    move v6, v7

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto :goto_2

    :cond_4
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p3

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_5
    :goto_2
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v0, :cond_7

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-eq v0, v2, :cond_7

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    const-wide/16 v6, 0x7d0

    sub-long v6, v2, v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-wide v4, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    sub-long v6, v2, v4

    long-to-float v6, v6

    const/high16 v7, 0x44fa0000    # 2000.0f

    div-float/2addr v6, v7

    mul-float/2addr v6, p3

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v2, v7

    mul-float/2addr p3, v2

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move v5, v6

    move v6, p3

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto :goto_3

    :cond_6
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p3

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_7
    :goto_3
    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method

.method private final drawCities_Just_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .locals 11

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    mul-float/2addr v0, p3

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v8, v8, p3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CITIES_FONT_SCALE:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapCities;->updateCitiesScale_CurrentScale()V

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v10, v2, :cond_1

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawCities()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, v0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v9, v2, :cond_3

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawCities()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, v0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_5

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    const-wide/16 v6, 0x226

    sub-long v6, v2, v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-wide v4, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    sub-long v6, v2, v4

    long-to-float v6, v6

    const v7, 0x44098000    # 550.0f

    div-float/2addr v6, v7

    mul-float/2addr v6, p3

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v2, v7

    mul-float v7, p3, v2

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move v5, v6

    move v6, v7

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto :goto_2

    :cond_4
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p3

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_5
    :goto_2
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v0, :cond_7

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-eq v0, v2, :cond_7

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    const-wide/16 v6, 0x7d0

    sub-long v6, v2, v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-wide v4, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    sub-long v6, v2, v4

    long-to-float v6, v6

    const/high16 v7, 0x44fa0000    # 2000.0f

    div-float/2addr v6, v7

    mul-float/2addr v6, p3

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v2, v7

    mul-float/2addr p3, v2

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move v5, v6

    move v6, p3

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto :goto_3

    :cond_6
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p3

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_7
    :goto_3
    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method

.method private final drawCities_Just_InGame_NamesLow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .locals 11

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    mul-float/2addr v0, p3

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v1, v8, v8, v8, p3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->CITIES_FONT_SCALE:F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapCities;->updateCitiesScale_CurrentScale()V

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v10, v2, :cond_1

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawCities()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, v0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame_NamesLow_OnlyName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v9, v2, :cond_3

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawCities()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, v0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame_NamesLow_OnlyName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-ltz v0, :cond_5

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    const-wide/16 v6, 0x226

    sub-long v6, v2, v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-wide v4, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_ACTIVE_CITIES:J

    sub-long v6, v2, v4

    long-to-float v6, v6

    const v7, 0x44098000    # 550.0f

    div-float/2addr v6, v7

    mul-float/2addr v6, p3

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v2, v7

    mul-float v7, p3, v2

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move v5, v6

    move v6, v7

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame_NamesLow_OnlyName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto :goto_2

    :cond_4
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p3

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame_NamesLow_OnlyName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_5
    :goto_2
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    if-ltz v0, :cond_7

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->iActiveProvince:I

    if-eq v0, v2, :cond_7

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    sget-wide v4, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    const-wide/16 v6, 0x7d0

    sub-long v6, v2, v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_6

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    sget-wide v4, Laoc/kingdoms/lukasz/map/map/MapCities;->lTIME_HOVERED_CITIES:J

    sub-long v6, v2, v4

    long-to-float v6, v6

    const/high16 v7, 0x44fa0000    # 2000.0f

    div-float/2addr v6, v7

    mul-float/2addr v6, p3

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v2, v7

    mul-float/2addr p3, v2

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move v5, v6

    move v6, p3

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame_NamesLow_OnlyName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    goto :goto_3

    :cond_6
    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v0

    if-eqz v0, :cond_7

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game;->iHoveredProvinceID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p3

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame_NamesLow_OnlyName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FFFF)V

    :cond_7
    :goto_3
    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method

.method private final readCities(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/map/MapCities$Config;
    .locals 4

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v1, Laoc/kingdoms/lukasz/map/map/MapCities$Config;

    const-string v2, "cities"

    const-class v3, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-class v1, Laoc/kingdoms/lukasz/map/map/MapCities$Config;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "map/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "cities/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    const-string v2, "UTF8"

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/map/map/MapCities$Config;

    return-object p1
.end method


# virtual methods
.method public final buildCities()V
    .locals 9

    const-string v0, "cities.json"

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->readCities(Ljava/lang/String;)Laoc/kingdoms/lukasz/map/map/MapCities$Config;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapCities$Config;->cities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_3

    move v5, v3

    :goto_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getMinX()I

    move-result v6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->x:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v7, v8

    if-gt v6, v7, :cond_1

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxX()I

    move-result v6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->x:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v7, v8

    if-lt v6, v7, :cond_1

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getMinY()I

    move-result v6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->y:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v7, v8

    if-gt v6, v7, :cond_1

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getMaxY()I

    move-result v6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->y:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v7, v8

    if-lt v6, v7, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    iget v6, v6, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->x:I

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v6, v7

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    iget v7, v7, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->y:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v8, v8, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v7, v8

    invoke-static {v5, v6, v7}, Laoc/kingdoms/lukasz/jakowski/Game;->pathContains(III)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    iput v5, v6, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->p:I

    goto :goto_3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveManager;->getJson()Lcom/badlogic/gdx/utils/Json;

    move-result-object v2

    const-class v4, Laoc/kingdoms/lukasz/map/map/MapCities$Config;

    const-string v5, "cities"

    const-class v6, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    invoke-virtual {v2, v4, v5, v6}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "map/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cities/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Json;->prettyPrint(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/files/FileHandle;->writeString(Ljava/lang/String;Z)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const-string v1, "Cities Generated!"

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->technology2:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const-string v1, "Cities Generation Error!"

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->technology2:I

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToastGold(Ljava/lang/String;I)V

    return-void
.end method

.method public final buildProvinceNames()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v2

    if-lez v2, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceName(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final drawCities(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CITIES_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    invoke-direct {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawCitiesHideAnimation:Z

    if-eqz v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    invoke-direct {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    :cond_1
    :goto_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_FLAGS:I

    if-lez v0, :cond_5

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_FLAGS:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    goto :goto_1

    :cond_2
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceNamesHideAnimation:Z

    if-eqz v0, :cond_5

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    goto :goto_1

    :cond_3
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_CivFlagName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    goto :goto_1

    :cond_4
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceNamesHideAnimation:Z

    if-eqz v0, :cond_5

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_CivFlagName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    :cond_5
    :goto_1
    return-void
.end method

.method public final drawCities_HighAllTheTime(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CITIES_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    invoke-direct {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawCitiesHideAnimation:Z

    if-eqz v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    invoke-direct {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    :cond_1
    :goto_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_CivFlagName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    goto :goto_1

    :cond_2
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceNamesHideAnimation:Z

    if-eqz v0, :cond_3

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_CivFlagName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final drawCities_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CITIES_MIN_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    invoke-direct {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawCitiesHideAnimation:Z

    if-eqz v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_CITIES_ALPHA:F

    invoke-direct {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    :cond_1
    :goto_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    goto :goto_1

    :cond_2
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceNamesHideAnimation:Z

    if-eqz v0, :cond_3

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final drawCities_InGame_NamesLow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    invoke-direct {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_NamesLow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawCitiesHideAnimation:Z

    if-eqz v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    invoke-direct {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_NamesLow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    :cond_1
    :goto_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->DRAW_CIV_NAMES_START_DRAWING_MAP_SCALE:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    goto :goto_1

    :cond_2
    sget-boolean v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->drawProvinceNamesHideAnimation:Z

    if-eqz v0, :cond_3

    sget v0, Laoc/kingdoms/lukasz/map/province/ProvinceDrawArmy;->DRAW_PROVINCE_NAMES_ALPHA:F

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->drawCities_Just_InGame_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final drawCities_Just_InGame_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .locals 4

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_FLAGS:I

    if-lez v0, :cond_6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->iAtWarSize:I

    if-ge v1, v2, :cond_1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->diplomacy:Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/diplomacy/Diplomacy;->atWar:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame_CivFlagWar(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_1
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_3

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    iget-boolean v2, v2, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v2, :cond_2

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_5

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    iget-boolean v1, v1, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v1, :cond_4

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame_CivFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_6
    return-void
.end method

.method public final drawCities_Just_InGame_CivFlagName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v2, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_PROVINCES_IN_VIEW:I

    if-ge v1, v2, :cond_1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawCities()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvinceInViewID(I)I

    move-result v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame_CivFlagName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/Game;->NUM_OF_EXTRA_PROVINCES_IN_VIEW:I

    if-ge v0, v1, :cond_3

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawCities()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game;->getExtraProvinceInViewID(I)I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Laoc/kingdoms/lukasz/map/province/Province;->drawCities_InGame_CivFlagName(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public final getProvinceCityTitle(I)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getCivID()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/map/province/Province;->isCapital:Z

    if-eqz v0, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "CapitalCity"

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->GROWTH_RATE_MAJOR_CITY:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "MajorCity"

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->GROWTH_RATE_CITY:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "City"

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->GROWTH_RATE_TOWN:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "Town"

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/province/Province;->getGrowthRateWithBonuses()F

    move-result p1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->growthRate:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_GrowthRate;->GROWTH_RATE_VILLAGE:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_5

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "Village"

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v0, "SmallVillage"

    invoke-virtual {p1, v0}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final loadCities()V
    .locals 11

    const-string v0, "cities/cities.json"

    const-string v1, "map/"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    new-instance v3, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v4, Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/utils/JsonValue;

    const-class v6, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    invoke-virtual {v3, v6, v5}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;

    iget v6, v5, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->p:I

    if-ltz v6, :cond_0

    iget v6, v5, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->p:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v7

    if-ge v6, v7, :cond_0

    iget v6, v5, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->p:I

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    new-instance v7, Laoc/kingdoms/lukasz/map/map/City;

    iget-object v8, v5, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->Name:Ljava/lang/String;

    iget v9, v5, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->x:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v9, v10

    iget v5, v5, Laoc/kingdoms/lukasz/map/map/MapCities$GameCity;->y:I

    sget-object v10, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    iget v10, v10, Laoc/kingdoms/lukasz/map/map/MapBG;->iMapScale:I

    mul-int/2addr v5, v10

    invoke-direct {v7, v8, v9, v5, v2}, Laoc/kingdoms/lukasz/map/map/City;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v6, v7}, Laoc/kingdoms/lukasz/map/province/Province;->addCity(Laoc/kingdoms/lukasz/map/map/City;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    :goto_1
    :try_start_1
    const-string v3, "game/random/RandomProvinceNames.txt"

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v4

    array-length v5, v3

    rem-int v5, v2, v5

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Laoc/kingdoms/lukasz/map/province/Province;->setProvinceName(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_1
    move-exception v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_3
    if-eqz v0, :cond_4

    :try_start_2
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapCities;->buildCities()V

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->map:Laoc/kingdoms/lukasz/map/map/Map;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/Map;->getFile_ActiveMap_Path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cities/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "build_cities.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/map/map/MapCities;->buildCities()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final loadCitiesImages()V
    .locals 6

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->isDesktop()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/GameValues;->value:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue;->MOBILE_LOAD_CITIES_2:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    const-string v1, "gfx/cities/0.png"

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    const-string v1, "gfx/cities/fort/0.png"

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget v2, v2, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->numOfCitiesImages:I

    const-string v3, ".png"

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCity:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "gfx/cities/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->numOfCitiesImages:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->imageCityFort:Ljava/util/List;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "gfx/cities/fort/"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->loadImage(Ljava/lang/String;)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public final readSettings()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->highTextureSettings:Z

    if-eqz v1, :cond_0

    const-string v1, "Config.json"

    goto :goto_0

    :cond_0
    const-string v1, "ConfigLow.json"

    :goto_0
    const-string v2, "gfx/cities/"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    const-class v2, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Lcom/badlogic/gdx/files/FileHandle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v1, v0, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale:[F

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, v0, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale_CurrentScale:[F

    return-void
.end method

.method public final updateCapitalCityName()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY_IMPROVE_RELATIONS:I

    if-eq v0, v1, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v0, v0, Laoc/kingdoms/lukasz/map/map/MapModeManager;->iActiveMapModeID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapModes:Laoc/kingdoms/lukasz/map/map/MapModeManager;

    iget v1, v1, Laoc/kingdoms/lukasz/map/map/MapModeManager;->MODE_DIPLOMACY_DAMAGE_RELATIONS:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapCities$7;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapCities$7;-><init>(Laoc/kingdoms/lukasz/map/map/MapCities;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->capitalCityName:Laoc/kingdoms/lukasz/map/map/MapCities$CapitalCityName;

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapCities$6;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapCities$6;-><init>(Laoc/kingdoms/lukasz/map/map/MapCities;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->capitalCityName:Laoc/kingdoms/lukasz/map/map/MapCities$CapitalCityName;

    :goto_1
    return-void
.end method

.method public final updateCities()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvincesSize()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v2

    invoke-virtual {v2, v0}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawCities(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getCivsSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/map/map/MapCities;->updateCities(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final updateCities(I)V
    .locals 10

    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v0

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PERCENTAGE_OF_CITIES_ON_MAP:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    :goto_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v6

    if-ge v4, v6, :cond_1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6, v2}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawCities(Z)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->isOccupied()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    invoke-virtual {v6, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v6

    invoke-static {v6}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v6

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    move v8, v2

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_3

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v9

    invoke-virtual {v9}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v9

    if-ge v5, v9, :cond_2

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/province/Province;->getPopulationTotal()I

    move-result v5

    move v8, v7

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawCities(Z)V

    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result v0

    if-ltz v0, :cond_5

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getCapitalProvinceID()I

    move-result p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object p1

    invoke-virtual {p1, v3}, Laoc/kingdoms/lukasz/map/province/Province;->setDrawCities(Z)V

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public final updateCitiesInGame()V
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_CITIES:Z

    if-eqz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->SETTINGS_PROVINCE_NAMES:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapCities$2;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapCities$2;-><init>(Laoc/kingdoms/lukasz/map/map/MapCities;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesInGame:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesInGame;

    goto :goto_0

    :cond_0
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapCities$3;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapCities$3;-><init>(Laoc/kingdoms/lukasz/map/map/MapCities;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesInGame:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesInGame;

    goto :goto_0

    :cond_1
    new-instance v0, Laoc/kingdoms/lukasz/map/map/MapCities$4;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/map/map/MapCities$4;-><init>(Laoc/kingdoms/lukasz/map/map/MapCities;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesInGame:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesInGame;

    :goto_0
    return-void
.end method

.method public final updateCitiesScale_CurrentScale()V
    .locals 4

    iget-object v0, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale_CurrentScale:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale_CurrentScale:[F

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapCities:Laoc/kingdoms/lukasz/map/map/MapCities;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapCities;->citiesSettings:Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/map/MapCities$CitiesSettings;->citiesScale:[F

    aget v2, v2, v0

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/map/MapScale;->getCurrentScale()F

    move-result v3

    mul-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateNameToNewTrueOwner(IZ)V
    .locals 0

    return-void
.end method

.method public final updateNameToNewTrueOwner_Civ(IZ)V
    .locals 8

    const-string v0, "="

    const-string v1, ".txt"

    const-string v2, "game/cities/"

    const-string v3, "game/rulersRandom/link/"

    if-eqz p1, :cond_8

    :try_start_0
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v4, 0x0

    sget-object v4, Laoc/kingdoms/lukasz/menu/FQy/TGqtTWl;->TVSIwprfgzoBXL:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Laoc/kingdoms/lukasz/map/RulersManager;->groups:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    iget v7, v7, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/map/RulersManager;->groups:Ljava/util/List;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v4

    iget v4, v4, Laoc/kingdoms/lukasz/map/civilization/Civilization;->iGroupID:I

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v2

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v6

    iget-object v6, v6, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/civilization/Civilization;->realTag:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getNumOfProvinces()I

    move-result v3

    if-ge v2, v3, :cond_8

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/map/province/Province;->getCitiesSize()I

    move-result v3

    if-lez v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-static {v5}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v5

    invoke-virtual {v5, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v5

    iget-object v5, v5, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_5

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/map/City;->sCityName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    add-int/2addr v5, v6

    const/16 v7, 0xa

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v6

    if-gez v5, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    :cond_4
    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadUpdate:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

    new-instance v6, Laoc/kingdoms/lukasz/map/map/MapCities$8;

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-direct {v6, p0, v3, v7}, Laoc/kingdoms/lukasz/map/map/MapCities$8;-><init>(Laoc/kingdoms/lukasz/map/map/MapCities;Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->addSimpleTask_First(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    :try_start_1
    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v3

    invoke-virtual {v3, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v3

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v3

    invoke-virtual {v3, v1}, Laoc/kingdoms/lukasz/map/province/Province;->getCity(I)Laoc/kingdoms/lukasz/map/map/City;

    move-result-object v3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v5

    invoke-virtual {v5, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v5

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/map/map/City;->setCityNameOriginal(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->gameThreadUpdate:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;

    new-instance v5, Laoc/kingdoms/lukasz/map/map/MapCities$9;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCityName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Game;->getCiv(I)Laoc/kingdoms/lukasz/map/civilization/Civilization;

    move-result-object v7

    invoke-virtual {v7, v2}, Laoc/kingdoms/lukasz/map/civilization/Civilization;->getProvinceID(I)I

    move-result v7

    invoke-direct {v5, p0, v6, v7}, Laoc/kingdoms/lukasz/map/map/MapCities$9;-><init>(Laoc/kingdoms/lukasz/map/map/MapCities;Ljava/lang/String;I)V

    invoke-virtual {v3, v5}, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread_Update;->addSimpleTask_First(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    return-void
.end method
