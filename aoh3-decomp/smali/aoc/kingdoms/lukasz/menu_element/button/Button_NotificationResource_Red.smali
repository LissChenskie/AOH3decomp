.class public Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Red;
.super Laoc/kingdoms/lukasz/menu_element/button/Button_Notification_Red;
.source "Button_NotificationResource_Red.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIIIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Laoc/kingdoms/lukasz/menu_element/button/Button_Notification_Red;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIIIJ)V

    return-void
.end method


# virtual methods
.method protected drawIcon(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 6

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Red;->fAlpha:F

    invoke-direct {p4, v0, v0, v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p4, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Red;->imageID:I

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Red;->getPosX()I

    move-result p4

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p4, v1

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Red;->getPosY()I

    move-result p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Red;->getHeight()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p2, p4

    iget p4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Red;->iconHeight:I

    div-int/lit8 p4, p4, 0x2

    sub-int/2addr p2, p4

    add-int v3, p2, p3

    iget v4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Red;->iconWidth:I

    iget v5, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Red;->iconHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public getImageScale(I)F
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method

.method public updateIcon()V
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Red;->imageID:I

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Red;->getImageScale(I)F

    move-result v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Red;->imageID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Red;->iconWidth:I

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Red;->imageID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/button/Button_NotificationResource_Red;->iconHeight:I

    return-void
.end method
