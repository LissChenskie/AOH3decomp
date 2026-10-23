.class Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;
.super Ljava/lang/Object;
.source "Text_Scrollable.java"

# interfaces
.implements Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$DrawText;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;


# direct methods
.method constructor <init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)V
    .locals 0

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw_Element(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 6

    iget-object p5, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-static {p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$000(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)F

    move-result p5

    invoke-static {p5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setFontScale(F)V

    iget-object p5, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-static {p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->access$100(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I

    move-result v1

    iget-object p5, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getText()Ljava/lang/String;

    move-result-object v2

    iget-object p5, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getPosX()I

    move-result p5

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    iget-object v0, v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$TextPosition;

    invoke-interface {v0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$TextPosition;->getTextPosition(Z)I

    move-result v0

    add-int/2addr p5, v0

    add-int v3, p5, p2

    iget-object p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getPosY()I

    move-result p2

    iget-object p5, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-virtual {p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getHeight()I

    move-result p5

    div-int/lit8 p5, p5, 0x2

    add-int/2addr p2, p5

    iget-object p5, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    iget p5, p5, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextHeight:I

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p2, p5

    add-int v4, p2, p3

    iget-object p2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;->this$0:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;

    invoke-virtual {p2, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->resetFontScale()V

    return-void
.end method
