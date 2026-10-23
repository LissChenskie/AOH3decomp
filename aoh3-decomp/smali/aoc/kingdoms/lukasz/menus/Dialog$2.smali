.class Laoc/kingdoms/lukasz/menus/Dialog$2;
.super Laoc/kingdoms/lukasz/menu_element/button/Button;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menus/Dialog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menus/Dialog;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menus/Dialog;Ljava/lang/String;IIIIIZ)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    iput-object v0, v8, Laoc/kingdoms/lukasz/menus/Dialog$2;->this$0:Laoc/kingdoms/lukasz/menus/Dialog;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/Button;-><init>(Ljava/lang/String;IIIIIZ)V

    return-void
.end method


# virtual methods
.method public actionElement()V
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menus/Dialog$2;->this$0:Laoc/kingdoms/lukasz/menus/Dialog;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menus/Dialog;->disableButtons()V

    invoke-static {}, Laoc/kingdoms/lukasz/menus/Dialog;->dialogTrue()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/menus/Dialog$2;->this$0:Laoc/kingdoms/lukasz/menus/Dialog;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menus/Dialog;->closeMenu()V

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 10

    if-eqz p4, :cond_0

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->boxBIG_Red:I

    goto :goto_0

    :cond_0
    sget p4, Laoc/kingdoms/lukasz/textures/Images;->boxBIG:I

    :goto_0
    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Dialog$2;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Dialog$2;->getPosY()I

    move-result p4

    add-int v3, p4, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Dialog$2;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Dialog$2;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3e4ccccd    # 0.2f

    const/4 v1, 0x0

    invoke-direct {p4, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Dialog$2;->getPosX()I

    move-result p4

    add-int v4, p4, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Dialog$2;->getPosY()I

    move-result p2

    add-int v5, p2, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Dialog$2;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Dialog$2;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menus/Dialog$2;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorTopStats(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method
