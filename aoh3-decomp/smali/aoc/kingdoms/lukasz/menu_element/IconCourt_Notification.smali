.class public Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;
.super Laoc/kingdoms/lukasz/menu_element/IconCourt;
.source "IconCourt_Notification.java"


# instance fields
.field public boxH:I

.field public boxW:I

.field public numH:I

.field public numW:I

.field public number:Ljava/lang/String;

.field public value:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Laoc/kingdoms/lukasz/menu_element/IconCourt;-><init>(Ljava/lang/String;IIIIIII)V

    const-string p1, ""

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->number:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->boxW:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->boxH:I

    return-void
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/IconCourt;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->updateValue()V

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->value:I

    if-lez v0, :cond_2

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v2, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_STATS_RECT_BG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->getIsHovered()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3f000000    # 0.5f

    goto :goto_1

    :cond_1
    :goto_0
    const v4, 0x3f19999a    # 0.6f

    :goto_1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->getPosX()I

    move-result v0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    add-int v2, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->getHeight()I

    move-result v3

    add-int/2addr v0, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v3

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->boxH:I

    sub-int/2addr v0, v5

    add-int v3, v0, p3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->boxW:I

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->fontID:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->number:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->getPosX()I

    move-result v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->boxW:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->numW:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->getPosY()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->boxH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->numH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    add-int v4, v0, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    :cond_2
    return-void
.end method

.method public setNumber(I)V
    .locals 3

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->value:I

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->boxH:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->boxW:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v1, Laoc/kingdoms/lukasz/menusInGame/Province/iOYW/ALZmnpZHj;->reuYdg:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/GameValues;->court:Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/GameValues$GameValue_Court;->SIDEBAR_MAX_NUMBER:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->value:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->number:Ljava/lang/String;

    if-eqz p1, :cond_1

    :try_start_0
    new-instance p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->number:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v0, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->numW:I

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->numH:I

    goto :goto_0

    :cond_1
    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->numH:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->numW:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->numW:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->boxW:I

    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->numH:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/IconCourt_Notification;->boxH:I

    return-void
.end method

.method public updateValue()V
    .locals 0

    return-void
.end method
