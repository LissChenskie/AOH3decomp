.class public Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "EditorMap_PrintMap.java"


# static fields
.field public static goBack:Laoc/kingdoms/lukasz/menu/View;

.field public static scale:F


# instance fields
.field public error:Z

.field public iMapPosX:I

.field public iMapPosY:I

.field public id:I

.field public pixBIG:Lcom/badlogic/gdx/graphics/Pixmap;

.field public prepare:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->EDITOR_MAPS_EDIT:Laoc/kingdoms/lukasz/menu/View;

    sput-object v0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->goBack:Laoc/kingdoms/lukasz/menu/View;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosY:I

    iput v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->id:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->error:Z

    iput v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->prepare:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    const/4 v9, 0x1

    invoke-direct {v1, v9, v9, v9, v9}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosY:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v8, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->scale:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sget v3, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->scale:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    sget-object v3, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->pixBIG:Lcom/badlogic/gdx/graphics/Pixmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-boolean v9, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->error:Z

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const-string v1, "MAP SIZE TOO BIG"

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    :goto_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapScale:Laoc/kingdoms/lukasz/map/map/MapScale;

    const/high16 v1, 0x3f800000    # 1.0f

    sget v2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->scale:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapScale;->setCurrentScale(F)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosX:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget v1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosY:I

    invoke-virtual {v0, v1}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    return-void
.end method

.method public static flipPixmap(Lcom/badlogic/gdx/graphics/Pixmap;)Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 7

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    new-instance v2, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_0

    sub-int v6, v1, v5

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v4, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 0

    const-string p2, "PRINTED_MAP/out"

    iget p3, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->prepare:I

    add-int/lit8 p4, p3, 0x1

    iput p4, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->prepare:I

    const/16 p4, 0xd

    if-ge p3, p4, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean p3, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->error:Z

    if-eqz p3, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object p2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->goBack:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->saveScenarioMinimapPreviewTexture(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    iget p1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosX:I

    int-to-float p1, p1

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float p3, p3

    sget p4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->scale:F

    mul-float/2addr p3, p4

    sub-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosX:I

    neg-int p1, p1

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result p3

    if-lt p1, p3, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosX:I

    iget p1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosY:I

    int-to-float p1, p1

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float p3, p3

    sget p4, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->scale:F

    mul-float/2addr p3, p4

    sub-float/2addr p1, p3

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosY:I

    neg-int p1, p1

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result p3

    if-lt p1, p3, :cond_2

    :try_start_0
    new-instance p1, Laoc/kingdoms/lukasz/textures/Image;

    new-instance p3, Lcom/badlogic/gdx/graphics/Texture;

    iget-object p4, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->pixBIG:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {p3, p4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {p1, p3}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 p4, 0x3e8

    invoke-virtual {p2, p4}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    add-int/2addr p2, p4

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ".png"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/FileManager;->getSaveType(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p2

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p3

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object p3

    invoke-interface {p3}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->dispose()V

    iget-object p1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->pixBIG:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    const/4 p1, 0x0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->pixBIG:Lcom/badlogic/gdx/graphics/Pixmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    const-string p2, "ERROR"

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast_Error(Ljava/lang/String;)V

    :goto_0
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string p3, "Saved"

    invoke-virtual {p2, p3}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/menu/MenuManager;->addToast(Ljava/lang/String;)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object p2, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->goBack:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewIDWithoutAnimation(Laoc/kingdoms/lukasz/menu/View;)V

    :cond_2
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget p2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosX:I

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosX(I)V

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->mapCoords:Laoc/kingdoms/lukasz/map/map/MapCoords;

    iget p2, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosY:I

    invoke-virtual {p1, p2}, Laoc/kingdoms/lukasz/map/map/MapCoords;->setNewPosY(I)V

    :goto_1
    return-void
.end method

.method public drawPixmapBIG(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 10

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    int-to-float v4, v3

    :try_start_0
    iget v5, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosX:I

    int-to-float v5, v5

    sget v6, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->scale:F

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    add-float/2addr v4, v5

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/map/map/MapBG;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sget v6, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->scale:F

    div-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_0

    int-to-float v5, v4

    iget v6, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosY:I

    int-to-float v6, v6

    sget v7, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->scale:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v5, v6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->mapBG:Laoc/kingdoms/lukasz/map/map/MapBG;

    invoke-virtual {v6}, Laoc/kingdoms/lukasz/map/map/MapBG;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sget v7, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->scale:F

    div-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    sub-int v6, v1, v4

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v3, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixel(II)I

    move-result v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    iget v7, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v8, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v9, v7, v8, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iget-object v5, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->pixBIG:Lcom/badlogic/gdx/graphics/Pixmap;

    iget v7, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosX:I

    int-to-float v7, v7

    sget v8, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->scale:F

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v7, v3

    iget v8, p0, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->iMapPosY:I

    int-to-float v8, v8

    sget v9, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->scale:F

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-int v8, v8

    add-int/2addr v8, v4

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->toIntBits()I

    move-result v6

    invoke-virtual {v5, v7, v8, v6}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixel(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method protected final saveScenarioMinimapPreviewTexture(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr p1, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v2, 0x0

    invoke-static {v2, p1, v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;->createFromFrameBuffer(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menusMapEditor/EditorMap_PrintMap;->drawPixmapBIG(Lcom/badlogic/gdx/graphics/Pixmap;)V

    return-void
.end method
