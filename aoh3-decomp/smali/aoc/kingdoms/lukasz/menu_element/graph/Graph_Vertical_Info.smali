.class public Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;
.super Ljava/lang/Object;
.source "Graph_Vertical_Info.java"


# instance fields
.field private iTextPosX:I

.field private iTextWidth:I

.field private iTextsSize:I

.field private isMoveable:Z

.field private lColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private lSortedIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lTextWidths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lTime:J

.field private moveRight:Z


# direct methods
.method protected constructor <init>(Ljava/util/List;Ljava/util/List;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextsSize:I

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTextWidths:Ljava/util/List;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->isMoveable:Z

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->moveRight:Z

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextWidth:I

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextPosX:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTime:J

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lSortedIDs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextsSize:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lSortedIDs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_0
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextsSize:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lSortedIDs:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-eqz p4, :cond_5

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p4

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq p4, v3, :cond_6

    move p4, v1

    :goto_2
    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextsSize:I

    if-ge p4, v3, :cond_2

    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_2
    move p4, v1

    :goto_3
    add-int/lit8 v3, p4, 0x1

    :goto_4
    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextsSize:I

    if-ge v3, v4, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Laoc/kingdoms/lukasz/jakowski/CFG;->compareAlphabetic_TwoString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move p4, v3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, p4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lSortedIDs:Ljava/util/List;

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p4, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTextWidths:Ljava/util/List;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const p2, 0x3f333333    # 0.7f

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    move p1, v1

    :goto_5
    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextsSize:I

    if-ge p1, p4, :cond_7

    sget-object p4, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p4, v0, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextWidth:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    add-int/2addr p4, v0

    iput p4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextWidth:I

    iget-object p4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTextWidths:Ljava/util/List;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_7
    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object p1

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextWidth:I

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextsSize:I

    mul-int/2addr p4, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextsSize:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    add-int/2addr p4, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget p2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextsSize:I

    int-to-float p2, p2

    mul-float/2addr v0, p2

    float-to-int p2, v0

    add-int/2addr p4, p2

    add-int/2addr p1, p4

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextWidth:I

    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->updateMoveable(I)V

    return-void
.end method


# virtual methods
.method protected final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;III)V
    .locals 10

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->isMoveable:Z

    const v1, 0x3f333333    # 0.7f

    if-eqz v0, :cond_1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sub-int/2addr v0, p3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    neg-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    invoke-static {p1, p2, v0, p4, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    iget-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTime:J

    sget-wide v4, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v6, 0x2d

    sub-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    iput-wide v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTime:J

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->moveRight:Z

    if-eqz v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextPosX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextPosX:I

    neg-int v0, v0

    add-int/2addr v0, p4

    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextWidth:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p4, v2

    if-lt v0, p4, :cond_1

    iget-boolean p4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->moveRight:Z

    xor-int/lit8 p4, p4, 0x1

    iput-boolean p4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->moveRight:Z

    goto :goto_0

    :cond_0
    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextPosX:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextPosX:I

    if-ltz p4, :cond_1

    xor-int/lit8 p4, v0, 0x1

    iput-boolean p4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->moveRight:Z

    :cond_1
    :goto_0
    const/4 p4, 0x0

    move v0, p4

    :goto_1
    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextsSize:I

    if-ge p4, v2, :cond_2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    add-int v2, p2, v0

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextPosX:I

    add-int v5, v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v7, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v8, v4

    move-object v4, p1

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v3, Lcom/badlogic/gdx/graphics/Color;

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {v4, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {v5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {v6, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextPosX:I

    add-int v6, v2, v3

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v8, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v9, v2

    move-object v5, p1

    move v7, p3

    invoke-virtual/range {v4 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int v3, p2, v0

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextPosX:I

    add-int/2addr v3, v4

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {v5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/Color;

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v6, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {v6, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/Color;

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v7, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    invoke-interface {v7, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/Color;

    iget v7, v7, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v4, v5, v6, v7, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-static {p1, v2, v3, p3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Ljava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTextWidths:Ljava/util/List;

    invoke-interface {v2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_1

    :cond_2
    iget-boolean p2, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->isMoveable:Z

    if-eqz p2, :cond_3

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    :cond_3
    return-void
.end method

.method protected final getColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lColors:Ljava/util/List;

    return-object v0
.end method

.method protected final getSorted()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lSortedIDs:Ljava/util/List;

    return-object v0
.end method

.method protected final getSortedID(I)I
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lSortedIDs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected final getText(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->lTexts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method protected final getTextSize()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextsSize:I

    return v0
.end method

.method protected final resetisMoveable()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextPosX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->moveRight:Z

    return-void
.end method

.method protected final updateMoveable(I)V
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextWidth:I

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->isMoveable:Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->resetisMoveable()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->resetisMoveable()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->isMoveable:Z

    div-int/lit8 p1, p1, 0x2

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextWidth:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/graph/Graph_Vertical_Info;->iTextPosX:I

    :goto_0
    return-void
.end method
