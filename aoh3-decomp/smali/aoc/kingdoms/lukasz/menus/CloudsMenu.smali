.class public Laoc/kingdoms/lukasz/menus/CloudsMenu;
.super Laoc/kingdoms/lukasz/menu/Menu;
.source "CloudsMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;
    }
.end annotation


# static fields
.field public static goToView:Laoc/kingdoms/lukasz/menu/View;


# instance fields
.field public iAnimationTime:I

.field public lClouds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;",
            ">;"
        }
    .end annotation
.end field

.field public lTime:J

.field public viewChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menu/View;->NEW_GAME:Laoc/kingdoms/lukasz/menu/View;

    sput-object v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->goToView:Laoc/kingdoms/lukasz/menu/View;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/Menu;-><init>()V

    const/16 v0, 0x2ee

    iput v0, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->iAnimationTime:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->viewChanged:Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Laoc/kingdoms/lukasz/menu_element/Empty;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v0, v2, v2}, Laoc/kingdoms/lukasz/menu_element/Empty;-><init>(IIII)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v1, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lTime:J

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    move v1, v0

    :goto_0
    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit16 v2, v2, 0xfa

    if-ge v1, v2, :cond_0

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v3, v3, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v8, v8, 0x4

    invoke-virtual {v6, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-direct {v4, p0, v2, v5, v6}, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;-><init>(Laoc/kingdoms/lukasz/menus/CloudsMenu;III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    div-int/lit8 v9, v9, 0x4

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    sub-int/2addr v6, v8

    invoke-direct {v4, p0, v2, v5, v6}, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;-><init>(Laoc/kingdoms/lukasz/menus/CloudsMenu;III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {v6, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-direct {v4, p0, v2, v5, v6}, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;-><init>(Laoc/kingdoms/lukasz/menus/CloudsMenu;III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    new-instance v4, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v8, v8, 0x4

    invoke-virtual {v6, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    sub-int/2addr v5, v6

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {v6, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-direct {v4, p0, v2, v5, v6}, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;-><init>(Laoc/kingdoms/lukasz/menus/CloudsMenu;III)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_0
    :goto_1
    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit16 v1, v1, 0x258

    if-ge v0, v1, :cond_1

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iget-object v2, p0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    new-instance v3, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    sget-object v4, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-direct {v3, p0, v1, v4, v5}, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;-><init>(Laoc/kingdoms/lukasz/menus/CloudsMenu;III)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    const/4 v8, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/menus/CloudsMenu;->initMenu(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;IIIILjava/util/List;Z)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 13

    move-object v0, p0

    move-object v9, p1

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v3, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget v2, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->iAnimationTime:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v11

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, v11

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/CloudsMenu;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/CloudsMenu;->getPosY()I

    move-result v2

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/CloudsMenu;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v6, v2, 0x2

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/CloudsMenu;->getPosX()I

    move-result v2

    add-int v3, v2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/CloudsMenu;->getPosY()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/CloudsMenu;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int v4, v2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/CloudsMenu;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    div-int/lit8 v6, v2, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v3, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget v2, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->iAnimationTime:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v10, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float v7, v10, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget-object v1, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v8

    move v12, v1

    :goto_0
    if-ltz v12, :cond_1

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    iget v2, v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->fAlpha:F

    mul-float/2addr v2, v7

    invoke-direct {v1, v10, v10, v10, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    iget v1, v1, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->iPosX:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    iget v2, v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->iCloudID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    iget v2, v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->iPosX:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    mul-float/2addr v3, v11

    float-to-int v3, v3

    sub-int v3, v2, v3

    iget-object v2, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    iget v4, v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->iPosY:I

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v2, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    iget v6, v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->fRotation:F

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    goto :goto_1

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->cloudsAnimation:Laoc/kingdoms/lukasz/map/clouds/CloudsManager;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/clouds/CloudsManager;->imageCloud:Ljava/util/List;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    iget v2, v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->iCloudID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    iget v2, v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->iPosX:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    mul-float/2addr v3, v11

    float-to-int v3, v3

    add-int/2addr v3, v2

    iget-object v2, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    iget v4, v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->iPosY:I

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v2, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;

    iget v6, v2, Laoc/kingdoms/lukasz/menus/CloudsMenu$CloudAnimation;->fRotation:F

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFF)V

    :goto_1
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_0

    :cond_1
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-super/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/Menu;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZLaoc/kingdoms/lukasz/menu_element/Status;)V

    sget-wide v1, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iget-wide v3, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lTime:J

    sub-long/2addr v1, v3

    iget v3, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->iAnimationTime:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-boolean v1, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->viewChanged:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->lClouds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    sget-object v2, Laoc/kingdoms/lukasz/menus/CloudsMenu;->goToView:Laoc/kingdoms/lukasz/menu/View;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/MenuManager;->setViewID(Laoc/kingdoms/lukasz/menu/View;)V

    iput-boolean v8, v0, Laoc/kingdoms/lukasz/menus/CloudsMenu;->viewChanged:Z

    :cond_2
    return-void
.end method
