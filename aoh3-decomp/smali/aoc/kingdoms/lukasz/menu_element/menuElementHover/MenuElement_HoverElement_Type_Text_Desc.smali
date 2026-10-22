.class public Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;
.super Ljava/lang/Object;
.source "MenuElement_HoverElement_Type_Text_Desc.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;


# instance fields
.field private fontID:I

.field public iLineSize:I

.field public iTextHeight:I

.field public iTextWidth:I

.field private oColor:Lcom/badlogic/gdx/graphics/Color;

.field public sLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->sLines:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iLineSize:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iTextWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iTextHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->fontID:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1, v0, v1}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->init(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->sLines:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iLineSize:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iTextWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iTextHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->fontID:I

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_LEFT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->init(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->sLines:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iLineSize:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iTextWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iTextHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->fontID:I

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->init(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->sLines:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iLineSize:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iTextWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iTextHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->fontID:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    invoke-virtual {p0, p1, v0, p2}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->init(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .locals 7

    const/4 p5, 0x0

    :goto_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iLineSize:I

    if-ge p5, v0, :cond_0

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->fontID:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->sLines:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, p3

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v1, v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v4, v4

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iTextHeight:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v1, v4

    mul-int/2addr v1, p5

    add-int v5, v0, v1

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->oColor:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->oColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->oColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v6, v0, v1, v4, p4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v1, p1

    move v4, p2

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getHeight()I
    .locals 3

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT_SMALL:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iLineSize:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iLineSize:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iTextWidth:I

    return v0
.end method

.method public final init(Ljava/lang/String;ILcom/badlogic/gdx/graphics/Color;)V
    .locals 9

    iput-object p3, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->oColor:Lcom/badlogic/gdx/graphics/Color;

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->fontID:I

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    sget p3, Laoc/kingdoms/lukasz/textures/Images;->title1Red:I

    invoke-static {p3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p3

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result p3

    int-to-float p3, p3

    const v0, 0x3f59999a    # 0.85f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    array-length v0, p1

    const/4 v1, 0x0

    const-string v2, ""

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v6, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v7, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->fontID:I

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p1, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v5, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v5, v5, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v5, v5

    add-int/2addr v4, v5

    if-ge v4, p3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, p1, v3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iTextWidth:I

    invoke-static {v4, p3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iTextWidth:I

    goto :goto_1

    :cond_0
    iget-object v4, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->sLines:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v4, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->sLines:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->sLines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->sLines:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget p3, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->fontID:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object p3, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->sLines:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iTextHeight:I

    :cond_3
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->sLines:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iLineSize:I

    :goto_2
    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iLineSize:I

    if-ge v1, p1, :cond_5

    new-instance p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget p3, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->fontID:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object p3, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->sLines:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p2, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    iget p3, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iTextWidth:I

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_4

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Text_Desc;->iTextWidth:I

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method
