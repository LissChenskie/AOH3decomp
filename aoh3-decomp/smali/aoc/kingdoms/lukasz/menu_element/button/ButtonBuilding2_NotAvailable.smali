.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;
.super Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;
.source "ButtonBuilding2_NotAvailable.java"


# instance fields
.field public iTitleHeight:I

.field public iTitleWidth:I

.field public iTitleWidth2:I

.field public sTitle:Ljava/lang/String;

.field public sTitle2:Ljava/lang/String;


# direct methods
.method public constructor <init>(IZIIIIIZZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;-><init>(IZIIIIIZ)V

    const-string p1, ""

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->sTitle2:Ljava/lang/String;

    :try_start_0
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    if-eqz p9, :cond_0

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string p5, "RequiredTechnology"

    invoke-virtual {p2, p5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->sTitle:Ljava/lang/String;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget p5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object p5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->sTitle:Ljava/lang/String;

    invoke-virtual {p1, p2, p5}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p2, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->iTitleWidth:I

    iget p2, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->iTitleHeight:I

    sget-object p2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree;->lTechnology:Ljava/util/List;

    sget-object p5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p3, p3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredTechID:[I

    aget p3, p3, p4

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/technology/TechnologyTree$Technology;->Name:Ljava/lang/String;

    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->sTitle2:Ljava/lang/String;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object p3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->sTitle2:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->iTitleWidth2:I

    goto/16 :goto_0

    :cond_0
    if-eqz p10, :cond_1

    sget-object p2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget p2, p2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    if-ltz p2, :cond_1

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string p4, "Religion"

    invoke-virtual {p2, p4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->sTitle:Ljava/lang/String;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object p4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->sTitle:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p2, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->iTitleWidth:I

    iget p2, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->iTitleHeight:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->religionManager:Laoc/kingdoms/lukasz/map/ReligionManager;

    sget-object p4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget p3, p3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredReligionID:I

    invoke-virtual {p2, p3}, Laoc/kingdoms/lukasz/map/ReligionManager;->getReligion(I)Laoc/kingdoms/lukasz/map/ReligionManager$Religion;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/ReligionManager$Religion;->Name:Ljava/lang/String;

    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->sTitle2:Ljava/lang/String;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object p3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->sTitle2:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->iTitleWidth2:I

    goto/16 :goto_0

    :cond_1
    if-eqz p10, :cond_2

    sget-object p2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget p2, p2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    if-ltz p2, :cond_2

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string p4, "Government"

    invoke-virtual {p2, p4}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->sTitle:Ljava/lang/String;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget p4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object p4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->sTitle:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p2, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->iTitleWidth:I

    iget p2, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->iTitleHeight:I

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->ideologiesManager:Laoc/kingdoms/lukasz/map/IdeologiesManager;

    sget-object p4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget p3, p3, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredGovernmentID:I

    invoke-virtual {p2, p3}, Laoc/kingdoms/lukasz/map/IdeologiesManager;->getIdeology(I)Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;

    move-result-object p2

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/IdeologiesManager$Ideology;->Name:Ljava/lang/String;

    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->sTitle2:Ljava/lang/String;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object p3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->sTitle2:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->iTitleWidth2:I

    goto :goto_0

    :cond_2
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string p5, "RequiredBuilding"

    invoke-virtual {p2, p5}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->sTitle:Ljava/lang/String;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget p5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {p2, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object p5, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->sTitle:Ljava/lang/String;

    invoke-virtual {p1, p2, p5}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p2, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->iTitleWidth:I

    iget p2, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->iTitleHeight:I

    sget-object p2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object p2, p2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    add-int/lit8 p4, p4, -0x1

    const/4 p3, 0x0

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    aget-object p2, p2, p3

    iput-object p2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->sTitle2:Ljava/lang/String;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object p3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->sTitle2:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->iTitleWidth2:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 8

    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getPosY()I

    move-result v1

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getHeight()I

    move-result v1

    div-int/lit8 v5, v1, 0x2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getPosX()I

    move-result v1

    add-int v2, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getPosY()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    add-int v3, v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getHeight()I

    move-result v1

    div-int/lit8 v5, v1, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->sTitle:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->iTitleWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->iTitleHeight:I

    sub-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v4

    add-int v4, v0, p3

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->sTitle2:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->iTitleWidth2:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding2_NotAvailable;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v4

    add-int v4, v0, p3

    sget-object v5, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT2:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
