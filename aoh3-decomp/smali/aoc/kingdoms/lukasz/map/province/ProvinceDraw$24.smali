.class Laoc/kingdoms/lukasz/map/province/ProvinceDraw$24;
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
    .locals 4

    sget-boolean v0, Laoc/kingdoms/lukasz/menu/MenuManager;->mapEditorDrawProvinces:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Laoc/kingdoms/lukasz/map/province/ProvinceDraw;->drawProvinces_Standard(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;->selectedProvinces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;->selectedProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/province/Province;->getDrawProvince()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->settingsManager:Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/setting/SettingsManager;->PROVINCE_ALPHA:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/menusMapEditor/EditorSelectProvinces;->selectedProvinces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Laoc/kingdoms/lukasz/jakowski/Game;->getProvince(I)Laoc/kingdoms/lukasz/map/province/Province;

    move-result-object v1

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/map/province/Province;->drawLandProvince(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method
