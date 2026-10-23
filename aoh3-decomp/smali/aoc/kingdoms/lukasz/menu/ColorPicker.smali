.class public Laoc/kingdoms/lukasz/menu/ColorPicker;
.super Ljava/lang/Object;
.source "ColorPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;,
        Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;,
        Laoc/kingdoms/lukasz/menu/ColorPicker$Box;
    }
.end annotation


# static fields
.field public static ACTIVE_CIV_ID:I = 0x0

.field public static activeColor:Lcom/badlogic/gdx/graphics/Color; = null

.field public static activeRGB:I = -0x1

.field public static hueColor:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

.field private final RGB_TEXT_SCALE:F

.field private activeClose:Z

.field private activeHUE:Z

.field private activeMove:Z

.field private activeResize:Z

.field private activeSV:Z

.field private colorSVPos:Lcom/badlogic/gdx/graphics/Color;

.field private fAlpha:F

.field private fontID:I

.field private hsv:[F

.field private hueVal:F

.field private iActiveColorID:I

.field private iBTextWidth:I

.field private iGTextWidth:I

.field private iHUEWidth:I

.field private iLastHUEPosY:I

.field private iLastSVPosX:I

.field private iLastSVPosY:I

.field private iPosX:I

.field private iPosY:I

.field private iRGBTextWidth:I

.field private iRTextWidth:I

.field private iResizeHeight:I

.field private iSVHeight:I

.field private iStartPosX:I

.field private iStartPosY:I

.field private iStartResizeHeight:I

.field private lColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/badlogic/gdx/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field private lColorsBoxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu/ColorPicker$Box;",
            ">;"
        }
    .end annotation
.end field

.field private lRGBBoxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu/ColorPicker$Box;",
            ">;"
        }
    .end annotation
.end field

.field private visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hueColor:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->visible:Z

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fontID:I

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeHUE:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeSV:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeResize:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeMove:Z

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeClose:Z

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iActiveColorID:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fAlpha:F

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->colorSVPos:Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f666666    # 0.9f

    iput v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->RGB_TEXT_SCALE:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hueVal:F

    new-instance v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;-><init>()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    const-string v2, "G 255"

    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iRGBTextWidth:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateRGBWidth()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int v4, v1, v2

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iRGBTextWidth:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v6, v1, v2

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v4, v1, v2

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iRGBTextWidth:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v6, v1, v2

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    mul-int/lit8 v2, v2, 0x2

    add-int v4, v1, v2

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iRGBTextWidth:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v5, v1, v2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v6, v1, v2

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->NONE_ACTION:Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;

    invoke-virtual {p0, v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateColorPicker_Action(Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final HSVtoRGB([FLcom/badlogic/gdx/graphics/Color;)V
    .locals 9

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v2, p1, v1

    const/4 v3, 0x2

    aget p1, p1, v3

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v4, :cond_0

    move v0, p1

    move v6, v0

    goto :goto_1

    :cond_0
    const/high16 v4, 0x42700000    # 60.0f

    div-float/2addr v0, v4

    float-to-int v4, v0

    int-to-float v6, v4

    sub-float/2addr v0, v6

    sub-float v6, v5, v2

    mul-float/2addr v6, p1

    mul-float v7, v2, v0

    sub-float v7, v5, v7

    mul-float/2addr v7, p1

    sub-float v0, v5, v0

    mul-float/2addr v2, v0

    sub-float v0, v5, v2

    mul-float/2addr v0, p1

    if-eqz v4, :cond_5

    if-eq v4, v1, :cond_4

    if-eq v4, v3, :cond_3

    const/4 v1, 0x3

    if-eq v4, v1, :cond_2

    const/4 v1, 0x4

    if-eq v4, v1, :cond_1

    move v0, v7

    goto :goto_1

    :cond_1
    move v8, v0

    move v0, p1

    goto :goto_0

    :cond_2
    move v0, p1

    move p1, v6

    move v6, v7

    goto :goto_1

    :cond_3
    move v8, v6

    move v6, p1

    :goto_0
    move p1, v8

    goto :goto_1

    :cond_4
    move v0, v6

    move v6, p1

    move p1, v7

    goto :goto_1

    :cond_5
    move v8, v6

    move v6, v0

    move v0, v8

    :goto_1
    iput p1, p2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iput v6, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iput v0, p2, Lcom/badlogic/gdx/graphics/Color;->b:F

    iput v5, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    return-void
.end method

.method private final getPickerHue_InnerShadowWidth()I
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private final setActiveRGB_Box(II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    if-lt p1, v1, :cond_0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v2

    add-int/2addr v1, v2

    if-lt p2, v1, :cond_0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-gt p2, v1, :cond_0

    sput v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 p1, -0x1

    sput p1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    return-void
.end method

.method private final showKeyboard()V
    .locals 6

    sget v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    if-ltz v0, :cond_3

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    :cond_0
    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;->COLORPICKER:Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;

    sget v2, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    const/high16 v3, 0x437f0000    # 255.0f

    const-string v4, ""

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->r:F

    :goto_0
    mul-float/2addr v4, v3

    float-to-int v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->g:F

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v1, v2}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->showKeyboard(Laoc/kingdoms/lukasz/jakowski/Keyboard$KeyboardActionType;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private final updateColorSVPos(I)V
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->colorSVPos:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->colorSVPos:Lcom/badlogic/gdx/graphics/Color;

    :goto_0
    return-void
.end method

.method private final updateHUE(I)V
    .locals 4

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    const/high16 v3, 0x43b40000    # 360.0f

    mul-float/2addr v0, v3

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hueVal:F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x2

    aput v1, v2, v0

    const/4 v0, 0x1

    aput v1, v2, v0

    sget-object v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hueColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, v2, v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->HSVtoRGB([FLcom/badlogic/gdx/graphics/Color;)V

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    invoke-direct {p0, v0, v1}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateSV(II)V

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastHUEPosY:I

    return-void
.end method

.method private final updateSV(II)V
    .locals 5

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    int-to-float v1, v0

    div-float/2addr p1, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int v2, p2, v1

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    const/4 v3, 0x0

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hueVal:F

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    const/4 p1, 0x2

    aput v0, v2, p1

    sub-int/2addr p2, v1

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateColorSVPos(I)V

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    sget-object p2, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->HSVtoRGB([FLcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateRGBWidth()V

    return-void
.end method


# virtual methods
.method public final RGBtoHSV(III)V
    .locals 8

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v2, v0, v1

    const/high16 v3, 0x43b40000    # 360.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_0

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    const/4 v2, 0x0

    aput v2, v0, v4

    aput v2, v0, v5

    goto :goto_4

    :cond_0
    float-to-int v2, v0

    if-ne p1, v2, :cond_1

    sub-int v6, p2, p3

    :goto_0
    int-to-float v6, v6

    goto :goto_1

    :cond_1
    if-ne p2, v2, :cond_2

    sub-int v6, p3, p1

    goto :goto_0

    :cond_2
    sub-int v6, p1, p2

    goto :goto_0

    :goto_1
    if-ne p1, v2, :cond_3

    const/high16 v2, 0x40400000    # 3.0f

    goto :goto_3

    :cond_3
    if-ne p2, v2, :cond_4

    const/4 v2, 0x5

    goto :goto_2

    :cond_4
    move v2, v5

    :goto_2
    int-to-float v2, v2

    :goto_3
    iget-object v7, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    sub-float v0, v1, v0

    div-float/2addr v6, v0

    sub-float/2addr v2, v6

    const/high16 v6, 0x42700000    # 60.0f

    mul-float/2addr v2, v6

    rem-float/2addr v2, v3

    aput v2, v7, v4

    div-float/2addr v0, v1

    aput v0, v7, v5

    :goto_4
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hsv:[F

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    const/4 v6, 0x2

    aput v1, v0, v6

    aget v4, v0, v4

    iput v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hueVal:F

    aget v0, v0, v5

    iget v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    int-to-float v6, v5

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    neg-float v1, v1

    int-to-float v6, v5

    mul-float/2addr v1, v6

    int-to-float v6, v5

    add-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    int-to-float v6, v5

    div-float/2addr v4, v3

    int-to-float v3, v5

    mul-float/2addr v4, v3

    sub-float/2addr v6, v4

    float-to-int v3, v6

    iput v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastHUEPosY:I

    iget v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    add-int/2addr v0, v3

    add-int/2addr v3, v1

    invoke-direct {p0, v0, v3}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateSV(II)V

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastHUEPosY:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateHUE(I)V

    sget-object v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    int-to-float p1, p1

    div-float/2addr p1, v2

    iput p1, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object p1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    int-to-float p2, p2

    div-float/2addr p2, v2

    iput p2, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object p1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    int-to-float p2, p3

    div-float/2addr p2, v2

    iput p2, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateRGBWidth()V

    return-void
.end method

.method public final buildColors()V
    .locals 12

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    new-instance v7, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    const/4 v3, 0x0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getColorBoxWidth()I

    move-result v5

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int v6, v1, v2

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;IIII)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v0

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    new-instance v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getColorBoxWidth()I

    move-result v10

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    add-int v11, v3, v4

    move-object v6, v2

    move-object v7, p0

    move v8, v0

    invoke-direct/range {v6 .. v11}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;IIII)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v3, v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v7, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v8, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getColorBoxWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;I)V
    .locals 18

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->fAlpha:F

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v11, v8, v8, v8, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    const/4 v12, 0x2

    mul-int/2addr v1, v12

    sub-int/2addr v0, v1

    add-int v1, v0, p2

    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v2, v12

    sub-int v2, v0, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v0

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getHeight()I

    move-result v0

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v4, v0

    iget v5, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->fAlpha:F

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxHover(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIF)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerHUE:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v4, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    iget v5, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e8ccccd    # 0.275f

    const/4 v13, 0x0

    invoke-direct {v0, v13, v13, v13, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getPickerHue_InnerShadowWidth()I

    move-result v4

    iget v5, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientHorizontal:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v1, v2

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getPickerHue_InnerShadowWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v2, v1, p2

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getPickerHue_InnerShadowWidth()I

    move-result v4

    iget v5, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    add-int v2, v1, p2

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v5, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    move-object/from16 v1, p1

    move v4, v5

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->hueColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerSV:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    add-int v2, v1, p2

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v5, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    move-object/from16 v1, p1

    move v4, v5

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget-boolean v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeMove:Z

    const/4 v14, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    add-int/2addr v1, v14

    add-int v2, v1, p2

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f533333    # 0.825f

    invoke-direct {v0, v13, v13, v13, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    add-int/2addr v1, v14

    add-int v2, v1, p2

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V

    :goto_0
    iget-boolean v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeResize:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v1, v1, p2

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v11, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    goto/16 :goto_1

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f2ccccd    # 0.675f

    invoke-direct {v0, v8, v8, v8, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v1, v1, p2

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->pickerEdge:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v11, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    add-int v0, v0, p2

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int/2addr v1, v2

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    neg-int v3, v2

    invoke-static {v11, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_Start(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->colorSVPos:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerSVPos:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->pickerSVPos:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    div-int/2addr v2, v12

    sub-int/2addr v1, v2

    add-int v1, v1, p2

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->pickerSVPos:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    div-int/2addr v3, v12

    sub-int/2addr v2, v3

    invoke-virtual {v0, v11, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clipView_End(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->fAlpha:F

    invoke-virtual {v11, v13, v13, v13, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v0, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    add-int v2, v1, p2

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int/2addr v1, v14

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastHUEPosY:I

    add-int/2addr v3, v1

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/2addr v4, v12

    sub-int/2addr v1, v4

    add-int/lit8 v4, v1, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_1
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    add-int v0, v0, p2

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int/2addr v1, v14

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/lit8 v3, v2, 0x2

    invoke-static {v11, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v1

    add-int v0, v0, p2

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int/2addr v2, v14

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v1, v12

    invoke-static {v11, v0, v2, v3, v1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    const/4 v2, 0x0

    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v0, v1

    iget-object v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    const/4 v15, 0x0

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    add-int v3, v0, p2

    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget-object v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v1

    add-int v4, v0, v1

    iget-object v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v5

    iget-object v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v6

    const-string v7, "R"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v16, 0x437f0000    # 255.0f

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iRTextWidth:I

    move-object/from16 v0, p0

    move/from16 v17, v1

    move-object/from16 v1, p1

    move-object v15, v9

    move/from16 v9, v17

    invoke-virtual/range {v0 .. v9}, Laoc/kingdoms/lukasz/menu/ColorPicker;->drawRGBText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILjava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x1

    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v0, v1

    iget-object v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    add-int v3, v0, p2

    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget-object v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v1

    add-int v4, v0, v1

    iget-object v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v5

    iget-object v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v6

    const-string v7, "G"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iGTextWidth:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v9}, Laoc/kingdoms/lukasz/menu/ColorPicker;->drawRGBText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILjava/lang/String;Ljava/lang/String;I)V

    const/4 v2, 0x2

    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v0, v1

    iget-object v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    add-int v3, v0, p2

    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget-object v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v1

    add-int v4, v0, v1

    iget-object v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v5

    iget-object v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/AI/Values/nvwi/cIUGJCqyPXfp;->MphfjcrlfjUvXGg:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float v1, v1, v16

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iBTextWidth:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v9}, Laoc/kingdoms/lukasz/menu/ColorPicker;->drawRGBText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILjava/lang/String;Ljava/lang/String;I)V

    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    add-int v0, v0, p2

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v2

    invoke-virtual {v10, v11, v0, v1}, Laoc/kingdoms/lukasz/menu/ColorPicker;->drawColorBoxes(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e333333    # 0.175f

    invoke-direct {v0, v13, v13, v13, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget-object v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v4, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v4

    iget-object v4, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v4

    iget-object v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v14

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iActiveColorID:I

    if-ltz v0, :cond_3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v13, v13, v13, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget-object v2, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iActiveColorID:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v2

    add-int/2addr v1, v2

    add-int v2, v1, p2

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v3

    iget-object v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    iget v4, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iActiveColorID:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v4

    iget-object v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v14

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v5

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_3
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->fAlpha:F

    invoke-direct {v0, v13, v13, v13, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget-object v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    add-int v0, v0, p2

    iget v1, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v1, v3

    iget-object v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v2

    iget-object v3, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v14

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v3

    invoke-static {v11, v0, v1, v2, v3}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-boolean v0, v10, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeClose:Z

    if-eqz v0, :cond_4

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->btnh_close:I

    goto :goto_2

    :cond_4
    sget v0, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    :goto_2
    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int v1, v1, p2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getPosY()I

    move-result v2

    invoke-virtual {v0, v11, v1, v2}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    return-void
.end method

.method public final drawColorBoxes(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V
    .locals 11

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fAlpha:F

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v5, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v1

    add-int v7, p2, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v1

    add-int v8, p3, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v9

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v10

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fAlpha:F

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->gradientVertical:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v1

    add-int/2addr v1, p2

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v3

    add-int v4, v1, v3

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v1

    add-int v5, p3, v1

    const/4 v6, 0x1

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v7

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public final drawRGBText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIILjava/lang/String;Ljava/lang/String;I)V
    .locals 12

    move-object v0, p0

    move-object v7, p1

    move v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_COLOR_PICKER_RGB_BG:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->pix:Laoc/kingdoms/lukasz/textures/Image;

    move-object v2, p1

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget v1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    move v2, p2

    if-ne v1, v2, :cond_0

    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_LOADING_SPLIT_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    sget-object v1, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_LOADING_SPLIT:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    invoke-static {p1, p3, v9, v10, v11}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    add-int/lit8 v1, v8, -0x1

    add-int/lit8 v2, v9, -0x1

    add-int/lit8 v3, v10, 0x2

    add-int/lit8 v4, v11, 0x2

    invoke-static {p1, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawRect(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v2, v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fontID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v4, v8, v1

    div-int/lit8 v1, v11, 0x2

    add-int/2addr v9, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int v5, v9, v1

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3f6147ae    # 0.88f

    const v3, 0x3f570a3d    # 0.84f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v6, v3, v3, v1, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    move-object v1, p1

    move-object/from16 v3, p7

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    const v2, 0x3f666666    # 0.9f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    iget v1, v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fontID:I

    add-int v3, v8, v10

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v3, v4

    move/from16 v4, p9

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v2, v4

    sub-int v2, v3, v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v9, v3

    sget-object v4, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move p2, v1

    move-object/from16 p3, p8

    move/from16 p4, v2

    move/from16 p5, v3

    move-object/from16 p6, v4

    invoke-static/range {p1 .. p6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fontID:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setScale(F)V

    return-void
.end method

.method public final getActiveColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public final getColorBoxWidth()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public getColorPickerAction()Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

    return-object v0
.end method

.method public final getHeight()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method

.method public final getPosX()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    return v0
.end method

.method public final getPosY()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    return v0
.end method

.method public final getVisible()Z
    .locals 1

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->visible:Z

    return v0
.end method

.method public final getWidth()I
    .locals 2

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iRGBTextWidth:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method

.method public final hideColorPicker()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->visible:Z

    new-instance v0, Laoc/kingdoms/lukasz/menu/ColorPicker$8;

    invoke-direct {v0, p0}, Laoc/kingdoms/lukasz/menu/ColorPicker$8;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;)V

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

    return-void
.end method

.method public final setActiveRGBColor(FFF)V
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setActiveRGBColor(III)V

    return-void
.end method

.method public final setActiveRGBColor(III)V
    .locals 1

    sget-boolean v0, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-nez v0, :cond_0

    sget v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    sput v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Laoc/kingdoms/lukasz/menu/ColorPicker;->RGBtoHSV(III)V

    return-void
.end method

.method public final setHueWidth(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    return-void
.end method

.method public final setPosX(I)V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->pickerSV:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerSV:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_1

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p1, p1, 0x2

    :cond_1
    :goto_0
    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    return-void
.end method

.method public final setPosY(I)V
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->pickerSV:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerSV:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_1

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 p1, p1, 0x2

    :cond_1
    :goto_0
    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    return-void
.end method

.method public final setResizeHeight(I)V
    .locals 0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iResizeHeight:I

    return-void
.end method

.method public final setSVHeight(I)V
    .locals 5

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->pickerSV:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    if-ge p1, v0, :cond_0

    sget p1, Laoc/kingdoms/lukasz/textures/Images;->pickerSV:I

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getPosY()I

    move-result v0

    add-int/2addr v0, p1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    if-le v0, v1, :cond_1

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getPosY()I

    move-result v0

    sub-int/2addr p1, v0

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    :cond_1
    :goto_0
    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    const/4 p1, 0x1

    move v0, p1

    :goto_1
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->setWidth(I)V

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->setVisible(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p1

    :goto_2
    if-lez v0, :cond_5

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v3

    if-le v1, v3, :cond_3

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1, v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->setVisible(Z)V

    goto :goto_3

    :cond_3
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1, p1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->setVisible(Z)V

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v1

    iget-object v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v3

    if-le v1, v3, :cond_4

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v3

    iget-object v4, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->setWidth(I)V

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final setVisible(ZLaoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateColorPicker_Action(Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;)V

    goto :goto_0

    :cond_0
    new-instance p2, Laoc/kingdoms/lukasz/menu/ColorPicker$9;

    invoke-direct {p2, p0}, Laoc/kingdoms/lukasz/menu/ColorPicker$9;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;)V

    iput-object p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

    :goto_0
    iput-boolean p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->visible:Z

    sget-boolean p1, Laoc/kingdoms/lukasz/jakowski/Keyboard;->keyboardMode:Z

    if-nez p1, :cond_1

    sget p1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    if-ltz p1, :cond_2

    :cond_1
    const/4 p1, -0x1

    sput p1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    :cond_2
    return-void
.end method

.method public final touch(II)V
    .locals 9

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeHUE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    if-gt p2, v0, :cond_0

    add-int/lit8 p2, v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int v2, v0, v1

    if-le p2, v2, :cond_1

    add-int p2, v0, v1

    :cond_1
    :goto_0
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    goto :goto_1

    :cond_2
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v0, v1

    if-le p1, v0, :cond_3

    sget p1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    :cond_3
    :goto_1
    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateHUE(I)V

    iget p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    add-int/2addr p1, p2

    iget p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    add-int/2addr p2, v0

    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateSV(II)V

    goto/16 :goto_7

    :cond_4
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeSV:Z

    if-eqz v0, :cond_9

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    if-ge p2, v0, :cond_5

    move p2, v0

    goto :goto_2

    :cond_5
    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int v2, v0, v1

    if-le p2, v2, :cond_6

    add-int p2, v0, v1

    :cond_6
    :goto_2
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    if-ge p1, v0, :cond_7

    move p1, v0

    goto :goto_3

    :cond_7
    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int v2, v0, v1

    if-le p1, v2, :cond_8

    add-int p1, v0, v1

    :cond_8
    :goto_3
    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateSV(II)V

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    sub-int/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    iget p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int/2addr p2, p1

    iput p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    goto/16 :goto_7

    :cond_9
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeResize:Z

    if-eqz v0, :cond_a

    iget p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int/2addr p2, p1

    iget p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iStartPosY:I

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setSVHeight(I)V

    return-void

    :cond_a
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeMove:Z

    const/high16 v2, 0x3f400000    # 0.75f

    if-eqz v0, :cond_b

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iStartPosX:I

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setPosX(I)V

    iget p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iStartPosY:I

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setPosY(I)V

    iput v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fAlpha:F

    return-void

    :cond_b
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iActiveColorID:I

    const/4 v3, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    if-ltz v0, :cond_d

    :goto_4
    iget-object p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v3, p2, :cond_18

    iget-object p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {p2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getVisible()Z

    move-result p2

    if-eqz p2, :cond_c

    iget p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v0

    add-int/2addr p2, v0

    if-lt p1, p2, :cond_c

    iget p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v0

    add-int/2addr p2, v0

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v0

    add-int/2addr p2, v0

    if-gt p1, p2, :cond_c

    iput v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iActiveColorID:I

    sget-object p1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr p1, v4

    float-to-int p1, p1

    iget-object p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/Color;

    iget p2, p2, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr p2, v4

    float-to-int p2, p2

    if-eq p1, p2, :cond_18

    sget-object p1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr p1, v4

    float-to-int p1, p1

    iget-object p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/Color;

    iget p2, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr p2, v4

    float-to-int p2, p2

    if-eq p1, p2, :cond_18

    sget-object p1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr p1, v4

    float-to-int p1, p1

    iget-object p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/Color;

    iget p2, p2, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr p2, v4

    float-to-int p2, p2

    if-eq p1, p2, :cond_18

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/Color;

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr p1, v4

    float-to-int p1, p1

    iget-object p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/Color;

    iget p2, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr p2, v4

    float-to-int p2, p2

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->RGBtoHSV(III)V

    goto/16 :goto_7

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :cond_d
    sget v0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    if-ltz v0, :cond_e

    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setActiveRGB_Box(II)V

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->showKeyboard()V

    goto/16 :goto_7

    :cond_e
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeClose:Z

    if-eqz v0, :cond_f

    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    iput p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    goto/16 :goto_7

    :cond_f
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int v6, v0, v5

    iget v7, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iResizeHeight:I

    sub-int/2addr v6, v7

    if-lt p1, v6, :cond_10

    add-int v6, v0, v5

    if-gt p1, v6, :cond_10

    iget v6, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    add-int v8, v6, v5

    sub-int/2addr v8, v7

    if-lt p2, v8, :cond_10

    add-int v8, v6, v5

    if-gt p2, v8, :cond_10

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeResize:Z

    sub-int/2addr p2, v6

    sub-int/2addr p2, v5

    iput p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iStartPosY:I

    iput v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iStartResizeHeight:I

    iput v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fAlpha:F

    return-void

    :cond_10
    if-lt p1, v0, :cond_11

    add-int v2, v0, v7

    if-gt p1, v2, :cond_11

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    if-lt p2, v2, :cond_11

    add-int/2addr v7, v2

    if-gt p2, v7, :cond_11

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeMove:Z

    sub-int/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iStartPosX:I

    sub-int/2addr p2, v2

    iput p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iStartPosY:I

    return-void

    :cond_11
    add-int/2addr v0, v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    const/4 v2, -0x1

    if-lt p1, v0, :cond_12

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v5

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v5

    iget v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v0, v5

    if-gt p1, v0, :cond_12

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    if-lt p2, v0, :cond_12

    iget v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v5

    if-gt p2, v0, :cond_12

    invoke-direct {p0, p2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateHUE(I)V

    iget p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    add-int/2addr p1, p2

    iget p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    add-int/2addr p2, v0

    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateSV(II)V

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeHUE:Z

    sput v2, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    goto/16 :goto_7

    :cond_12
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    if-lt p1, v0, :cond_13

    iget v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int v6, v0, v5

    if-gt p1, v6, :cond_13

    iget v6, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    if-lt p2, v6, :cond_13

    add-int/2addr v6, v5

    if-gt p2, v6, :cond_13

    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->updateSV(II)V

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeSV:Z

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    sub-int/2addr p1, v0

    iput p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    iget p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    sub-int/2addr p2, p1

    iput p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    sput v2, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    goto/16 :goto_7

    :cond_13
    iget-object v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v5

    add-int/2addr v0, v5

    if-lt p1, v0, :cond_16

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v5

    add-int/2addr v0, v5

    if-gt p1, v0, :cond_16

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v5

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v5

    add-int/2addr v0, v5

    if-lt p2, v0, :cond_16

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v5

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v5

    add-int/2addr v0, v5

    iget-object v5, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v5}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    if-gt p2, v0, :cond_16

    :goto_5
    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_15

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p1, v0, :cond_14

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_14

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_14

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColorsBoxes:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    if-gt p2, v0, :cond_14

    iput v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iActiveColorID:I

    sget-object p1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr p1, v4

    float-to-int p1, p1

    iget-object p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/Color;

    iget p2, p2, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr p2, v4

    float-to-int p2, p2

    if-eq p1, p2, :cond_15

    sget-object p1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr p1, v4

    float-to-int p1, p1

    iget-object p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/Color;

    iget p2, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr p2, v4

    float-to-int p2, p2

    if-eq p1, p2, :cond_15

    sget-object p1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr p1, v4

    float-to-int p1, p1

    iget-object p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/Color;

    iget p2, p2, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr p2, v4

    float-to-int p2, p2

    if-eq p1, p2, :cond_15

    iget-object p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/Color;

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    mul-float/2addr p1, v4

    float-to-int p1, p1

    iget-object p2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/Color;

    iget p2, p2, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr p2, v4

    float-to-int p2, p2

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {p0, p1, p2, v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->RGBtoHSV(III)V

    goto :goto_6

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_15
    :goto_6
    sput v2, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeRGB:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Game;->keyboard:Laoc/kingdoms/lukasz/jakowski/Keyboard;

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/jakowski/Keyboard;->hideKeyboard()V

    goto/16 :goto_7

    :cond_16
    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v2

    add-int/2addr v0, v2

    if-lt p1, v0, :cond_17

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iHUEWidth:I

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosX()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_17

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v2

    add-int/2addr v0, v2

    if-lt p2, v0, :cond_17

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getPosY()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lRGBBoxes:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/menu/ColorPicker$Box;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    if-gt p2, v0, :cond_17

    invoke-direct {p0, p1, p2}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setActiveRGB_Box(II)V

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->showKeyboard()V

    goto :goto_7

    :cond_17
    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    if-lt p1, v0, :cond_18

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getPosX()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    if-gt p1, v0, :cond_18

    iget p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    if-lt p2, p1, :cond_18

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    add-int/2addr p1, v0

    if-gt p2, p1, :cond_18

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeClose:Z

    :cond_18
    :goto_7
    iget-object p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

    invoke-interface {p1}, Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;->update()V

    return-void
.end method

.method public final touchUp()V
    .locals 5

    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeResize:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iSVHeight:I

    mul-int/2addr v0, v2

    int-to-float v0, v0

    iget v3, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iStartResizeHeight:I

    int-to-float v4, v3

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    mul-int/2addr v0, v2

    int-to-float v0, v0

    int-to-float v4, v3

    div-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastHUEPosY:I

    mul-int/2addr v0, v2

    int-to-float v0, v0

    int-to-float v2, v3

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastHUEPosY:I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeClose:Z

    if-eqz v0, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosX:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getPosX()I

    move-result v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_1

    iget v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iLastSVPosY:I

    iget v2, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iPosY:I

    if-lt v0, v2, :cond_1

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->btn_close:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Laoc/kingdoms/lukasz/menu/ColorPicker;->setVisible(ZLaoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;)V

    :cond_1
    :goto_0
    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeSV:Z

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeHUE:Z

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeResize:Z

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeMove:Z

    iput-boolean v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeClose:Z

    const/4 v0, -0x1

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iActiveColorID:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->fAlpha:F

    return-void
.end method

.method public final updateColorPicker_Action(Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;)V
    .locals 1

    sget-object v0, Laoc/kingdoms/lukasz/menu/ColorPicker$10;->$SwitchMap$aoc$kingdoms$lukasz$menu$ColorPicker$PickerAction:[I

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/menu/ColorPicker$PickerAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Laoc/kingdoms/lukasz/menu/ColorPicker$7;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu/ColorPicker$7;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

    goto :goto_0

    :pswitch_0
    new-instance p1, Laoc/kingdoms/lukasz/menu/ColorPicker$6;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu/ColorPicker$6;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

    goto :goto_0

    :pswitch_1
    new-instance p1, Laoc/kingdoms/lukasz/menu/ColorPicker$5;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu/ColorPicker$5;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

    goto :goto_0

    :pswitch_2
    new-instance p1, Laoc/kingdoms/lukasz/menu/ColorPicker$4;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu/ColorPicker$4;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

    goto :goto_0

    :pswitch_3
    new-instance p1, Laoc/kingdoms/lukasz/menu/ColorPicker$3;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu/ColorPicker$3;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

    goto :goto_0

    :pswitch_4
    new-instance p1, Laoc/kingdoms/lukasz/menu/ColorPicker$2;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu/ColorPicker$2;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

    goto :goto_0

    :pswitch_5
    new-instance p1, Laoc/kingdoms/lukasz/menu/ColorPicker$1;

    invoke-direct {p1, p0}, Laoc/kingdoms/lukasz/menu/ColorPicker$1;-><init>(Laoc/kingdoms/lukasz/menu/ColorPicker;)V

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->ColorPicker_AoC_Action:Laoc/kingdoms/lukasz/menu/ColorPicker$ColorPicker_AoC_Action;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final updateColors()V
    .locals 9

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    sget-object v3, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    sget-object v4, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->lColors:Ljava/util/List;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    const/16 v4, 0x100

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v3, v6

    sget-object v7, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v7, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v6

    sget-object v8, Laoc/kingdoms/lukasz/jakowski/Game;->oR:Ljava/util/Random;

    invoke-virtual {v8, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-direct {v2, v3, v7, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateRGBWidth()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    sget-object v1, Lcom/pairip/licensecheck/CohD/CaiJWNfqszJNZ;->QYDOcWqTsPqZe:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getTextWidth(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iRTextWidth:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getTextWidth(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iGTextWidth:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/menu/ColorPicker;->activeColor:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->getTextWidth(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Laoc/kingdoms/lukasz/menu/ColorPicker;->iBTextWidth:I

    return-void
.end method
