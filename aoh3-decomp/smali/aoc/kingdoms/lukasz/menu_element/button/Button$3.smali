.class Laoc/kingdoms/lukasz/menu_element/button/Button$3;
.super Ljava/lang/Object;
.source "Button.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu_element/button/Button$Checkbox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu_element/button/Button;->buildCheckbox()Laoc/kingdoms/lukasz/menu_element/button/Button$Checkbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menu_element/button/Button;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drawCheckBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 11

    iget-object p4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getCheckboxState()Z

    move-result p4

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f0ccccd    # 0.55f

    invoke-direct {p4, v3, v1, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3e0c49ba    # 0.137f

    invoke-direct {p4, v1, v3, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    sget p4, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    iget-object p4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosX()I

    move-result p4

    add-int v5, p4, p2

    iget-object p4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosY()I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    add-int v6, p4, p3

    iget-object p4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result p4

    div-int/lit8 v7, p4, 0x4

    iget-object p4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getHeight()I

    move-result p4

    add-int/lit8 v8, p4, -0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    new-instance p4, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3dcccccd    # 0.1f

    invoke-direct {p4, v2, v2, v2, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget-object p4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    iget-object p4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosY()I

    move-result p4

    add-int/lit8 p4, p4, 0x1

    add-int v3, p4, p3

    iget-object p4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v4

    iget-object p4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getHeight()I

    move-result p4

    div-int/lit8 v5, p4, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget p4, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {p4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget-object p4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosX()I

    move-result p4

    add-int v2, p4, p2

    iget-object p2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getPosY()I

    move-result p2

    iget-object p4, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {p4}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getHeight()I

    move-result p4

    add-int/2addr p2, p4

    add-int/lit8 p2, p2, -0x1

    add-int/2addr p2, p3

    iget-object p3, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {p3}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x4

    sub-int v3, p2, p3

    iget-object p2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getWidth()I

    move-result v4

    iget-object p2, p0, Laoc/kingdoms/lukasz/menu_element/button/Button$3;->this$0:Laoc/kingdoms/lukasz/menu_element/button/Button;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/menu_element/button/Button;->getHeight()I

    move-result p2

    div-int/lit8 v5, p2, 0x4

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method
