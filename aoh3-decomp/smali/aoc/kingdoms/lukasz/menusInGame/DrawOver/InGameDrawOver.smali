.class public Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;
.super Ljava/lang/Object;
.source "InGameDrawOver.java"


# static fields
.field public static drawAllTheTime:Z


# instance fields
.field public fontID:I

.field public iPosY:I

.field public iTextHeight:I

.field public iTextWidth:I

.field public sText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;->fontID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iput v1, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;->fontID:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    const-string v2, "Paused"

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;->sText:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v3, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;->fontID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;->sText:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;->iTextWidth:I

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;->iTextHeight:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonFlag;->getButtonHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    iput v1, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;->iPosY:I

    sput-boolean v0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;->drawAllTheTime:Z

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 7

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->gameThread:Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;

    iget-boolean v0, v0, Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;->play:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;->drawAllTheTime:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f19999a    # 0.6f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;->iTextWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x7

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;->iPosY:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/2addr v1, p3

    iget v2, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;->iTextWidth:I

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0xe

    add-int/2addr v2, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;->iTextHeight:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v2, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;->fontID:I

    iget-object v3, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;->sText:Ljava/lang/String;

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;->iTextWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int v4, v0, p2

    iget p2, p0, Laoc/kingdoms/lukasz/menusInGame/DrawOver/InGameDrawOver;->iPosY:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p2, v0

    add-int v5, p2, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_TOP_STATS3:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    return-void
.end method
