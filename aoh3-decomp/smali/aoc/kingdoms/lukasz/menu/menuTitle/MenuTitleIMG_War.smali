.class public Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;
.super Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;
.source "MenuTitleIMG_War.java"


# instance fields
.field public iLastTurnID:I

.field public iText2Width:I

.field public iTextLeftWidth:I

.field public iTextLeftWidth2:I

.field public iTextRightWidth:I

.field public iTextRightWidth2:I

.field public imageID:I

.field public sText2:Ljava/lang/String;

.field public sTextLeft:Ljava/lang/String;

.field public sTextLeft2:Ljava/lang/String;

.field public sTextRight:Ljava/lang/String;

.field public sTextRight2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 1

    invoke-static {p8}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0, p6, p7}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;-><init>(Ljava/lang/String;IZZ)V

    const/4 p1, 0x0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextLeftWidth:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextRightWidth:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextLeftWidth2:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextRightWidth2:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iText2Width:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iLastTurnID:I

    iput p8, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->imageID:I

    iput-object p2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sTextLeft:Ljava/lang/String;

    new-instance p6, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {p6}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object p7, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget p8, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {p7, p8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p6, p7, p2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p2, p6, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextLeftWidth:I

    iput-object p3, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sTextRight:Ljava/lang/String;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget p7, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {p2, p7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p6, p2, p3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p2, p6, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextRightWidth:I

    iput-object p4, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sTextLeft2:Ljava/lang/String;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p6, p2, p4}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p2, p6, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextLeftWidth2:I

    iput-object p5, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sTextRight2:Ljava/lang/String;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p6, p2, p5}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p2, p6, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextRightWidth2:I

    :try_start_0
    sget-object p2, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object p3, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/map/war/War;

    iget p2, p2, Laoc/kingdoms/lukasz/map/war/War;->iWarTurnID:I

    invoke-static {p2}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getNumOfDates_ByTurnID(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sText2:Ljava/lang/String;

    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget p3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object p3, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sText2:Ljava/lang/String;

    invoke-virtual {p6, p2, p3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p2, p6, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p2, p2

    iput p2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iText2Width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p2, Laoc/kingdoms/lukasz/jakowski/Game;->menuManager:Laoc/kingdoms/lukasz/menu/MenuManager;

    invoke-virtual {p2, p1}, Laoc/kingdoms/lukasz/menu/MenuManager;->setVisibleInGame_War(Z)V

    :goto_0
    sget p1, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iLastTurnID:I

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 7

    iget v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->imageID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v0

    sub-int v4, p3, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v6

    move-object v2, p1

    move v3, p2

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->drawGradient(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p5

    iget v0, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iLastTurnID:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    if-eq v0, v3, :cond_1

    :try_start_0
    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/war/War;

    iget v0, v0, Laoc/kingdoms/lukasz/map/war/War;->iWarTurnID:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->getNumOfDates_ByTurnID(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sText2:Ljava/lang/String;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v4, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sText2:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iText2Width:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/Game_Calendar;->TURN_ID:I

    iput v0, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iLastTurnID:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Laoc/kingdoms/lukasz/map/war/WarManager;->lWars:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v4, Laoc/kingdoms/lukasz/menusInGame/InGame_War;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War$1;

    const-string v4, "rebuildInGame_Wars"

    invoke-direct {v3, v1, v4}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War$1;-><init>(Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;Ljava/lang/String;)V

    invoke-static {v3}, Laoc/kingdoms/lukasz/jakowski/Game;->addSimpleTask(Laoc/kingdoms/lukasz/jakowski/Game$SimpleTask;)V

    :cond_0
    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/CFG;->exceptionStack(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    iget v6, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->fontID:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getText()Ljava/lang/String;

    move-result-object v7

    div-int/lit8 v0, p4, 0x2

    add-int v0, p2, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getTextWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v8, v0, v3

    add-int/lit8 v3, p3, 0x1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getTextHeight()I

    move-result v9

    sub-int/2addr v5, v9

    add-int v9, v4, v5

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getColorText(Laoc/kingdoms/lukasz/menu_element/Status;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v13, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sText2:Ljava/lang/String;

    iget v4, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iText2Width:I

    div-int/lit8 v4, v4, 0x2

    sub-int v14, v0, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v5

    add-int v15, v0, v4

    sget-object v16, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorHovered:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v11, p1

    invoke-static/range {v11 .. v16}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    iget-object v6, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sTextLeft2:Ljava/lang/String;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v0, p2, v0

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->rulerFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    iget v4, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextLeftWidth2:I

    div-int/lit8 v4, v4, 0x2

    sub-int v7, v0, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v4, v8

    add-int v8, v0, v4

    sget-object v9, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorDefault:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v9}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_BOLD_SMALL:I

    iget-object v12, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sTextRight2:Ljava/lang/String;

    add-int v0, p2, p4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int v4, v0, v4

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v4, v5

    sget v5, Laoc/kingdoms/lukasz/textures/Images;->rulerFrame:I

    invoke-static {v5}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v5

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextRightWidth2:I

    div-int/lit8 v5, v5, 0x2

    sub-int v13, v4, v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v5, v6

    add-int v14, v4, v5

    sget-object v15, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorDefault:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v10, p1

    invoke-static/range {v10 .. v15}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v4, Laoc/kingdoms/lukasz/menu_element/Status;->HOVERED:Laoc/kingdoms/lukasz/menu_element/Status;

    if-eq v2, v4, :cond_2

    sget-object v4, Laoc/kingdoms/lukasz/menu_element/Status;->ACTIVE:Laoc/kingdoms/lukasz/menu_element/Status;

    if-ne v2, v4, :cond_3

    :cond_2
    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v7, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sTextLeft:Ljava/lang/String;

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v2, p2, v2

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->rulerFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iget v4, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextLeftWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v8, v2, v4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v2

    sub-int v2, v3, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getTextHeight()I

    move-result v5

    sub-int/2addr v4, v5

    add-int v9, v2, v4

    sget-object v10, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorDefault:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget v12, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v13, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->sTextRight:Ljava/lang/String;

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->boxTitleBORDERWIDTH:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->rulerFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    iget v2, v1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->iTextRightWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int v14, v0, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitleIMG_War;->getTextHeight()I

    move-result v2

    sub-int/2addr v0, v2

    add-int v15, v3, v0

    sget-object v16, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorDefault:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v11, p1

    invoke-static/range {v11 .. v16}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :cond_3
    return-void
.end method
