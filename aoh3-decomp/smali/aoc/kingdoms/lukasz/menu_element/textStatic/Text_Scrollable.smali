.class public Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "Text_Scrollable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$DrawText;,
        Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$TextPosition;
    }
.end annotation


# instance fields
.field private center:Z

.field private drawText:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$DrawText;

.field private fTextScale:F

.field private iScrollPosX:I

.field protected iTextHeight:I

.field protected iTextWidth:I

.field private lTime:J

.field protected sText:Ljava/lang/String;

.field private scrollInRightDirection:Z

.field private scrollable:Z

.field private textColor:Lcom/badlogic/gdx/graphics/Color;

.field protected textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$TextPosition;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;)V
    .locals 10

    move-object v9, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->sText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextWidth:I

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fTextScale:F

    const/4 v0, 0x0

    iput-boolean v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->center:Z

    iput-boolean v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollable:Z

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    const/4 v0, 0x1

    iput-boolean v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;F)V
    .locals 10

    move-object v9, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->sText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextWidth:I

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fTextScale:F

    const/4 v0, 0x0

    iput-boolean v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->center:Z

    iput-boolean v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollable:Z

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    const/4 v0, 0x1

    iput-boolean v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V
    .locals 1

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->sText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fTextScale:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->center:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollable:Z

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z

    invoke-direct/range {p0 .. p8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;)V
    .locals 10

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->sText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextWidth:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fTextScale:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->center:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollable:Z

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v9}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILcom/badlogic/gdx/graphics/Color;F)V
    .locals 10

    move-object v9, p0

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v0, 0x0

    iput-object v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->sText:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextWidth:I

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fTextScale:F

    const/4 v0, 0x0

    iput-boolean v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->center:Z

    iput-boolean v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollable:Z

    iput v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    const/4 v0, 0x1

    iput-boolean v0, v9, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V

    return-void
.end method

.method static synthetic access$000(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)F
    .locals 0

    iget p0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fTextScale:F

    return p0
.end method

.method static synthetic access$100(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I
    .locals 0

    iget p0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fontID:I

    return p0
.end method

.method static synthetic access$200(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I
    .locals 0

    iget p0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fontID:I

    return p0
.end method

.method static synthetic access$300(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I
    .locals 0

    iget p0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    return p0
.end method

.method static synthetic access$304(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    return v0
.end method

.method static synthetic access$306(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    return v0
.end method

.method static synthetic access$400(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)J
    .locals 2

    iget-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->lTime:J

    return-wide v0
.end method

.method static synthetic access$402(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;J)J
    .locals 0

    iput-wide p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->lTime:J

    return-wide p1
.end method

.method static synthetic access$500(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)Z
    .locals 0

    iget-boolean p0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z

    return p0
.end method

.method static synthetic access$502(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;Z)Z
    .locals 0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z

    return p1
.end method

.method private final init(Ljava/lang/String;IIIILcom/badlogic/gdx/graphics/Color;FI)V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->TEXT_SCROLLABLE:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput p8, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    iput p7, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fTextScale:F

    if-gez p8, :cond_0

    const/4 p7, 0x1

    goto :goto_0

    :cond_0
    const/4 p7, 0x0

    :goto_0
    iput-boolean p7, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->center:Z

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->setPosX(I)V

    invoke-virtual {p0, p3}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->setPosY(I)V

    invoke-virtual {p0, p4}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->setWidth(I)V

    if-lez p5, :cond_1

    invoke-virtual {p0, p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->setHeight(I)V

    :cond_1
    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->setText(Ljava/lang/String;)V

    iput-object p6, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->textColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->updateTextPosition()V

    iget p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fTextScale:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-eqz p1, :cond_2

    new-instance p1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$1;-><init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->drawText:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$DrawText;

    goto :goto_1

    :cond_2
    new-instance p1, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$2;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$2;-><init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->drawText:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$DrawText;

    :goto_1
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getPosX()I

    move-result v0

    add-int/2addr v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getPosY()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getHeight()I

    move-result v3

    neg-int v3, v3

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-static {p1, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->draw_Element(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    invoke-virtual/range {p0 .. p5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->draw_EndClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    return-void
.end method

.method protected draw_Element(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->drawText:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$DrawText;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$DrawText;->draw_Element(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected draw_EndClip(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 0

    invoke-static {p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    return-void
.end method

.method public getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 2

    if-eqz p1, :cond_0

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getIsHovered()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Laoc/kingdoms/lukasz/menu/Colors;->BUTTON_TEXT_HOVERED:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->textColor:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3f333333    # 0.7f

    const v1, 0x3f47ae14    # 0.78f

    invoke-direct {p1, v1, v1, v1, v0}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    :goto_0
    return-object p1
.end method

.method public getScrollPosX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    return v0
.end method

.method public getScrollable()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollable:Z

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextHeight()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextHeight:I

    return v0
.end method

.method public getTextWidth()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextWidth:I

    return v0
.end method

.method public scrollByWheel(I)V
    .locals 4

    if-gez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getScrollPosX()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->setScrollPosX(I)V

    sget-wide v0, Laoc/kingdoms/lukasz/jakowski/CFG;->currentTimeMillis:J

    const-wide/16 v2, 0x177

    add-long/2addr v0, v2

    iput-wide v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->lTime:J

    return-void
.end method

.method public setScrollPosX(I)V
    .locals 1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    if-le p1, v0, :cond_0

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getTextWidth()I

    move-result p1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p1, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    neg-int v0, v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getTextWidth()I

    move-result p1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr p1, v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    neg-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->sText:Ljava/lang/String;

    :try_start_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fTextScale:F

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setFontScale(F)V

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v0, v1, p1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextWidth:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextHeight:I

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->resetFontScale()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->updateTextPosition()V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getHeight()I

    move-result p1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iTextHeight:I

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected final updateTextPosition()V
    .locals 4

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getTextWidth()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->getWidth()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$3;-><init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$TextPosition;

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollable:Z

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->center:Z

    if-eqz v0, :cond_1

    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$4;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$4;-><init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$TextPosition;

    goto :goto_0

    :cond_1
    new-instance v0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$5;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$5;-><init>(Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->textPosition:Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable$TextPosition;

    :goto_0
    iput-boolean v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollable:Z

    :goto_1
    iput v2, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->iScrollPosX:I

    iput-boolean v3, p0, Laoc/kingdoms/lukasz/menu_element/textStatic/Text_Scrollable;->scrollInRightDirection:Z

    return-void
.end method
