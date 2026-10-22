.class public Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;
.super Ljava/lang/Object;
.source "MenuElement_HoverElement_Type_Title.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type;


# static fields
.field private static final fontID:I

.field private static final fontID2:I


# instance fields
.field public iTextHeight3:I

.field public iTextWidth:I

.field public iTextWidth2:I

.field public iTextWidth3:I

.field public iTextWidth4:I

.field private iTextWidthMAX:I

.field public iTextY:I

.field private imageID:I

.field public maxHeight:I

.field private sText:Ljava/lang/String;

.field private sText2:Ljava/lang/String;

.field private sText3:Ljava/lang/String;

.field private sText4:Ljava/lang/String;

.field public textColor:Lcom/badlogic/gdx/graphics/Color;

.field public textColor1:Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    sput v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->fontID:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    sput v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->fontID2:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextWidthMAX:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextWidth2:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextWidth3:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextWidth4:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextHeight3:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->maxHeight:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextY:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->imageID:I

    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->sText:Ljava/lang/String;

    iput-object p3, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->sText2:Ljava/lang/String;

    iput-object p5, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->sText3:Ljava/lang/String;

    iput-object p6, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->sText4:Ljava/lang/String;

    iput-object p7, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->textColor:Lcom/badlogic/gdx/graphics/Color;

    iput-object p4, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->textColor1:Lcom/badlogic/gdx/graphics/Color;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget p4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->fontID:I

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object p5, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->sText:Ljava/lang/String;

    invoke-virtual {p2, p3, p5}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextWidth:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object p4, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->sText2:Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextWidth2:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget p4, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->fontID2:I

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object p5, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->sText3:Ljava/lang/String;

    invoke-virtual {p2, p3, p5}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextWidth3:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextHeight3:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object p4, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->sText4:Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p2, p2, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextWidth4:I

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    mul-int/lit8 p2, p2, 0x2

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p2, p3

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->maxHeight:I

    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextWidth:I

    iget p2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextWidth2:I

    add-int/2addr p1, p2

    iget p2, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextWidth3:I

    iget p3, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextWidth4:I

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextWidthMAX:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sget p2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    mul-int/lit8 p2, p2, 0x2

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextY:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIFI)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v11, p3, v1

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v12, 0x3f800000    # 1.0f

    mul-float v13, v10, v12

    invoke-direct {v1, v2, v3, v4, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v1

    sub-int v3, p2, v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v5, p5, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    move v4, v11

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3eb33333    # 0.35f

    mul-float v14, v10, v5

    invoke-direct {v1, v2, v3, v4, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v1

    sub-int v3, p2, v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v5, p5, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v6

    move-object/from16 v1, p1

    move v4, v11

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3e99999a    # 0.3f

    mul-float v15, v10, v5

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, p5, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v6

    move-object/from16 v2, p1

    move v4, v11

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, p5, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v6

    move-object/from16 v2, p1

    move v4, v11

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f333333    # 0.7f

    mul-float v8, v10, v5

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXYVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v4, v11, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, p5, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v2, v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3ee66666    # 0.45f

    mul-float v7, v10, v2

    const/4 v6, 0x0

    invoke-direct {v1, v6, v6, v6, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, p5, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v16, v2, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v2, p1

    move v4, v11

    move v12, v6

    move/from16 v6, v16

    move/from16 v19, v7

    move/from16 v7, v17

    move/from16 v20, v8

    move/from16 v8, v18

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v2

    add-int/2addr v2, v11

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, p5, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v8, 0x3f59999a    # 0.85f

    mul-float v7, v10, v8

    invoke-direct {v1, v12, v12, v12, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v1

    sub-int v3, p2, v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v5, p5, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v6

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    move v4, v11

    move/from16 v21, v7

    move/from16 v7, v16

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v7, v10, v2

    invoke-direct {v1, v12, v12, v12, v7}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v2

    add-int/2addr v2, v11

    add-int/lit8 v4, v2, -0x1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, p5, v2

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, p5, v2

    move-object/from16 v2, p1

    move v4, v11

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v2

    add-int/2addr v2, v11

    add-int/lit8 v4, v2, -0x2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, p5, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    add-int/lit8 v16, v11, 0x1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, p5, v2

    move-object/from16 v2, p1

    move/from16 v4, v16

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f0ccccd    # 0.55f

    mul-float v6, v10, v2

    invoke-direct {v1, v12, v12, v12, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v2

    add-int/2addr v2, v11

    add-int/lit8 v4, v2, -0x1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, p5, v2

    const/16 v17, 0x1

    move-object/from16 v2, p1

    move/from16 v22, v6

    move/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, p5, v2

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move v4, v11

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v6, 0x3f666666    # 0.9f

    invoke-direct {v1, v2, v3, v4, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v2

    add-int/2addr v2, v11

    add-int/lit8 v4, v2, -0x2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, p5, v2

    move-object/from16 v2, p1

    move/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, p5, v2

    const/4 v6, 0x1

    move-object/from16 v2, p1

    move/from16 v4, v16

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    move/from16 v6, v19

    invoke-direct {v1, v12, v12, v12, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v2

    add-int v4, v11, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, p5, v2

    sget v17, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v2, p1

    move/from16 v23, v6

    move/from16 v6, v17

    move/from16 v24, v7

    move/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->imageID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v17, v1, v2

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v1

    sub-int v3, p2, v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v5, v17, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    move v4, v11

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v1

    sub-int v3, p2, v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v5, v17, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v6

    move-object/from16 v1, p1

    move v4, v11

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v17, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v6

    move-object/from16 v2, p1

    move v4, v11

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v17, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v6

    move-object/from16 v2, p1

    move v4, v11

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v5, v20

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXYVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v4, v11, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v17, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v2, v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    move/from16 v2, v23

    invoke-direct {v1, v12, v12, v12, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v17, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p1

    move v4, v11

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v2

    add-int/2addr v2, v11

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v17, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    move/from16 v2, v21

    invoke-direct {v1, v12, v12, v12, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v1

    sub-int v3, p2, v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v5, v17, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    move v4, v11

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    move/from16 v2, v24

    invoke-direct {v1, v12, v12, v12, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v2

    add-int/2addr v2, v11

    add-int/lit8 v4, v2, -0x1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v17, v2

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v17, v2

    move-object/from16 v2, p1

    move v4, v11

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f59999a    # 0.85f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v2

    add-int/2addr v2, v11

    add-int/lit8 v4, v2, -0x2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v17, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v17, v2

    move-object/from16 v2, p1

    move/from16 v4, v16

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    move/from16 v2, v22

    invoke-direct {v1, v12, v12, v12, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v2

    add-int/2addr v2, v11

    add-int/lit8 v4, v2, -0x1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v17, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v17, v2

    move-object/from16 v2, p1

    move v4, v11

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_OVER_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f666666    # 0.9f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v2

    add-int/2addr v2, v11

    add-int/lit8 v4, v2, -0x2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v17, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    sub-int v3, p2, v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;->getDrawExtraXPos()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v17, v2

    move-object/from16 v2, p1

    move/from16 v4, v16

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v2, v2, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->imageID:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v2, p2, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->getHeight2()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v11

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->imageID:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v1, v9, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    sget v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->fontID:I

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->sText:Ljava/lang/String;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x7

    add-int v1, p2, v1

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->imageID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int v4, v1, v2

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextY:I

    add-int v5, v11, v1

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TOP_STATS:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TOP_STATS:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TOP_STATS:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v6, v1, v2, v8, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object/from16 v1, p1

    move v2, v7

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->sText2:Ljava/lang/String;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x7

    add-int v1, p2, v1

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextWidth:I

    add-int/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->imageID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int v4, v1, v2

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextY:I

    add-int v5, v11, v1

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->textColor1:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->textColor1:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v8, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->textColor1:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v6, v1, v2, v8, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object/from16 v1, p1

    move v2, v7

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v7, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->fontID2:I

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->sText3:Ljava/lang/String;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x7

    add-int v1, p2, v1

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->imageID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int v4, v1, v2

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextY:I

    add-int/2addr v1, v11

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextHeight3:I

    div-int/lit8 v2, v2, 0x2

    sub-int v5, v1, v2

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TOP_STATS2:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TOP_STATS2:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v8, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TOP_STATS2:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v6, v1, v2, v8, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object/from16 v1, p1

    move v2, v7

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->sText4:Ljava/lang/String;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x7

    add-int v1, p2, v1

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextWidth3:I

    add-int/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->imageID:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    add-int v4, v1, v2

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextY:I

    add-int/2addr v11, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    add-int/2addr v11, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v11, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v11, v1

    iget v1, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextHeight3:I

    div-int/lit8 v1, v1, 0x2

    sub-int v5, v11, v1

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->textColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->textColor:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v8, v0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->textColor:Lcom/badlogic/gdx/graphics/Color;

    iget v8, v8, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v6, v1, v2, v8, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object/from16 v1, p1

    move v2, v7

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public getHeight()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->maxHeight:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    return v0
.end method

.method public getHeight2()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->maxHeight:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->imageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_HoverElement_Type_Title;->iTextWidthMAX:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method
