.class public Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;
.super Ljava/lang/Object;
.source "FlagManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigDivisionsData;,
        Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Divisions;,
        Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigOverlayData;,
        Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Overlays;
    }
.end annotation


# static fields
.field public static final FLAG_HEIGHT:I = 0x2c

.field public static final FLAG_WIDTH:I = 0x44


# instance fields
.field public activeColorID:I

.field private divisionLayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/textures/Image;",
            ">;"
        }
    .end annotation
.end field

.field public flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

.field public lDivisions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;",
            ">;"
        }
    .end annotation
.end field

.field public lOverlays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private lOverlaysImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->activeColorID:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    return-void
.end method

.method private final beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    int-to-float p2, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, p3

    int-to-float p3, v1

    const/high16 v1, 0x42880000    # 68.0f

    const/high16 v2, -0x3dd00000    # -44.0f

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    return-void
.end method

.method private final beginClip_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    int-to-float p2, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v1, p3

    int-to-float p3, v1

    const/high16 v1, 0x42880000    # 68.0f

    const/high16 v2, -0x3dd00000    # -44.0f

    invoke-direct {v0, p2, p3, v1, v2}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    return-void
.end method

.method private final endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 0

    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->flush()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public final addOverlay()V
    .locals 4

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->loadOverlayImage(I)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->getOverlay(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;->Scale:F

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iWidth:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    invoke-virtual {p0, v2}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->getOverlay(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;->Scale:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iHeight:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iWidth:I

    div-int/lit8 v1, v1, 0x2

    rsub-int/lit8 v1, v1, 0x22

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iPosX:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iHeight:I

    div-int/lit8 v1, v1, 0x2

    rsub-int/lit8 v1, v1, 0x16

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iPosY:I

    return-void
.end method

.method public final clearData()V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;->imageOverlay:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final drawDivision(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 9

    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/16 v6, 0x44

    const/16 v7, 0x2c

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    const/16 v7, 0x44

    const/16 v8, 0x2c

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    move v1, v2

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method public final drawDivision(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/16 v5, 0x44

    const/16 v6, 0x2c

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    add-int/lit8 p4, p4, -0x1

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    const/16 v4, 0x44

    const/16 v5, 0x2c

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method public final drawDivisionBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/16 v5, 0x44

    const/16 v6, 0x2c

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method public final drawDivision_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 9

    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->beginClip_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/16 v6, 0x44

    const/16 v7, 0x2c

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    const/16 v7, 0x44

    const/16 v8, 0x2c

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    move v1, v2

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method public final drawDivision_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->beginClip_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/16 v5, 0x44

    const/16 v6, 0x2c

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    add-int/lit8 p4, p4, -0x1

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    const/16 v4, 0x44

    const/16 v5, 0x2c

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method public final drawFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->drawDivision(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3, v0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->drawOverlay(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final drawFlag_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 2

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->drawDivision_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3, v0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->drawOverlay_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final drawOverlay(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->beginClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->oColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->getOverlay(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iPosX:I

    add-int v3, p2, v0

    iget-object p2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object p2, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iPosY:I

    add-int v4, p3, p2

    iget-object p2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object p2, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v5, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iWidth:I

    iget-object p2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object p2, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v6, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iHeight:I

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method public final drawOverlay_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 7

    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->beginClip_FlagFrameSize(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->oColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->getOverlay(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iPosX:I

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int v3, p2, v0

    iget-object p2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object p2, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iPosY:I

    int-to-float p2, p2

    mul-float/2addr p2, v2

    float-to-int p2, p2

    add-int v4, p3, p2

    iget-object p2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object p2, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iWidth:I

    int-to-float p2, p2

    mul-float/2addr p2, v2

    float-to-int v5, p2

    iget-object p2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object p2, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iHeight:I

    int-to-float p2, p2

    mul-float/2addr p2, v2

    float-to-int v6, p2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {p0, p1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->endClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method public final getOverlay(I)Laoc/kingdoms/lukasz/textures/Image;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;->iOverlayID:I

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;->imageOverlay:Laoc/kingdoms/lukasz/textures/Image;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    return-object p1
.end method

.method public final initFlagEdit()V
    .locals 1

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->loadDivision()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->loadOverlays()V

    return-void
.end method

.method public final loadData()V
    .locals 0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->clearData()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->loadDivisions()V

    return-void
.end method

.method public final loadDivision()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->iDivisionID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;->iLayers:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->divisionLayers:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v3, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v4, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "gfx/editorFlags/divisions/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    iget-object v7, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget v7, v7, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->iDivisionID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;

    iget-object v6, v6, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;->sName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    sget-object v4, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Nearest:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-direct {v2, v3, v4}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    iget-object v3, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget v3, v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->iDivisionID:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;->iLayers:I

    if-ge v0, v1, :cond_6

    if-nez v0, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v0, v2, :cond_3

    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x3f7bfbfc

    const v7, 0x3e4ccccd    # 0.2f

    invoke-direct {v5, v6, v1, v7, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x3e48c8c9

    const v7, 0x3ecacacb

    invoke-direct {v5, v1, v6, v7, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    const/4 v4, 0x3

    if-ne v0, v4, :cond_5

    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x3f4ececf

    invoke-direct {v5, v3, v6, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/CFG;->getRandomColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    iget-object v4, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v4, v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lDivisionColors:Ljava/util/List;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    iget v6, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v7, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v5, v6, v7, v1, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final loadDivisions()V
    .locals 5

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    :try_start_0
    const-string v0, "gfx/editorFlags/divisions.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigDivisionsData;

    const-string v3, "Division"

    const-class v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Divisions;

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigDivisionsData;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigDivisionsData;-><init>()V

    const-class v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigDivisionsData;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigDivisionsData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigDivisionsData;->Division:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Divisions;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;

    iget-object v4, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Divisions;->Name:Ljava/lang/String;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Divisions;->Layers:I

    invoke-direct {v3, v4, v1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Division;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final loadOverlayImage(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;->iOverlayID:I

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    new-instance v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;

    invoke-direct {v1, p1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final loadOverlays()V
    .locals 5

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    :try_start_0
    const-string v0, "gfx/editorFlags/overlays.json"

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/FileManager;->loadFile(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->readString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/utils/Json;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Json;-><init>()V

    const-class v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigOverlayData;

    const-string v3, "Overlay"

    const-class v4, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Overlays;

    invoke-virtual {v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/Json;->setElementType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigOverlayData;

    invoke-direct {v2}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigOverlayData;-><init>()V

    const-class v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigOverlayData;

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/utils/Json;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigOverlayData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$ConfigOverlayData;->Overlay:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Overlays;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;

    iget-object v4, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Overlays;->Name:Ljava/lang/String;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager$Data_Overlays;->Scale:F

    invoke-direct {v3, v4, v1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;-><init>(Ljava/lang/String;F)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->loadOverlayImage(I)V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    :cond_2
    return-void
.end method

.method public final moveOverlayUp(I)V
    .locals 4

    if-lez p1, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    add-int/lit8 v3, p1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {p1, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final removeOverlay(I)V
    .locals 2

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->tryRemoveOverlay(I)V

    return-void
.end method

.method public final saveFlagTexture(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->drawFlag(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    new-instance v1, Laoc/kingdoms/lukasz/textures/Image;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/16 v4, 0x2c

    sub-int/2addr v3, v4

    const/16 v5, 0x44

    invoke-static {v0, v3, v5, v4}, Lcom/badlogic/gdx/utils/ScreenUtils;->getFrameBufferPixmap(IIII)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v1, v2}, Laoc/kingdoms/lukasz/textures/Image;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    :try_start_0
    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureData;->prepare()V
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/FileManager;->IS_MAC:Z

    const-string v2, ".png"

    const-string v3, "mods/GameCivs/gfx/flagsH/"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Tag:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Laoc/kingdoms/lukasz/menusEditor/CreateCiv;->nCiv:Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;

    iget-object v3, v3, Laoc/kingdoms/lukasz/jakowski/Game$LoadCivilizationData;->Tag:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/Files;->local(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getTextureData()Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/TextureData;->consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    :goto_0
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x44

    const/16 v7, 0x2c

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    return-void
.end method

.method public final tryRemoveOverlay(I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;->iOverlayID:I

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;

    iget-object p1, p1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_OverlayImage;->imageOverlay:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlaysImages:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final updateDivision(Z)V
    .locals 3

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget v1, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->iDivisionID:I

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v1, p1

    iput v1, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->iDivisionID:I

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->iDivisionID:I

    if-gez p1, :cond_1

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, p1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->iDivisionID:I

    goto :goto_1

    :cond_1
    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->iDivisionID:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lDivisions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object p1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    const/4 v0, 0x0

    iput v0, p1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->iDivisionID:I

    :cond_2
    :goto_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->loadDivision()V

    return-void
.end method

.method public final updateOverlay(IZ)V
    .locals 4

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v2, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    move p2, v3

    goto :goto_0

    :cond_0
    const/4 p2, -0x1

    :goto_0
    add-int/2addr v2, p2

    iput v2, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    iget-object p2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object p2, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    if-gez p2, :cond_1

    iget-object p2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object p2, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    iput v1, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    goto :goto_1

    :cond_1
    iget-object p2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object p2, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_2

    iget-object p2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object p2, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    const/4 v1, 0x0

    iput v1, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->tryRemoveOverlay(I)V

    iget-object p2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object p2, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->loadOverlayImage(I)V

    iget-object p2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object p2, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->getOverlay(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;->Scale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iWidth:I

    iget-object p2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object p2, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->getOverlay(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->lOverlays:Ljava/util/List;

    iget-object v2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v2, v2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iOverlayID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay;->Scale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iHeight:I

    iget-object p2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object p2, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iWidth:I

    div-int/lit8 v0, v0, 0x2

    rsub-int/lit8 v0, v0, 0x22

    iput v0, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iPosX:I

    iget-object p2, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object p2, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget-object v0, p0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/FlagManager;->flagEdit:Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;

    iget-object v0, v0, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_GameData;->lOverlays:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iHeight:I

    div-int/lit8 p1, p1, 0x2

    rsub-int/lit8 p1, p1, 0x16

    iput p1, p2, Laoc/kingdoms/lukasz/jakowski/FlagsEditor/Flag_Overlay_GameData;->iPosY:I

    return-void
.end method
