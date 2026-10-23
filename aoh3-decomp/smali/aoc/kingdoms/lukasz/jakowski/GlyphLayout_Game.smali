.class public Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;
.super Ljava/lang/Object;
.source "GlyphLayout_Game.java"


# instance fields
.field public height:F

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    iput v0, p0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    return v0
.end method

.method public setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;-><init>()V

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)V

    iget p1, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->width:F

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    iget p1, v1, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    const/4 p1, 0x1

    return p1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method
