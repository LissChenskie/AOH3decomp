.class public Laoc/kingdoms/lukasz/menu_element/button/Button_Law;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "Button_Law.java"


# instance fields
.field public imageID:I


# direct methods
.method public constructor <init>(III)V
    .locals 12

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>()V

    const-string v1, ""

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget v3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->iTextPositionX:I

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->getButtonWidth()I

    move-result v6

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->getButtonHeight()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v11}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->init(Ljava/lang/String;IIIIIIZZZZ)V

    iput p3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->imageID:I

    return-void
.end method

.method public static getButtonHeight()I
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/map/LawsManager;->lawsImages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    return v0
.end method

.method public static getButtonWidth()I
    .locals 2

    sget-object v0, Laoc/kingdoms/lukasz/map/LawsManager;->lawsImages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->getIsHovered()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->getPosX()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->getPosY()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->getHeight()I

    move-result v2

    invoke-static {p1, p4, v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_1
    sget-object p4, Laoc/kingdoms/lukasz/map/LawsManager;->lawsImages:Ljava/util/List;

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->imageID:I

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_Law;->getPosY()I

    move-result p2

    add-int/2addr p2, p3

    invoke-virtual {p4, p1, v0, p2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 0

    return-void
.end method
