.class public Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;
.super Ljava/lang/Object;
.source "MenuTitle.java"


# static fields
.field protected static final ANIMATION_TIME:I = 0x145

.field public static colorActive:Lcom/badlogic/gdx/graphics/Color;

.field public static colorDefault:Lcom/badlogic/gdx/graphics/Color;

.field public static colorHovered:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public fontID:I

.field public fontScale:F

.field private iHeight:I

.field private iTextHeight:I

.field public iTextWidth:I

.field private moveable:Z

.field private resizable:Z

.field private sText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f6dedee

    const v2, 0x3f7efeff

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorDefault:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f48c8c9

    const v2, 0x3f43c3c4

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorHovered:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f169697

    const v2, 0x3f1b9b9c

    const v4, 0x3f0c8c8d

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorActive:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FIZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontScale:F

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iTextWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iTextHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->moveable:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->resizable:Z

    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontID:I

    invoke-direct/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->initTitle(Ljava/lang/String;FIZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontScale:F

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iTextWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iTextHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->moveable:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->resizable:Z

    iput p3, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontID:I

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->initTitle(Ljava/lang/String;FIZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZ)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontScale:F

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iTextWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iTextHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->moveable:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->resizable:Z

    iput v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontID:I

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->initTitle(Ljava/lang/String;FIZZ)V

    return-void
.end method

.method private final initTitle(Ljava/lang/String;FIZZ)V
    .locals 0

    iput p2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontScale:F

    iput p3, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iHeight:I

    iput-boolean p4, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->moveable:Z

    iput-boolean p5, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->resizable:Z

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public action()V
    .locals 0

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 6

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->boxTitle:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v0

    sub-int v3, p3, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    move-object v0, p1

    move v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox_EDGE_TOP_LR(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIII)V

    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->drawGradient(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e969697

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f129293

    const v4, 0x3efcfcfd

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v3, p3, -0x1

    const/4 v5, 0x1

    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V

    return-void
.end method

.method public drawGradient(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 8

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v4, 0x3e666666    # 0.225f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v1

    sub-int v3, p3, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x145

    add-long/2addr v0, v2

    sget-wide v2, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x43a28000    # 325.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    sub-float/2addr v1, v0

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TITLE:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v3, p3, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v1, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v1

    sub-int v3, p3, v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result v5

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    add-int/lit8 v3, p3, -0x2

    const/4 v5, 0x1

    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIILaoc/kingdoms/lukasz/menu_element/Status;)V
    .locals 7

    iget v1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getText()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontScale:F

    int-to-float p4, p4

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getTextWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v0

    sub-float/2addr p4, v4

    float-to-int p4, p4

    add-int v4, p2, p4

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, v0

    add-float/2addr p2, p4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getTextHeight()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p4, v0

    sub-float/2addr p2, p4

    float-to-int p2, p2

    add-int v5, p3, p2

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getColorText(Laoc/kingdoms/lukasz/menu_element/Status;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;FIILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public getColorText(Laoc/kingdoms/lukasz/menu_element/Status;)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle$1;->$SwitchMap$aoc$kingdoms$lukasz$menu_element$Status:[I

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu_element/Status;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorDefault:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_0
    sget-object p1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorHovered:Lcom/badlogic/gdx/graphics/Color;

    return-object p1

    :cond_1
    sget-object p1, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->colorActive:Lcom/badlogic/gdx/graphics/Color;

    return-object p1
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iHeight:I

    return v0
.end method

.method public final getMoveable()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->moveable:Z

    return v0
.end method

.method public final getResizable()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->resizable:Z

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public final getTextHeight()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iTextHeight:I

    return v0
.end method

.method public final getTextWidth()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iTextWidth:I

    return v0
.end method

.method public getTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onHovered()V
    .locals 0

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->sText:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setTextWidth(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->getTextWidth()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget p1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    iget v1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontScale:F

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setTextWidth(I)V

    iget p1, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    iget v0, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->fontScale:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->setTextHeight(I)V

    :cond_0
    return-void
.end method

.method public final setTextHeight(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iTextHeight:I

    return-void
.end method

.method public final setTextWidth(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/menuTitle/MenuTitle;->iTextWidth:I

    return-void
.end method
