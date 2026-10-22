.class public Laoc/kingdoms/lukasz/menu_element/button/Button32Padd_Text;
.super Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;
.source "Button32Padd_Text.java"


# instance fields
.field public value:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd;-><init>(III)V

    const/4 p1, 0x0

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd_Text;->value:I

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd_Text;->fontID:I

    return-void
.end method


# virtual methods
.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 6

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd_Text;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd_Text;->getTextToDraw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd_Text;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd_Text;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd_Text;->getTextWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    add-int v3, v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd_Text;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd_Text;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd_Text;->iTextHeight:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    add-int v4, p2, p3

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/button/Button32Padd_Text;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
