.class public Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;
.source "MenuTitleIMG_DoubleText.java"


# instance fields
.field public iText2Width:I

.field public sText2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 0

    invoke-direct {p0, p1, p3, p4, p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG;-><init>(Ljava/lang/String;ZZI)V

    const/4 p1, 0x0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;->iText2Width:I

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;->fontID:I

    iput-object p2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;->sText2:Ljava/lang/String;

    new-instance p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object p3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p1, p3, p2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;->iText2Width:I

    return-void
.end method


# virtual methods
.method public drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 15

    move-object v0, p0

    iget v2, v0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;->getText()Ljava/lang/String;

    move-result-object v3

    div-int/lit8 v1, p4, 0x2

    add-int v7, p2, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;->getTextWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v4, v7, v1

    add-int/lit8 v8, p3, 0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;->getHeight()I

    move-result v1

    sub-int v1, v8, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;->getTextHeight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v1

    move-object/from16 v1, p5

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;->getColorText(Laoc/kingdoms/lukasz/menu_element/Status;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v11, v0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;->sText2:Ljava/lang/String;

    iget v1, v0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;->iText2Width:I

    div-int/lit8 v1, v1, 0x2

    sub-int v12, v7, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;->getHeight()I

    move-result v1

    sub-int/2addr v8, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_DoubleText;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v13, v8, v1

    sget-object v14, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorHovered:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v14}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
