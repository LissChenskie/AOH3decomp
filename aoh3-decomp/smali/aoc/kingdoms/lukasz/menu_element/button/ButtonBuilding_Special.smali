.class public Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;
.super Laoc/kingdoms/lukasz/menu_element/MenuElement;
.source "ButtonBuilding_Special.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;
    }
.end annotation


# static fields
.field public static final COLOR_STATS:Lcom/badlogic/gdx/graphics/Color;

.field public static iconScale:F = 1.0f


# instance fields
.field public building:I

.field public buildingID:I

.field public built:Z

.field public colorBG:Lcom/badlogic/gdx/graphics/Color;

.field public colorMain:Lcom/badlogic/gdx/graphics/Color;

.field public colorOver:Lcom/badlogic/gdx/graphics/Color;

.field public iConstructedHeight:I

.field public iConstructedWidth:I

.field public iTextHeight:I

.field public iTextWidth:I

.field public iconMaxW:I

.field public innerStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;",
            ">;"
        }
    .end annotation
.end field

.field public sConstructed:Ljava/lang/String;

.field public sText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x3dc8c8c9

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3d20a0a1

    const v4, 0x3d70f0f1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->COLOR_STATS:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(ZIIIIIZZLjava/lang/String;)V
    .locals 19

    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p6

    move-object/from16 v0, p9

    invoke-direct/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;-><init>()V

    const/4 v12, 0x0

    iput v12, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iTextWidth:I

    iput v12, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iTextHeight:I

    iput-boolean v12, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->built:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->innerStats:Ljava/util/List;

    sget-object v1, Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;->BUTTON:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    iput-object v1, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->typeOfElement:Laoc/kingdoms/lukasz/menu_element/MenuElement_Type;

    move/from16 v1, p1

    iput-boolean v1, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->built:Z

    iput v9, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->building:I

    iput v10, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->buildingID:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    iput v1, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->fontID:I

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->sConstructed:Ljava/lang/String;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v2, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v1, v2, v0}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int v0, v0

    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iConstructedWidth:I

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget v0, v0, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int v0, v0

    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iConstructedHeight:I

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-direct {v8, v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getImageScale(I)F

    move-result v0

    sput v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iconScale:F

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sget v1, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iconScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iconMaxW:I

    move/from16 v0, p4

    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->setPosX(I)V

    move/from16 v0, p5

    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->setPosY(I)V

    invoke-virtual {v8, v11}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->setWidth(I)V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTopH()I

    move-result v0

    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->setHeight(I)V

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->Name:[Ljava/lang/String;

    aget-object v0, v0, v10

    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->setText(Ljava/lang/String;)V

    move/from16 v0, p7

    invoke-virtual {v8, v0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->setClickable(Z)V

    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->setVisible(Z)V

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    aget v0, v0, v10

    const/4 v14, 0x0

    cmpl-float v0, v0, v14

    if-lez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getInnerPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getInnerPosX()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    :goto_0
    move v15, v0

    iget-object v7, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->innerStats:Ljava/util/List;

    new-instance v6, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v4, -0x1

    invoke-static {v1, v4, v9, v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionCost(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->gold:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getInnerPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int v16, v0, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTitleHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v17, v0, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTopH()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTitleHeight()I

    move-result v1

    sget v18, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v18, v18, 0x3

    add-int v1, v1, v18

    sub-int v18, v0, v1

    move-object v0, v6

    move-object/from16 v1, p0

    move v12, v4

    move/from16 v4, v16

    move-object v13, v5

    move/from16 v5, v17

    move-object v14, v6

    move v6, v15

    move-object v12, v7

    move/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;-><init>(Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v12, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->innerStats:Ljava/util/List;

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Game;->lang:Laoc/kingdoms/lukasz/jakowski/LanguageManager;

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Game;->player:Laoc/kingdoms/lukasz/jakowski/Player/Player;

    iget v1, v1, Laoc/kingdoms/lukasz/jakowski/Player/Player;->iCivID:I

    const/4 v2, -0x1

    invoke-static {v1, v2, v9, v10}, Laoc/kingdoms/lukasz/jakowski/Game;->getBuildingConstructionTime(IIII)I

    move-result v1

    const-string v2, "XDays"

    invoke-virtual {v0, v2, v1}, Laoc/kingdoms/lukasz/jakowski/LanguageManager;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->buildTime:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getInnerPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int v4, v0, v15

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTitleHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTopH()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTitleHeight()I

    move-result v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v1, v6

    sub-int v7, v0, v1

    move-object v0, v14

    move-object/from16 v1, p0

    move v6, v15

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;-><init>(Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v0, v0, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    aget v0, v0, v10

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v12, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->innerStats:Ljava/util/List;

    new-instance v14, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->MaintenanceCost:[F

    aget v1, v1, v10

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Laoc/kingdoms/lukasz/jakowski/CFG;->getPrecision2(FI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->goldNegative:I

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getInnerPosX()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    mul-int/lit8 v1, v15, 0x2

    add-int v4, v0, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTitleHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTopH()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTitleHeight()I

    move-result v1

    sget v6, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v1, v6

    sub-int v7, v0, v1

    move-object v0, v14

    move-object/from16 v1, p0

    move v6, v15

    invoke-direct/range {v0 .. v7}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;-><init>(Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;Ljava/lang/String;IIIII)V

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p8, :cond_2

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG_BLUE:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_NOTIFICATION_BG:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorMain:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_NOTIFICATION_OVER:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_1

    :cond_2
    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_GRADIENT_BG:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_NOTIFICATION_BG_RED:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorMain:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_NOTIFICATION_OVER_RED:Lcom/badlogic/gdx/graphics/Color;

    iput-object v0, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget v1, v8, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iTextWidth:I

    if-le v1, v11, :cond_3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_3

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0x64

    if-ge v0, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private final getImageScale(I)F
    .locals 1

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->TEXT_HEIGHT:I

    int-to-float v0, v0

    invoke-static {p1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object p1

    invoke-virtual {p1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    const p1, 0x3f933333    # 1.15f

    mul-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method public static getPaddingIMG()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public buildElementHover()V
    .locals 3

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->building:I

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->buildingID:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding;->getHoverBuilding(IIZ)Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    move-result-object v0

    iput-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->menuElementHover:Laoc/kingdoms/lukasz/menu_element/menuElementHover/MenuElement_Hover;

    return-void
.end method

.method public final draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    invoke-virtual {p0, p1, p2, p3, p4}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    return-void
.end method

.method protected drawButtonBG(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getIsHovered()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v12, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    add-int/2addr v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v4

    invoke-static {v9, v1, v2, v3, v4}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxCorner(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :cond_1
    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorMain:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorMain:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorMain:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getIsHovered()Z

    move-result v5

    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v14, 0x3e800000    # 0.25f

    if-nez v5, :cond_3

    if-eqz v12, :cond_2

    goto :goto_0

    :cond_2
    move v5, v14

    goto :goto_1

    :cond_3
    :goto_0
    move v5, v13

    :goto_1
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v1

    add-int v3, v1, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v1

    add-int v4, v1, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getIsHovered()Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v12, :cond_4

    goto :goto_2

    :cond_4
    const/high16 v5, 0x3f400000    # 0.75f

    goto :goto_3

    :cond_5
    :goto_2
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_3
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v1

    add-int v3, v1, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v1

    add-int v4, v1, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getButtonWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTopH()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v8, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3eb33333    # 0.35f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const/4 v7, 0x0

    invoke-direct {v1, v7, v7, v7, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v2, p1

    move v15, v7

    move/from16 v7, v16

    move/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIIZZ)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientXY:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v6, v2, 0x2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v15, v15, v15, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v1

    add-int v3, v1, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v1

    add-int v4, v1, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorMain:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorMain:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorMain:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-direct {v1, v2, v3, v4, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBGBorder:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int v3, v1, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int v4, v1, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v1

    add-int/lit8 v5, v1, 0x2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v1

    add-int/lit8 v6, v1, 0x2

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v15, v15, v15, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f59999a    # 0.85f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3f0ccccd    # 0.55f

    invoke-direct {v1, v15, v15, v15, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorOver:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f666666    # 0.9f

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x2

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Laoc/kingdoms/lukasz/textures/Images;->gradientFull:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int v4, v2, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->colorBG:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getIsHovered()Z

    move-result v5

    if-nez v5, :cond_7

    if-eqz v12, :cond_6

    goto :goto_4

    :cond_6
    const v13, 0x3e99999a    # 0.3f

    :cond_7
    :goto_4
    invoke-direct {v1, v2, v3, v4, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Laoc/kingdoms/lukasz/textures/Images;->statsRectBG:Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getInnerPosX()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v3

    add-int v3, v1, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v4

    add-int v4, v1, v11

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getInnerWidth()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v1, v5

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTitleHeight()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBox(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;Laoc/kingdoms/lukasz/textures/Image;IIIIF)V

    const/4 v1, 0x0

    :goto_5
    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->innerStats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    iget-object v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->innerStats:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;

    invoke-virtual {v2, v9, v10, v11, v12}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special$InnerStat;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-boolean v1, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->built:Z

    if-nez v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getIsHovered()Z

    move-result v1

    if-nez v1, :cond_a

    if-eqz v12, :cond_9

    goto/16 :goto_6

    :cond_9
    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setBlackWhite(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->building:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ImageID:[I

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->buildingID:I

    aget v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, v11

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    invoke-static/range {p1 .. p1}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->setShaderDefault(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v2, 0x3e99999a    # 0.3f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->building:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ImageID:[I

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->buildingID:I

    aget v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, v11

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_7

    :cond_a
    :goto_6
    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildingImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->building:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget-object v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->ImageID:[I

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->buildingID:I

    aget v2, v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v3

    add-int/2addr v2, v3

    add-int v3, v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v4

    add-int/2addr v2, v4

    add-int v4, v2, v11

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v5

    sget v2, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v2}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v2

    invoke-virtual {v2}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v6

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIII)V

    :goto_7
    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->building:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v1, v1, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    if-ltz v1, :cond_b

    sget-object v1, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    sget-object v2, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->building:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v2, v2, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v3}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v3

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    sget-object v3, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    sget-object v4, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->building:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v4, v4, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v3}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v2, v3

    add-int/2addr v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v4

    add-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v4}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v4

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sget-object v4, Laoc/kingdoms/lukasz/map/ResourcesManager;->resourceImages:Ljava/util/List;

    sget-object v5, Laoc/kingdoms/lukasz/map/BuildingsManager;->buildings:Ljava/util/List;

    iget v6, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->building:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;

    iget v5, v5, Laoc/kingdoms/lukasz/map/BuildingsManager$Buildings;->RequiredResource:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Laoc/kingdoms/lukasz/textures/Image;

    invoke-virtual {v4}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v11

    invoke-virtual {v1, v9, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    :cond_b
    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v2

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v3

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v11

    invoke-virtual {v1, v9, v2, v3}, Laoc/kingdoms/lukasz/textures/Image;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;II)V

    if-eqz v12, :cond_c

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v2

    add-int/2addr v1, v2

    add-int v2, v1, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v3

    add-int/2addr v1, v3

    add-int v3, v1, v11

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_BOX_ACTIVE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxLineFrame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V

    goto :goto_8

    :cond_c
    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getIsHovered()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v2

    add-int/2addr v1, v2

    add-int v2, v1, v10

    invoke-virtual/range {p0 .. p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v1

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v3

    add-int/2addr v1, v3

    add-int v3, v1, v11

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v4

    sget v1, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v1}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v1

    invoke-virtual {v1}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v5

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->COLOR_BOX_HOVER:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawBoxLineFrame(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIIILcom/badlogic/gdx/graphics/Color;)V

    :cond_d
    :goto_8
    return-void
.end method

.method protected drawText(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;IIZ)V
    .locals 13

    move-object v0, p0

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR_SMALL:I

    iget-object v3, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->sConstructed:Ljava/lang/String;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v1

    sget v4, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v1, v4

    iget v4, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iConstructedWidth:I

    sub-int/2addr v1, v4

    add-int v4, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v1

    sget v5, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v5

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTitleHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    iget v5, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iConstructedHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v1, v5

    add-int v5, v1, p3

    sget-object v6, Laoc/kingdoms/lukasz/menu/Colors;->HOVER_RIGHT3:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    iget v8, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->fontID:I

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosX()I

    move-result v1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getInnerPosX()I

    move-result v2

    add-int/2addr v1, v2

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    add-int v10, v1, p2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPosY()I

    move-result v1

    sget v2, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTitleHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, v0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iTextHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int v11, v1, p3

    move/from16 v1, p4

    invoke-virtual {p0, v1}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getColor(Z)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v12

    move-object v7, p1

    invoke-static/range {v7 .. v12}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->drawTextWithShadow(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;ILjava/lang/String;IILcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public getButtonWidth()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getWidth()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method protected getColor(Z)Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getIsHovered()Z

    move-result v0

    invoke-static {p1, v0}, Laoc/kingdoms/lukasz/menu/Colors;->getColorButtonHover2(ZZ)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1
.end method

.method public getInnerPosX()I
    .locals 1

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getButtonWidth()I

    move-result v0

    return v0
.end method

.method public getInnerWidth()I
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getButtonWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->sText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleHeight()I
    .locals 2

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getTopH()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getTopH()I
    .locals 2

    sget v0, Laoc/kingdoms/lukasz/textures/Images;->buildingsFrame:I

    invoke-static {v0}, Laoc/kingdoms/lukasz/textures/ImageManager;->getImage(I)Laoc/kingdoms/lukasz/textures/Image;

    move-result-object v0

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/textures/Image;->getHeight()I

    move-result v0

    invoke-static {}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getPaddingIMG()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method public getValue1()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->building:I

    return v0
.end method

.method public getValue2()I
    .locals 1

    iget v0, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->buildingID:I

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->sText:Ljava/lang/String;

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    sget-object v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->fontMain:Ljava/util/List;

    iget v1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->fontID:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {p0}, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;)Z

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->width:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iTextWidth:I

    sget-object p1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->glyphLayout:Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;

    iget p1, p1, Laoc/kingdoms/lukasz/jakowski/GlyphLayout_Game;->height:F

    float-to-int p1, p1

    iput p1, p0, Laoc/kingdoms/lukasz/menu_element/button/ButtonBuilding_Special;->iTextHeight:I

    return-void
.end method
